`default_nettype none



module Noah_Binary_Hex_Decoder(
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,    // Dedicated outputs
  input  wire [7:0] uio_in,    // IOs: Input path
  output wire [7:0] uio_out,    // IOs: Output path
  output wire [7:0] uio_oe,    // IOs: Enable path (active high: 0=input, 1=output)
  input ena,
  input clk,
  input rst_n
);
  wire net1 = ui_in[0];
  wire net2 = ui_in[1];
  wire net3 = ui_in[2];
  wire net4 = ui_in[3];
  wire net5;
  wire net6;
  wire net7;
  wire net8;
  wire net9;
  wire net10;
  wire net11;
  wire net12 = ui_in[0];
  wire net13 = ui_in[1];
  wire net14 = ui_in[2];
  wire net15 = ui_in[3];
  wire net16 = ui_in[0];
  wire net17 = ui_in[1];
  wire net18 = ui_in[2];
  wire net19 = ui_in[3];
  wire net20 = ui_in[0];
  wire net21 = ui_in[1];
  wire net22 = ui_in[2];
  wire net23 = ui_in[3];
  wire net24 = ui_in[0];
  wire net25 = ui_in[1];
  wire net26 = ui_in[2];
  wire net27 = ui_in[3];
  wire net28 = ui_in[0];
  wire net29 = ui_in[1];
  wire net30 = ui_in[2];
  wire net31 = ui_in[3];
  wire net32 = ui_in[0];
  wire net33 = ui_in[1];
  wire net34 = ui_in[2];
  wire net35 = ui_in[3];
  wire net36 = 1'b0;
  wire net37 = 1'b1;
  wire net38;
  wire net39;
  wire net40;
  wire net41;
  wire net42;
  wire net43;
  wire net44;
  wire net45;
  wire net46;
  wire net47;
  wire net48;
  wire net49;
  wire net50;
  wire net51;
  wire net52;
  wire net53;
  wire net54;
  wire net55;
  wire net56;
  wire net57;
  wire net58;
  wire net59;
  wire net60;
  wire net61;
  wire net62;
  wire net63;
  wire net64;
  wire net65;
  wire net66;
  wire net67;
  wire net68;
  wire net69;
  wire net70;
  wire net71;
  wire net72;
  wire net73;
  wire net74;
  wire net75;
  wire net76;
  wire net77;
  wire net78;
  wire net79;
  wire net80;
  wire net81;
  wire net82;
  wire net83;
  wire net84;
  wire net85;
  wire net86;
  wire net87;
  wire net88;
  wire net89;
  wire net90;
  wire net91;
  wire net92;
  wire net93;
  wire net94;
  wire net95;
  wire net96;
  wire net97;
  wire net98;
  wire net99;
  wire net100;
  wire net101;
  wire net102;
  wire net103;
  wire net104;
  wire net105;
  wire net106;
  wire net107;
  wire net108;
  wire net109;
  wire net110;
  wire net111;
  wire net112;
  wire net113;
  wire net114;
  wire net115;
  wire net116;
  wire net117;
  wire net118;
  wire net119;
  wire net120;
  wire net121;
  wire net122;
  wire net123;
  wire net124;
  wire net125;
  wire net126;
  wire net127;
  wire net128;
  wire net129;
  wire net130;
  wire net131;
  wire net132;
  wire net133;
  wire net134;
  wire net135;
  wire net136;
  wire net137;
  wire net138;
  wire net139;
  wire net140;
  wire net141;
  wire net142;
  wire net143;

  assign uo_out[0] = net5;
  assign uo_out[1] = net6;
  assign uo_out[2] = net7;
  assign uo_out[3] = net8;
  assign uo_out[4] = net9;
  assign uo_out[5] = net10;
  assign uo_out[6] = net11;
  assign uo_out[7] = 0;
  assign uio_out[0] = 0;
  assign uio_oe[0] = 0;
  assign uio_out[1] = 0;
  assign uio_oe[1] = 0;
  assign uio_out[2] = 0;
  assign uio_oe[2] = 0;
  assign uio_out[3] = 0;
  assign uio_oe[3] = 0;
  assign uio_out[4] = 0;
  assign uio_oe[4] = 0;
  assign uio_out[5] = 0;
  assign uio_oe[5] = 0;
  assign uio_out[6] = 0;
  assign uio_oe[6] = 0;
  assign uio_out[7] = 0;
  assign uio_oe[7] = 0;

  and_cell and1 (
    .out ()
  );
  or_cell or1 (
    .out ()
  );
  not_cell not1 (
    .out ()
  );
  and_cell and2 (
    .a (net38),
    .b (net3),
    .out (net39)
  );
  not_cell not2 (
    .in (net1),
    .out (net38)
  );
  and_cell and3 (
    .a (net2),
    .b (net3),
    .out (net40)
  );
  not_cell not3 (
    .in (net1),
    .out (net41)
  );
  and_cell and4 (
    .a (net41),
    .b (net2),
    .out (net42)
  );
  and_cell and5 (
    .a (net42),
    .b (net4),
    .out (net43)
  );
  and_cell and6 (
    .a (net1),
    .b (net44),
    .out (net45)
  );
  not_cell not4 (
    .in (net4),
    .out (net44)
  );
  and_cell and7 (
    .a (net1),
    .b (net46),
    .out (net47)
  );
  and_cell and8 (
    .a (net47),
    .b (net48),
    .out (net49)
  );
  not_cell not5 (
    .in (net2),
    .out (net46)
  );
  not_cell not6 (
    .in (net3),
    .out (net48)
  );
  or_cell or2 (
    .a (net39),
    .b (net40),
    .out (net50)
  );
  or_cell or3 (
    .a (net43),
    .b (net45),
    .out (net51)
  );
  or_cell or4 (
    .a (net51),
    .b (net49),
    .out (net52)
  );
  or_cell or5 (
    .a (net50),
    .b (net52),
    .out (net5)
  );
  and_cell and9 (
    .a (net53),
    .b (net54),
    .out (net55)
  );
  not_cell not7 (
    .in (net12),
    .out (net53)
  );
  not_cell not8 (
    .in (net13),
    .out (net54)
  );
  and_cell and10 (
    .a (net55),
    .b (net15),
    .out (net56)
  );
  and_cell and11 (
    .a (net57),
    .b (net58),
    .out (net59)
  );
  not_cell not9 (
    .in (net12),
    .out (net57)
  );
  not_cell not10 (
    .in (net13),
    .out (net58)
  );
  and_cell and12 (
    .a (net59),
    .b (net14),
    .out (net60)
  );
  and_cell and13 (
    .a (net61),
    .b (net14),
    .out (net62)
  );
  and_cell and14 (
    .a (net62),
    .b (net15),
    .out (net63)
  );
  not_cell not11 (
    .in (net12),
    .out (net61)
  );
  and_cell and15 (
    .a (net64),
    .b (net13),
    .out (net65)
  );
  and_cell and16 (
    .a (net66),
    .b (net67),
    .out (net68)
  );
  and_cell and17 (
    .a (net65),
    .b (net68),
    .out (net69)
  );
  not_cell not12 (
    .in (net12),
    .out (net64)
  );
  not_cell not13 (
    .in (net14),
    .out (net66)
  );
  not_cell not14 (
    .in (net15),
    .out (net67)
  );
  and_cell and18 (
    .a (net12),
    .b (net70),
    .out (net71)
  );
  and_cell and19 (
    .a (net71),
    .b (net72),
    .out (net73)
  );
  not_cell not15 (
    .in (net13),
    .out (net70)
  );
  not_cell not16 (
    .in (net15),
    .out (net72)
  );
  and_cell and20 (
    .a (net12),
    .b (net74),
    .out (net75)
  );
  and_cell and21 (
    .a (net75),
    .b (net15),
    .out (net76)
  );
  not_cell not17 (
    .in (net14),
    .out (net74)
  );
  or_cell or6 (
    .a (net73),
    .b (net76),
    .out (net77)
  );
  or_cell or7 (
    .a (net63),
    .b (net69),
    .out (net78)
  );
  or_cell or8 (
    .a (net56),
    .b (net60),
    .out (net79)
  );
  or_cell or9 (
    .a (net79),
    .b (net78),
    .out (net80)
  );
  or_cell or10 (
    .a (net80),
    .b (net77),
    .out (net6)
  );
  and_cell and22 (
    .a (net81),
    .b (net17),
    .out (net82)
  );
  and_cell and25 (
    .a (net16),
    .b (net83),
    .out (net84)
  );
  and_cell and23 (
    .a (net85),
    .b (net19),
    .out (net86)
  );
  and_cell and24 (
    .a (net87),
    .b (net19),
    .out (net88)
  );
  or_cell or11 (
    .a (net82),
    .b (net84),
    .out (net89)
  );
  or_cell or12 (
    .a (net88),
    .b (net86),
    .out (net90)
  );
  or_cell or13 (
    .a (net89),
    .b (net90),
    .out (net7)
  );
  not_cell not18 (
    .in (net16),
    .out (net81)
  );
  not_cell not19 (
    .in (net17),
    .out (net83)
  );
  not_cell not20 (
    .in (net18),
    .out (net87)
  );
  not_cell not21 (
    .in (net17),
    .out (net85)
  );
  and_cell and26 (
    .a (net20),
    .b (net91),
    .out (net92)
  );
  and_cell and27 (
    .a (net92),
    .b (net93),
    .out (net94)
  );
  and_cell and28 (
    .a (net95),
    .b (net22),
    .out (net96)
  );
  and_cell and29 (
    .a (net96),
    .b (net23),
    .out (net97)
  );
  and_cell and30 (
    .a (net98),
    .b (net22),
    .out (net99)
  );
  and_cell and31 (
    .a (net99),
    .b (net100),
    .out (net101)
  );
  and_cell and32 (
    .a (net21),
    .b (net22),
    .out (net102)
  );
  and_cell and33 (
    .a (net102),
    .b (net103),
    .out (net104)
  );
  and_cell and34 (
    .a (net21),
    .b (net105),
    .out (net106)
  );
  and_cell and35 (
    .a (net106),
    .b (net23),
    .out (net107)
  );
  or_cell or14 (
    .a (net94),
    .b (net97),
    .out (net108)
  );
  or_cell or15 (
    .a (net101),
    .b (net104),
    .out (net109)
  );
  or_cell or16 (
    .a (net108),
    .b (net109),
    .out (net110)
  );
  or_cell or18 (
    .a (net110),
    .b (net107),
    .out (net8)
  );
  not_cell not22 (
    .in (net20),
    .out (net98)
  );
  not_cell not23 (
    .in (net22),
    .out (net91)
  );
  not_cell not24 (
    .in (net23),
    .out (net93)
  );
  not_cell not25 (
    .in (net21),
    .out (net95)
  );
  not_cell not26 (
    .in (net23),
    .out (net100)
  );
  not_cell not27 (
    .in (net23),
    .out (net103)
  );
  not_cell not28 (
    .in (net22),
    .out (net105)
  );
  and_cell and36 (
    .a (net24),
    .b (net111),
    .out (net112)
  );
  and_cell and37 (
    .a (net24),
    .b (net25),
    .out (net113)
  );
  and_cell and38 (
    .a (net24),
    .b (net26),
    .out (net114)
  );
  and_cell and39 (
    .a (net26),
    .b (net115),
    .out (net116)
  );
  or_cell or17 (
    .a (net112),
    .b (net113),
    .out (net117)
  );
  or_cell or19 (
    .a (net114),
    .b (net116),
    .out (net118)
  );
  or_cell or20 (
    .a (net117),
    .b (net118),
    .out (net9)
  );
  not_cell not29 (
    .in (net27),
    .out (net111)
  );
  not_cell not30 (
    .in (net27),
    .out (net115)
  );
  and_cell and40 (
    .a (net28),
    .b (net30),
    .out (net119)
  );
  and_cell and41 (
    .a (net28),
    .b (net120),
    .out (net121)
  );
  and_cell and42 (
    .a (net29),
    .b (net122),
    .out (net123)
  );
  and_cell and43 (
    .a (net124),
    .b (net29),
    .out (net125)
  );
  and_cell and44 (
    .a (net125),
    .b (net126),
    .out (net127)
  );
  or_cell or21 (
    .a (net119),
    .b (net121),
    .out (net128)
  );
  or_cell or22 (
    .a (net123),
    .b (net127),
    .out (net129)
  );
  or_cell or23 (
    .a (net128),
    .b (net129),
    .out (net10)
  );
  not_cell not31 (
    .in (net29),
    .out (net120)
  );
  not_cell not32 (
    .in (net31),
    .out (net122)
  );
  not_cell not33 (
    .in (net28),
    .out (net124)
  );
  not_cell not34 (
    .in (net30),
    .out (net126)
  );
  and_cell and45 (
    .a (net34),
    .b (net130),
    .out (net131)
  );
  not_cell not35 (
    .in (net33),
    .out (net132)
  );
  and_cell and46 (
    .a (net132),
    .b (net34),
    .out (net133)
  );
  and_cell and47 (
    .a (net32),
    .b (net35),
    .out (net134)
  );
  and_cell and48 (
    .a (net32),
    .b (net135),
    .out (net136)
  );
  and_cell and49 (
    .a (net137),
    .b (net33),
    .out (net138)
  );
  and_cell and50 (
    .a (net138),
    .b (net139),
    .out (net140)
  );
  or_cell or25 (
    .a (net131),
    .b (net133),
    .out (net141)
  );
  or_cell or26 (
    .a (net134),
    .b (net136),
    .out (net142)
  );
  or_cell or27 (
    .a (net141),
    .b (net143),
    .out (net11)
  );
  or_cell or28 (
    .a (net142),
    .b (net140),
    .out (net143)
  );
  not_cell not36 (
    .in (net35),
    .out (net130)
  );
  not_cell not37 (
    .in (net33),
    .out (net135)
  );
  not_cell not38 (
    .in (net32),
    .out (net137)
  );
  not_cell not39 (
    .in (net34),
    .out (net139)
  );
endmodule
