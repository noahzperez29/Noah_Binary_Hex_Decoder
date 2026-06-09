import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles

# Seven-segment display segment mapping (active high)
# uo_out bits: [0]=A, [1]=B, [2]=C, [3]=D, [4]=E, [5]=F, [6]=G
# Segment layout:
#   _
#  |_|
#  |_|
# A=top, B=top-right, C=bottom-right, D=bottom, E=bottom-left, F=top-left, G=middle

# Truth table: input (ABCD) -> segments (A B C D E F G)
# Input bits:  ui_in[3]=A(MSB), ui_in[2]=B, ui_in[1]=C, ui_in[0]=D(LSB)
TRUTH_TABLE = {
    # (A,B,C,D) : (segA, segB, segC, segD, segE, segF, segG, char)
    (0,0,0,1): (0,1,1,0,0,0,0, "1"),
    (0,0,1,0): (1,1,0,1,1,0,1, "2"),
    (0,0,1,1): (1,1,1,1,0,0,1, "3"),
    (0,1,0,0): (0,1,1,0,0,1,1, "4"),
    (0,1,0,1): (1,0,1,1,0,1,1, "5"),
    (0,1,1,0): (1,0,1,1,1,1,1, "6"),
    (0,1,1,1): (1,1,1,0,0,0,0, "7"),
    (1,0,0,0): (1,1,1,1,1,1,1, "8"),
    (1,0,0,1): (1,1,1,0,0,1,1, "9"),
    (1,0,1,0): (1,1,1,0,1,1,1, "A"),
    (1,0,1,1): (0,0,1,1,1,1,1, "B"),
    (1,1,0,0): (1,0,0,1,1,1,0, "C"),
    (1,1,0,1): (0,1,1,1,1,0,1, "D"),
    (1,1,1,0): (1,0,0,1,1,1,1, "E"),
    (1,1,1,1): (1,0,0,0,1,1,1, "F"),
}

@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # No clock needed (combinational), but cocotb needs one
    clock = Clock(dut.clk, 10, unit="us")
    cocotb.start_soon(clock.start())

    dut._log.info("Reset")
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1

    dut._log.info("Testing Binary to Hex Decoder - all 15 valid inputs")

    for (A, B, C, D), (sA, sB, sC, sD, sE, sF, sG, char) in TRUTH_TABLE.items():
        # Pack input: ui_in[3]=A, ui_in[2]=B, ui_in[1]=C, ui_in[0]=D
        ui_val = (A << 3) | (B << 2) | (C << 1) | D
        dut.ui_in.value = ui_val
        await ClockCycles(dut.clk, 1)

        dut._log.info(f"Test '{char}': input ABCD={A}{B}{C}{D} (0b{ui_val:04b})")

        # uo_out[0]=segA, [1]=segB, [2]=segC, [3]=segD, [4]=segE, [5]=segF, [6]=segG
        # Note: cocotb bit indexing is MSB-first so uo_out.value[0] = bit 7,
        # use integer comparison instead for clarity
        out = int(dut.uo_out.value)

        got_A = (out >> 0) & 1
        got_B = (out >> 1) & 1
        got_C = (out >> 2) & 1
        got_D = (out >> 3) & 1
        got_E = (out >> 4) & 1
        got_F = (out >> 5) & 1
        got_G = (out >> 6) & 1

        assert got_A == sA, f"'{char}' FAIL: seg A expected {sA}, got {got_A}"
        assert got_B == sB, f"'{char}' FAIL: seg B expected {sB}, got {got_B}"
        assert got_C == sC, f"'{char}' FAIL: seg C expected {sC}, got {got_C}"
        assert got_D == sD, f"'{char}' FAIL: seg D expected {sD}, got {got_D}"
        assert got_E == sE, f"'{char}' FAIL: seg E expected {sE}, got {got_E}"
        assert got_F == sF, f"'{char}' FAIL: seg F expected {sF}, got {got_F}"
        assert got_G == sG, f"'{char}' FAIL: seg G expected {sG}, got {got_G}"

        dut._log.info(f"  '{char}' PASS: segments ABCDEFG = {got_A}{got_B}{got_C}{got_D}{got_E}{got_F}{got_G}")

    # Test input 0 (0000) - not defined in truth table, just verify no crash
    dut._log.info("Test 0000 input (undefined, just checking no X/Z on outputs)")
    dut.ui_in.value = 0b00000000
    await ClockCycles(dut.clk, 1)
    # No assertion on value, just log what comes out
    dut._log.info(f"  0000 output: 0b{int(dut.uo_out.value):08b}")

    dut._log.info("All tests passed!")
