////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: Top_Module_synthesis.v
// /___/   /\     Timestamp: Thu May 05 16:40:48 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Top_Module.ngc Top_Module_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: Top_Module.ngc
// Output file	: D:\ISE\project\jizu\shiyan5\netgen\synthesis\Top_Module_synthesis.v
// # of Modules	: 1
// Design Name	: Top_Module
// Xilinx        : D:\ISE\14.6\ISE_DS\ISE\
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

module Top_Module (
  Mem_Write, Clk, Mem_Addr, Choose, LED
)/* synthesis syn_black_box syn_noprune=1 */;
  input Mem_Write;
  input Clk;
  input [7 : 2] Mem_Addr;
  input [1 : 0] Choose;
  output [7 : 0] LED;
  
  // synthesis translate_off
  
  wire Mem_Addr_7_IBUF_0;
  wire Mem_Addr_6_IBUF_1;
  wire Mem_Addr_5_IBUF_2;
  wire Mem_Addr_4_IBUF_3;
  wire Mem_Addr_3_IBUF_4;
  wire Mem_Addr_2_IBUF_5;
  wire Choose_1_IBUF_6;
  wire Choose_0_IBUF_7;
  wire Mem_Write_IBUF_8;
  wire Clk_BUFGP_9;
  wire LED_7_42;
  wire LED_6_43;
  wire LED_5_44;
  wire LED_4_45;
  wire LED_3_46;
  wire LED_2_47;
  wire LED_1_48;
  wire LED_0_49;
  wire \M_W_Data[31] ;
  wire \M_W_Data[4] ;
  wire \M_W_Data[0] ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<7> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<6> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<5> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<4> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<3> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<2> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<1> ;
  wire \Choose[1]_M_R_Data[31]_wide_mux_3_OUT<0> ;
  wire Mem_Write_inv;
  wire \Mram_Choose[1]_GND_1_o_wide_mux_2_OUT10 ;
  wire \Mram_Choose[1]_GND_1_o_wide_mux_2_OUT31 ;
  wire [31 : 0] M_R_Data;
  FDE   M_W_Data_0 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_IBUF_8),
    .D(Choose_1_IBUF_6),
    .Q(\M_W_Data[0] )
  );
  FDE   M_W_Data_4 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_IBUF_8),
    .D(\Mram_Choose[1]_GND_1_o_wide_mux_2_OUT10 ),
    .Q(\M_W_Data[4] )
  );
  FDE   M_W_Data_31 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_IBUF_8),
    .D(\Mram_Choose[1]_GND_1_o_wide_mux_2_OUT31 ),
    .Q(\M_W_Data[31] )
  );
  FDE   LED_0 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<0> ),
    .Q(LED_0_49)
  );
  FDE   LED_1 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<1> ),
    .Q(LED_1_48)
  );
  FDE   LED_2 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<2> ),
    .Q(LED_2_47)
  );
  FDE   LED_3 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<3> ),
    .Q(LED_3_46)
  );
  FDE   LED_4 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<4> ),
    .Q(LED_4_45)
  );
  FDE   LED_5 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<5> ),
    .Q(LED_5_44)
  );
  FDE   LED_6 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<6> ),
    .Q(LED_6_43)
  );
  FDE   LED_7 (
    .C(Clk_BUFGP_9),
    .CE(Mem_Write_inv),
    .D(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<7> ),
    .Q(LED_7_42)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Mram_Choose[1]_GND_1_o_wide_mux_2_OUT101  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .O(\Mram_Choose[1]_GND_1_o_wide_mux_2_OUT10 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mram_Choose[1]_GND_1_o_wide_mux_2_OUT311  (
    .I0(Choose_0_IBUF_7),
    .I1(Choose_1_IBUF_6),
    .O(\Mram_Choose[1]_GND_1_o_wide_mux_2_OUT31 )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT11  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[0]),
    .I3(M_R_Data[8]),
    .I4(M_R_Data[16]),
    .I5(M_R_Data[24]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT21  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[1]),
    .I3(M_R_Data[9]),
    .I4(M_R_Data[17]),
    .I5(M_R_Data[25]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT31  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[2]),
    .I3(M_R_Data[10]),
    .I4(M_R_Data[18]),
    .I5(M_R_Data[26]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT41  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[3]),
    .I3(M_R_Data[11]),
    .I4(M_R_Data[19]),
    .I5(M_R_Data[27]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT51  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[4]),
    .I3(M_R_Data[12]),
    .I4(M_R_Data[20]),
    .I5(M_R_Data[28]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT61  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[5]),
    .I3(M_R_Data[13]),
    .I4(M_R_Data[21]),
    .I5(M_R_Data[29]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT71  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[6]),
    .I3(M_R_Data[14]),
    .I4(M_R_Data[22]),
    .I5(M_R_Data[30]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hFEBADC9876325410 ))
  \Mmux_Choose[1]_M_R_Data[31]_wide_mux_3_OUT81  (
    .I0(Choose_1_IBUF_6),
    .I1(Choose_0_IBUF_7),
    .I2(M_R_Data[7]),
    .I3(M_R_Data[15]),
    .I4(M_R_Data[23]),
    .I5(M_R_Data[31]),
    .O(\Choose[1]_M_R_Data[31]_wide_mux_3_OUT<7> )
  );
  IBUF   Mem_Addr_7_IBUF (
    .I(Mem_Addr[7]),
    .O(Mem_Addr_7_IBUF_0)
  );
  IBUF   Mem_Addr_6_IBUF (
    .I(Mem_Addr[6]),
    .O(Mem_Addr_6_IBUF_1)
  );
  IBUF   Mem_Addr_5_IBUF (
    .I(Mem_Addr[5]),
    .O(Mem_Addr_5_IBUF_2)
  );
  IBUF   Mem_Addr_4_IBUF (
    .I(Mem_Addr[4]),
    .O(Mem_Addr_4_IBUF_3)
  );
  IBUF   Mem_Addr_3_IBUF (
    .I(Mem_Addr[3]),
    .O(Mem_Addr_3_IBUF_4)
  );
  IBUF   Mem_Addr_2_IBUF (
    .I(Mem_Addr[2]),
    .O(Mem_Addr_2_IBUF_5)
  );
  IBUF   Choose_1_IBUF (
    .I(Choose[1]),
    .O(Choose_1_IBUF_6)
  );
  IBUF   Choose_0_IBUF (
    .I(Choose[0]),
    .O(Choose_0_IBUF_7)
  );
  IBUF   Mem_Write_IBUF (
    .I(Mem_Write),
    .O(Mem_Write_IBUF_8)
  );
  OBUF   LED_7_OBUF (
    .I(LED_7_42),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_6_43),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_44),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_4_45),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_46),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_47),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_48),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_49),
    .O(LED[0])
  );
  BUFGP   Clk_BUFGP (
    .I(Clk),
    .O(Clk_BUFGP_9)
  );
  INV   Mem_Write_inv1_INV_0 (
    .I(Mem_Write_IBUF_8),
    .O(Mem_Write_inv)
  );
  RAM_B   Data_RAM (
    .clka(Clk_BUFGP_9),
    .wea({Mem_Write_IBUF_8}),
    .addra({Mem_Addr_7_IBUF_0, Mem_Addr_6_IBUF_1, Mem_Addr_5_IBUF_2, Mem_Addr_4_IBUF_3, Mem_Addr_3_IBUF_4, Mem_Addr_2_IBUF_5}),
    .dina({\M_W_Data[31] , \M_W_Data[0] , \M_W_Data[0] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[0] , \M_W_Data[4] , \M_W_Data[0] , \M_W_Data[4] , 
\M_W_Data[0] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[0] , \M_W_Data[0] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[0] , 
\M_W_Data[4] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[0] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[4] , \M_W_Data[0] , 
\M_W_Data[0] , \M_W_Data[0] , \M_W_Data[0] }),
    .douta({M_R_Data[31], M_R_Data[30], M_R_Data[29], M_R_Data[28], M_R_Data[27], M_R_Data[26], M_R_Data[25], M_R_Data[24], M_R_Data[23], M_R_Data[22]
, M_R_Data[21], M_R_Data[20], M_R_Data[19], M_R_Data[18], M_R_Data[17], M_R_Data[16], M_R_Data[15], M_R_Data[14], M_R_Data[13], M_R_Data[12], 
M_R_Data[11], M_R_Data[10], M_R_Data[9], M_R_Data[8], M_R_Data[7], M_R_Data[6], M_R_Data[5], M_R_Data[4], M_R_Data[3], M_R_Data[2], M_R_Data[1], 
M_R_Data[0]})
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
