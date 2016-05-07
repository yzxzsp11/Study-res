////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: Decoder_synthesis.v
// /___/   /\     Timestamp: Fri May 22 18:04:36 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Decoder.ngc Decoder_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: Decoder.ngc
// Output file	: D:\Xilinx\Decoder\netgen\synthesis\Decoder_synthesis.v
// # of Modules	: 1
// Design Name	: Decoder
// Xilinx        : D:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Decoder (
  rst, clk, SW, led
)/* synthesis syn_black_box syn_noprune=1 */;
  input rst;
  input clk;
  input [1 : 0] SW;
  output [7 : 0] led;
  
  // synthesis translate_off
  
  wire SW_1_IBUF_0;
  wire SW_0_IBUF_1;
  wire rst_IBUF_2;
  wire clk_BUFGP_3;
  wire led_7_OBUF_36;
  wire led_6_OBUF_37;
  wire led_5_OBUF_38;
  wire led_4_OBUF_39;
  wire led_3_OBUF_40;
  wire led_2_OBUF_41;
  wire led_1_OBUF_42;
  wire led_0_OBUF_43;
  wire N0;
  wire N1;
  wire clk_inv;
  wire \My_CPU/Maccum_pc_cy<3>_rt_77 ;
  wire \My_CPU/Maccum_pc_cy<4>_rt_78 ;
  wire \My_CPU/Maccum_pc_cy<5>_rt_79 ;
  wire \My_CPU/Maccum_pc_cy<6>_rt_80 ;
  wire [31 : 0] inst_code;
  wire [7 : 2] \My_CPU/pc ;
  wire [7 : 2] Result;
  wire [2 : 2] \My_CPU/Maccum_pc_lut ;
  wire [6 : 2] \My_CPU/Maccum_pc_cy ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDC   \My_CPU/pc_2  (
    .C(clk_inv),
    .CLR(rst_IBUF_2),
    .D(Result[2]),
    .Q(\My_CPU/pc [2])
  );
  FDC   \My_CPU/pc_3  (
    .C(clk_inv),
    .CLR(rst_IBUF_2),
    .D(Result[3]),
    .Q(\My_CPU/pc [3])
  );
  FDC   \My_CPU/pc_4  (
    .C(clk_inv),
    .CLR(rst_IBUF_2),
    .D(Result[4]),
    .Q(\My_CPU/pc [4])
  );
  FDC   \My_CPU/pc_5  (
    .C(clk_inv),
    .CLR(rst_IBUF_2),
    .D(Result[5]),
    .Q(\My_CPU/pc [5])
  );
  FDC   \My_CPU/pc_6  (
    .C(clk_inv),
    .CLR(rst_IBUF_2),
    .D(Result[6]),
    .Q(\My_CPU/pc [6])
  );
  FDC   \My_CPU/pc_7  (
    .C(clk_inv),
    .CLR(rst_IBUF_2),
    .D(Result[7]),
    .Q(\My_CPU/pc [7])
  );
  MUXCY   \My_CPU/Maccum_pc_cy<2>  (
    .CI(N0),
    .DI(N1),
    .S(\My_CPU/Maccum_pc_lut [2]),
    .O(\My_CPU/Maccum_pc_cy [2])
  );
  XORCY   \My_CPU/Maccum_pc_xor<2>  (
    .CI(N0),
    .LI(\My_CPU/Maccum_pc_lut [2]),
    .O(Result[2])
  );
  MUXCY   \My_CPU/Maccum_pc_cy<3>  (
    .CI(\My_CPU/Maccum_pc_cy [2]),
    .DI(N0),
    .S(\My_CPU/Maccum_pc_cy<3>_rt_77 ),
    .O(\My_CPU/Maccum_pc_cy [3])
  );
  XORCY   \My_CPU/Maccum_pc_xor<3>  (
    .CI(\My_CPU/Maccum_pc_cy [2]),
    .LI(\My_CPU/Maccum_pc_cy<3>_rt_77 ),
    .O(Result[3])
  );
  MUXCY   \My_CPU/Maccum_pc_cy<4>  (
    .CI(\My_CPU/Maccum_pc_cy [3]),
    .DI(N0),
    .S(\My_CPU/Maccum_pc_cy<4>_rt_78 ),
    .O(\My_CPU/Maccum_pc_cy [4])
  );
  XORCY   \My_CPU/Maccum_pc_xor<4>  (
    .CI(\My_CPU/Maccum_pc_cy [3]),
    .LI(\My_CPU/Maccum_pc_cy<4>_rt_78 ),
    .O(Result[4])
  );
  MUXCY   \My_CPU/Maccum_pc_cy<5>  (
    .CI(\My_CPU/Maccum_pc_cy [4]),
    .DI(N0),
    .S(\My_CPU/Maccum_pc_cy<5>_rt_79 ),
    .O(\My_CPU/Maccum_pc_cy [5])
  );
  XORCY   \My_CPU/Maccum_pc_xor<5>  (
    .CI(\My_CPU/Maccum_pc_cy [4]),
    .LI(\My_CPU/Maccum_pc_cy<5>_rt_79 ),
    .O(Result[5])
  );
  MUXCY   \My_CPU/Maccum_pc_cy<6>  (
    .CI(\My_CPU/Maccum_pc_cy [5]),
    .DI(N0),
    .S(\My_CPU/Maccum_pc_cy<6>_rt_80 ),
    .O(\My_CPU/Maccum_pc_cy [6])
  );
  XORCY   \My_CPU/Maccum_pc_xor<6>  (
    .CI(\My_CPU/Maccum_pc_cy [5]),
    .LI(\My_CPU/Maccum_pc_cy<6>_rt_80 ),
    .O(Result[6])
  );
  XORCY   \My_CPU/Maccum_pc_xor<7>  (
    .CI(\My_CPU/Maccum_pc_cy [6]),
    .LI(\My_CPU/pc [7]),
    .O(Result[7])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led11 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[8]),
    .I3(inst_code[24]),
    .I4(inst_code[16]),
    .I5(inst_code[0]),
    .O(led_0_OBUF_43)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led21 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[9]),
    .I3(inst_code[25]),
    .I4(inst_code[17]),
    .I5(inst_code[1]),
    .O(led_1_OBUF_42)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led31 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[10]),
    .I3(inst_code[26]),
    .I4(inst_code[18]),
    .I5(inst_code[2]),
    .O(led_2_OBUF_41)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led41 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[11]),
    .I3(inst_code[27]),
    .I4(inst_code[19]),
    .I5(inst_code[3]),
    .O(led_3_OBUF_40)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led51 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[12]),
    .I3(inst_code[28]),
    .I4(inst_code[20]),
    .I5(inst_code[4]),
    .O(led_4_OBUF_39)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led61 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[13]),
    .I3(inst_code[29]),
    .I4(inst_code[21]),
    .I5(inst_code[5]),
    .O(led_5_OBUF_38)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led71 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[14]),
    .I3(inst_code[30]),
    .I4(inst_code[22]),
    .I5(inst_code[6]),
    .O(led_6_OBUF_37)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_led81 (
    .I0(SW_0_IBUF_1),
    .I1(SW_1_IBUF_0),
    .I2(inst_code[15]),
    .I3(inst_code[31]),
    .I4(inst_code[23]),
    .I5(inst_code[7]),
    .O(led_7_OBUF_36)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_0)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_1)
  );
  IBUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_2)
  );
  OBUF   led_7_OBUF (
    .I(led_7_OBUF_36),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(led_6_OBUF_37),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(led_5_OBUF_38),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(led_4_OBUF_39),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(led_3_OBUF_40),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(led_2_OBUF_41),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(led_1_OBUF_42),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(led_0_OBUF_43),
    .O(led[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \My_CPU/Maccum_pc_cy<3>_rt  (
    .I0(\My_CPU/pc [3]),
    .O(\My_CPU/Maccum_pc_cy<3>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \My_CPU/Maccum_pc_cy<4>_rt  (
    .I0(\My_CPU/pc [4]),
    .O(\My_CPU/Maccum_pc_cy<4>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \My_CPU/Maccum_pc_cy<5>_rt  (
    .I0(\My_CPU/pc [5]),
    .O(\My_CPU/Maccum_pc_cy<5>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \My_CPU/Maccum_pc_cy<6>_rt  (
    .I0(\My_CPU/pc [6]),
    .O(\My_CPU/Maccum_pc_cy<6>_rt_80 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_3)
  );
  INV   \My_CPU/Maccum_pc_lut<2>_INV_0  (
    .I(\My_CPU/pc [2]),
    .O(\My_CPU/Maccum_pc_lut [2])
  );
  INV   clk_inv1_INV_0 (
    .I(clk_BUFGP_3),
    .O(clk_inv)
  );
  Inst_ROM   \My_CPU/MY_ROM  (
    .clka(clk_BUFGP_3),
    .addra({\My_CPU/pc [7], \My_CPU/pc [6], \My_CPU/pc [5], \My_CPU/pc [4], \My_CPU/pc [3], \My_CPU/pc [2]}),
    .douta({inst_code[31], inst_code[30], inst_code[29], inst_code[28], inst_code[27], inst_code[26], inst_code[25], inst_code[24], inst_code[23], 
inst_code[22], inst_code[21], inst_code[20], inst_code[19], inst_code[18], inst_code[17], inst_code[16], inst_code[15], inst_code[14], inst_code[13], 
inst_code[12], inst_code[11], inst_code[10], inst_code[9], inst_code[8], inst_code[7], inst_code[6], inst_code[5], inst_code[4], inst_code[3], 
inst_code[2], inst_code[1], inst_code[0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
