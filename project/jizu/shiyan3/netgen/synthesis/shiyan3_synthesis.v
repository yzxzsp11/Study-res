////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: shiyan3_synthesis.v
// /___/   /\     Timestamp: Sat Apr 09 10:45:12 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim shiyan3.ngc shiyan3_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: shiyan3.ngc
// Output file	: D:\ISE\project\jizu\shiyan3\netgen\synthesis\shiyan3_synthesis.v
// # of Modules	: 1
// Design Name	: shiyan3
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

module shiyan3 (
AB_SW, ALU_OP, F_LED_SW, LED
);
  input [2 : 0] AB_SW;
  input [2 : 0] ALU_OP;
  input [2 : 0] F_LED_SW;
  output [7 : 0] LED;
  wire AB_SW_2_IBUF_0;
  wire AB_SW_1_IBUF_1;
  wire AB_SW_0_IBUF_2;
  wire ALU_OP_2_IBUF_3;
  wire ALU_OP_1_IBUF_4;
  wire ALU_OP_0_IBUF_5;
  wire F_LED_SW_2_IBUF_6;
  wire F_LED_SW_1_IBUF_7;
  wire F_LED_SW_0_IBUF_8;
  wire ZF;
  wire LED_7_OBUF_11;
  wire LED_6_OBUF_12;
  wire LED_5_OBUF_13;
  wire LED_4_OBUF_14;
  wire LED_3_OBUF_15;
  wire LED_2_OBUF_16;
  wire LED_1_OBUF_17;
  wire LED_0_OBUF_18;
  wire Mram__n0036;
  wire Mram__n003631;
  wire Mram__n003632;
  wire Mram__n003633;
  wire Mram__n003635;
  wire Mram__n003637;
  wire \ALU/Mmux_F117 ;
  wire \ALU/Sh561 ;
  wire \ALU/Mmux_F_3_27 ;
  wire \ALU/Mmux_F_4_28 ;
  wire \ALU/Mmux_ZF_3_29 ;
  wire \ALU/Mmux_ZF_4_30 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<15>_157 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<11>_158 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<11> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi11 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<10>_161 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<10> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi10 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<9>_164 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<9> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi9 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<8>_167 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<8> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi8 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<7>_170 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<7> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi7 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<6>_173 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<6>_174 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi6_175 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<5>_176 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<5>_177 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi5_178 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<4>_179 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<4>_180 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi4_181 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<3>_182 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<3> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi3 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<2>_185 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<2> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi2_187 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<1>_188 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<1>_189 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi1_190 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<0>_191 ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<0> ;
  wire \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<30>_195 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<30>_196 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<29>_197 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<29>_198 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<28>_199 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<28>_200 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<27>_201 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<27>_202 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<26>_203 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<26>_204 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<25>_205 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<25>_206 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<24>_207 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<24>_208 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<23>_209 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<23>_210 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<22>_211 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<22>_212 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<21>_213 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<21>_214 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<20>_215 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<20>_216 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<19>_217 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<19>_218 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<18>_219 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<18>_220 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<17>_221 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<17>_222 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<16>_223 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<16>_224 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<15>_225 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<15>_226 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<14>_227 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<14>_228 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<13>_229 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<13>_230 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<12>_231 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<12>_232 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<11>_233 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<11>_234 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<10>_235 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<10>_236 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<9>_237 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<9>_238 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<8>_239 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<8>_240 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<7>_241 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<7>_242 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<6>_243 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<6>_244 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<5>_245 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<5>_246 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<4>_247 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<4>_248 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<3>_249 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<3>_250 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<2>_251 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<2>_252 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<1>_253 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<1>_254 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<0>_255 ;
  wire \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<0>_256 ;
  wire \ALU/Sh95 ;
  wire \ALU/Sh93 ;
  wire \ALU/Sh92_259 ;
  wire \ALU/Sh89_260 ;
  wire \ALU/Sh85 ;
  wire \ALU/Sh82 ;
  wire \ALU/Sh80 ;
  wire \ALU/Sh71 ;
  wire \ALU/Sh70 ;
  wire \ALU/Sh68 ;
  wire \ALU/Sh42 ;
  wire \ALU/Sh11 ;
  wire \ALU/Sh10 ;
  wire \ALU/Sh1 ;
  wire \ALU/A[31]_reduce_nor_11_o ;
  wire \ALU/A[31]_reduce_nor_6_o_272 ;
  wire \ALU/A[31]_reduce_nor_20_o ;
  wire \ALU/A[31]_reduce_nor_14_o ;
  wire \ALU/A[31]_reduce_nor_2_o ;
  wire \ALU/_n0052 ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<0> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<1> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<2> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<3> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<4> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<5> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<6> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<7> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<8> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<9> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<10> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<11> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<12> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<13> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<14> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<15> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<16> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<17> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<18> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<19> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<20> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<21> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<22> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<23> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<24> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<25> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<26> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<27> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<28> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<29> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<30> ;
  wire \ALU/A[31]_B[31]_sub_13_OUT<31> ;
  wire \ALU/A[31]_B[31]_or_6_OUT<0> ;
  wire \ALU/A[31]_B[31]_and_0_OUT<0> ;
  wire Mmux_LED1;
  wire Mmux_LED11_346;
  wire Mmux_LED12_347;
  wire Mmux_LED13_348;
  wire Mmux_LED14_349;
  wire Mmux_LED15_350;
  wire Mmux_LED16_351;
  wire Mmux_LED17_352;
  wire Mmux_LED18_353;
  wire Mmux_LED19_354;
  wire Mmux_LED110_355;
  wire Mmux_LED81_356;
  wire Mmux_LED83;
  wire Mmux_LED84_358;
  wire Mmux_LED86;
  wire Mmux_LED87;
  wire Mmux_LED88_361;
  wire Mmux_LED810;
  wire Mmux_LED812;
  wire Mmux_LED71_364;
  wire Mmux_LED73;
  wire Mmux_LED74;
  wire Mmux_LED76_367;
  wire Mmux_LED710;
  wire Mmux_LED711_369;
  wire Mmux_LED712_370;
  wire Mmux_LED6;
  wire Mmux_LED61_372;
  wire Mmux_LED63_373;
  wire Mmux_LED64_374;
  wire Mmux_LED66;
  wire Mmux_LED68_376;
  wire Mmux_LED610;
  wire Mmux_LED611_378;
  wire Mmux_LED612_379;
  wire Mmux_LED5;
  wire Mmux_LED51;
  wire Mmux_LED52_382;
  wire Mmux_LED53;
  wire Mmux_LED54_384;
  wire Mmux_LED56;
  wire Mmux_LED58;
  wire Mmux_LED510;
  wire Mmux_LED511_388;
  wire Mmux_LED512_389;
  wire Mmux_LED41_390;
  wire Mmux_LED43;
  wire Mmux_LED44_392;
  wire Mmux_LED46_393;
  wire Mmux_LED48;
  wire Mmux_LED410;
  wire Mmux_LED411_396;
  wire Mmux_LED412_397;
  wire Mmux_LED3;
  wire Mmux_LED31_399;
  wire Mmux_LED32_400;
  wire Mmux_LED33;
  wire Mmux_LED34_402;
  wire Mmux_LED36;
  wire Mmux_LED37_404;
  wire Mmux_LED38_405;
  wire Mmux_LED310;
  wire Mmux_LED311_407;
  wire Mmux_LED312_408;
  wire Mmux_LED2;
  wire Mmux_LED21;
  wire Mmux_LED22_411;
  wire Mmux_LED23;
  wire Mmux_LED24_413;
  wire Mmux_LED25_414;
  wire Mmux_LED26;
  wire Mmux_LED27_416;
  wire Mmux_LED28_417;
  wire Mmux_LED210;
  wire Mmux_LED211_419;
  wire Mmux_LED212_420;
  wire \ALU/A[31]_reduce_nor_4_o3_421 ;
  wire \ALU/Sh931_422 ;
  wire \ALU/A[31]_reduce_nor_2_o2_423 ;
  wire \ALU/A[31]_reduce_nor_20_o3_424 ;
  wire \ALU/A[31]_reduce_nor_11_o1_425 ;
  wire \ALU/A[31]_reduce_nor_11_o2_426 ;
  wire \ALU/A[31]_reduce_nor_11_o3_427 ;
  wire \ALU/A[31]_reduce_nor_11_o4_428 ;
  wire \ALU/A[31]_reduce_nor_11_o5_429 ;
  wire \ALU/A[31]_reduce_nor_11_o6_430 ;
  wire \ALU/A[31]_reduce_nor_14_o1_431 ;
  wire \ALU/A[31]_reduce_nor_14_o2_432 ;
  wire \ALU/A[31]_reduce_nor_14_o3_433 ;
  wire \ALU/A[31]_reduce_nor_14_o4_434 ;
  wire \ALU/A[31]_reduce_nor_14_o5_435 ;
  wire \ALU/A[31]_reduce_nor_14_o6_436 ;
  wire \ALU/Madd_n0048_lut<0>1_454 ;
  wire N23;
  wire N27;
  wire N29;
  wire N31;
  wire [0 : 0] F;
  wire [31 : 0] \ALU/Madd_n0048_cy ;
  wire [31 : 1] \ALU/Madd_n0048_lut ;
  wire [31 : 0] \ALU/Msub_n0041_cy ;
  wire [30 : 0] \ALU/Msub_n0041_lut ;
  wire [31 : 0] \ALU/n0048 ;
  wire [32 : 31] \ALU/n0041 ;
  VCC   XST_VCC (
    .P(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> )
  );
  GND   XST_GND (
    .G(\ALU/Madd_n0048_lut [31])
  );
  MUXF7   \ALU/Mmux_F_2_f7  (
    .I0(\ALU/Mmux_F_4_28 ),
    .I1(\ALU/Mmux_F_3_27 ),
    .S(ALU_OP_2_IBUF_3),
    .O(F[0])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \ALU/Mmux_ZF_3  (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_0_IBUF_5),
    .I2(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<15>_157 ),
    .I3(\ALU/A[31]_reduce_nor_20_o ),
    .I4(\ALU/A[31]_reduce_nor_14_o ),
    .I5(\ALU/A[31]_reduce_nor_11_o ),
    .O(\ALU/Mmux_ZF_3_29 )
  );
  MUXF7   \ALU/Mmux_ZF_2_f7  (
    .I0(\ALU/Mmux_ZF_4_30 ),
    .I1(\ALU/Mmux_ZF_3_29 ),
    .S(ALU_OP_2_IBUF_3),
    .O(ZF)
  );
  XORCY   \ALU/Madd_n0048_xor<31>  (
    .CI(\ALU/Madd_n0048_cy [30]),
    .LI(\ALU/Madd_n0048_lut [31]),
    .O(\ALU/n0048 [31])
  );
  MUXCY   \ALU/Madd_n0048_cy<31>  (
    .CI(\ALU/Madd_n0048_cy [30]),
    .DI(Mram__n003631),
    .S(\ALU/Madd_n0048_lut [31]),
    .O(\ALU/Madd_n0048_cy [31])
  );
  XORCY   \ALU/Madd_n0048_xor<30>  (
    .CI(\ALU/Madd_n0048_cy [29]),
    .LI(\ALU/Madd_n0048_lut [30]),
    .O(\ALU/n0048 [30])
  );
  MUXCY   \ALU/Madd_n0048_cy<30>  (
    .CI(\ALU/Madd_n0048_cy [29]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [30]),
    .O(\ALU/Madd_n0048_cy [30])
  );
  XORCY   \ALU/Madd_n0048_xor<29>  (
    .CI(\ALU/Madd_n0048_cy [28]),
    .LI(\ALU/Madd_n0048_lut [29]),
    .O(\ALU/n0048 [29])
  );
  MUXCY   \ALU/Madd_n0048_cy<29>  (
    .CI(\ALU/Madd_n0048_cy [28]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [29]),
    .O(\ALU/Madd_n0048_cy [29])
  );
  XORCY   \ALU/Madd_n0048_xor<28>  (
    .CI(\ALU/Madd_n0048_cy [27]),
    .LI(\ALU/Madd_n0048_lut [28]),
    .O(\ALU/n0048 [28])
  );
  MUXCY   \ALU/Madd_n0048_cy<28>  (
    .CI(\ALU/Madd_n0048_cy [27]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [28]),
    .O(\ALU/Madd_n0048_cy [28])
  );
  XORCY   \ALU/Madd_n0048_xor<27>  (
    .CI(\ALU/Madd_n0048_cy [26]),
    .LI(\ALU/Madd_n0048_lut [27]),
    .O(\ALU/n0048 [27])
  );
  MUXCY   \ALU/Madd_n0048_cy<27>  (
    .CI(\ALU/Madd_n0048_cy [26]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [27]),
    .O(\ALU/Madd_n0048_cy [27])
  );
  XORCY   \ALU/Madd_n0048_xor<26>  (
    .CI(\ALU/Madd_n0048_cy [25]),
    .LI(\ALU/Madd_n0048_lut [26]),
    .O(\ALU/n0048 [26])
  );
  MUXCY   \ALU/Madd_n0048_cy<26>  (
    .CI(\ALU/Madd_n0048_cy [25]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [26]),
    .O(\ALU/Madd_n0048_cy [26])
  );
  XORCY   \ALU/Madd_n0048_xor<25>  (
    .CI(\ALU/Madd_n0048_cy [24]),
    .LI(\ALU/Madd_n0048_lut [25]),
    .O(\ALU/n0048 [25])
  );
  MUXCY   \ALU/Madd_n0048_cy<25>  (
    .CI(\ALU/Madd_n0048_cy [24]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [25]),
    .O(\ALU/Madd_n0048_cy [25])
  );
  XORCY   \ALU/Madd_n0048_xor<24>  (
    .CI(\ALU/Madd_n0048_cy [23]),
    .LI(\ALU/Madd_n0048_lut [24]),
    .O(\ALU/n0048 [24])
  );
  MUXCY   \ALU/Madd_n0048_cy<24>  (
    .CI(\ALU/Madd_n0048_cy [23]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [24]),
    .O(\ALU/Madd_n0048_cy [24])
  );
  XORCY   \ALU/Madd_n0048_xor<23>  (
    .CI(\ALU/Madd_n0048_cy [22]),
    .LI(\ALU/Madd_n0048_lut [23]),
    .O(\ALU/n0048 [23])
  );
  MUXCY   \ALU/Madd_n0048_cy<23>  (
    .CI(\ALU/Madd_n0048_cy [22]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [23]),
    .O(\ALU/Madd_n0048_cy [23])
  );
  XORCY   \ALU/Madd_n0048_xor<22>  (
    .CI(\ALU/Madd_n0048_cy [21]),
    .LI(\ALU/Madd_n0048_lut [22]),
    .O(\ALU/n0048 [22])
  );
  MUXCY   \ALU/Madd_n0048_cy<22>  (
    .CI(\ALU/Madd_n0048_cy [21]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [22]),
    .O(\ALU/Madd_n0048_cy [22])
  );
  XORCY   \ALU/Madd_n0048_xor<21>  (
    .CI(\ALU/Madd_n0048_cy [20]),
    .LI(\ALU/Madd_n0048_lut [21]),
    .O(\ALU/n0048 [21])
  );
  MUXCY   \ALU/Madd_n0048_cy<21>  (
    .CI(\ALU/Madd_n0048_cy [20]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [21]),
    .O(\ALU/Madd_n0048_cy [21])
  );
  XORCY   \ALU/Madd_n0048_xor<20>  (
    .CI(\ALU/Madd_n0048_cy [19]),
    .LI(\ALU/Madd_n0048_lut [20]),
    .O(\ALU/n0048 [20])
  );
  MUXCY   \ALU/Madd_n0048_cy<20>  (
    .CI(\ALU/Madd_n0048_cy [19]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [20]),
    .O(\ALU/Madd_n0048_cy [20])
  );
  XORCY   \ALU/Madd_n0048_xor<19>  (
    .CI(\ALU/Madd_n0048_cy [18]),
    .LI(\ALU/Madd_n0048_lut [19]),
    .O(\ALU/n0048 [19])
  );
  MUXCY   \ALU/Madd_n0048_cy<19>  (
    .CI(\ALU/Madd_n0048_cy [18]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [19]),
    .O(\ALU/Madd_n0048_cy [19])
  );
  XORCY   \ALU/Madd_n0048_xor<18>  (
    .CI(\ALU/Madd_n0048_cy [17]),
    .LI(\ALU/Madd_n0048_lut [18]),
    .O(\ALU/n0048 [18])
  );
  MUXCY   \ALU/Madd_n0048_cy<18>  (
    .CI(\ALU/Madd_n0048_cy [17]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [18]),
    .O(\ALU/Madd_n0048_cy [18])
  );
  XORCY   \ALU/Madd_n0048_xor<17>  (
    .CI(\ALU/Madd_n0048_cy [16]),
    .LI(\ALU/Madd_n0048_lut [17]),
    .O(\ALU/n0048 [17])
  );
  MUXCY   \ALU/Madd_n0048_cy<17>  (
    .CI(\ALU/Madd_n0048_cy [16]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [17]),
    .O(\ALU/Madd_n0048_cy [17])
  );
  XORCY   \ALU/Madd_n0048_xor<16>  (
    .CI(\ALU/Madd_n0048_cy [15]),
    .LI(\ALU/Madd_n0048_lut [16]),
    .O(\ALU/n0048 [16])
  );
  MUXCY   \ALU/Madd_n0048_cy<16>  (
    .CI(\ALU/Madd_n0048_cy [15]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [16]),
    .O(\ALU/Madd_n0048_cy [16])
  );
  XORCY   \ALU/Madd_n0048_xor<15>  (
    .CI(\ALU/Madd_n0048_cy [14]),
    .LI(\ALU/Madd_n0048_lut [15]),
    .O(\ALU/n0048 [15])
  );
  MUXCY   \ALU/Madd_n0048_cy<15>  (
    .CI(\ALU/Madd_n0048_cy [14]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [15]),
    .O(\ALU/Madd_n0048_cy [15])
  );
  XORCY   \ALU/Madd_n0048_xor<14>  (
    .CI(\ALU/Madd_n0048_cy [13]),
    .LI(\ALU/Madd_n0048_lut [14]),
    .O(\ALU/n0048 [14])
  );
  MUXCY   \ALU/Madd_n0048_cy<14>  (
    .CI(\ALU/Madd_n0048_cy [13]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [14]),
    .O(\ALU/Madd_n0048_cy [14])
  );
  XORCY   \ALU/Madd_n0048_xor<13>  (
    .CI(\ALU/Madd_n0048_cy [12]),
    .LI(\ALU/Madd_n0048_lut [13]),
    .O(\ALU/n0048 [13])
  );
  MUXCY   \ALU/Madd_n0048_cy<13>  (
    .CI(\ALU/Madd_n0048_cy [12]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [13]),
    .O(\ALU/Madd_n0048_cy [13])
  );
  XORCY   \ALU/Madd_n0048_xor<12>  (
    .CI(\ALU/Madd_n0048_cy [11]),
    .LI(\ALU/Madd_n0048_lut [12]),
    .O(\ALU/n0048 [12])
  );
  MUXCY   \ALU/Madd_n0048_cy<12>  (
    .CI(\ALU/Madd_n0048_cy [11]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [12]),
    .O(\ALU/Madd_n0048_cy [12])
  );
  XORCY   \ALU/Madd_n0048_xor<11>  (
    .CI(\ALU/Madd_n0048_cy [10]),
    .LI(\ALU/Madd_n0048_lut [11]),
    .O(\ALU/n0048 [11])
  );
  MUXCY   \ALU/Madd_n0048_cy<11>  (
    .CI(\ALU/Madd_n0048_cy [10]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [11]),
    .O(\ALU/Madd_n0048_cy [11])
  );
  XORCY   \ALU/Madd_n0048_xor<10>  (
    .CI(\ALU/Madd_n0048_cy [9]),
    .LI(\ALU/Madd_n0048_lut [10]),
    .O(\ALU/n0048 [10])
  );
  MUXCY   \ALU/Madd_n0048_cy<10>  (
    .CI(\ALU/Madd_n0048_cy [9]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [10]),
    .O(\ALU/Madd_n0048_cy [10])
  );
  XORCY   \ALU/Madd_n0048_xor<9>  (
    .CI(\ALU/Madd_n0048_cy [8]),
    .LI(\ALU/Madd_n0048_lut [9]),
    .O(\ALU/n0048 [9])
  );
  MUXCY   \ALU/Madd_n0048_cy<9>  (
    .CI(\ALU/Madd_n0048_cy [8]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [9]),
    .O(\ALU/Madd_n0048_cy [9])
  );
  XORCY   \ALU/Madd_n0048_xor<8>  (
    .CI(\ALU/Madd_n0048_cy [7]),
    .LI(\ALU/Madd_n0048_lut [8]),
    .O(\ALU/n0048 [8])
  );
  MUXCY   \ALU/Madd_n0048_cy<8>  (
    .CI(\ALU/Madd_n0048_cy [7]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [8]),
    .O(\ALU/Madd_n0048_cy [8])
  );
  XORCY   \ALU/Madd_n0048_xor<7>  (
    .CI(\ALU/Madd_n0048_cy [6]),
    .LI(\ALU/Madd_n0048_lut [7]),
    .O(\ALU/n0048 [7])
  );
  MUXCY   \ALU/Madd_n0048_cy<7>  (
    .CI(\ALU/Madd_n0048_cy [6]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [7]),
    .O(\ALU/Madd_n0048_cy [7])
  );
  XORCY   \ALU/Madd_n0048_xor<6>  (
    .CI(\ALU/Madd_n0048_cy [5]),
    .LI(\ALU/Madd_n0048_lut [6]),
    .O(\ALU/n0048 [6])
  );
  MUXCY   \ALU/Madd_n0048_cy<6>  (
    .CI(\ALU/Madd_n0048_cy [5]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [6]),
    .O(\ALU/Madd_n0048_cy [6])
  );
  XORCY   \ALU/Madd_n0048_xor<5>  (
    .CI(\ALU/Madd_n0048_cy [4]),
    .LI(\ALU/Madd_n0048_lut [5]),
    .O(\ALU/n0048 [5])
  );
  MUXCY   \ALU/Madd_n0048_cy<5>  (
    .CI(\ALU/Madd_n0048_cy [4]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [5]),
    .O(\ALU/Madd_n0048_cy [5])
  );
  XORCY   \ALU/Madd_n0048_xor<4>  (
    .CI(\ALU/Madd_n0048_cy [3]),
    .LI(\ALU/Madd_n0048_lut [4]),
    .O(\ALU/n0048 [4])
  );
  MUXCY   \ALU/Madd_n0048_cy<4>  (
    .CI(\ALU/Madd_n0048_cy [3]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [4]),
    .O(\ALU/Madd_n0048_cy [4])
  );
  XORCY   \ALU/Madd_n0048_xor<3>  (
    .CI(\ALU/Madd_n0048_cy [2]),
    .LI(\ALU/Madd_n0048_lut [3]),
    .O(\ALU/n0048 [3])
  );
  MUXCY   \ALU/Madd_n0048_cy<3>  (
    .CI(\ALU/Madd_n0048_cy [2]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Madd_n0048_lut [3]),
    .O(\ALU/Madd_n0048_cy [3])
  );
  XORCY   \ALU/Madd_n0048_xor<2>  (
    .CI(\ALU/Madd_n0048_cy [1]),
    .LI(\ALU/Madd_n0048_lut [2]),
    .O(\ALU/n0048 [2])
  );
  MUXCY   \ALU/Madd_n0048_cy<2>  (
    .CI(\ALU/Madd_n0048_cy [1]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Madd_n0048_lut [2]),
    .O(\ALU/Madd_n0048_cy [2])
  );
  XORCY   \ALU/Madd_n0048_xor<1>  (
    .CI(\ALU/Madd_n0048_cy [0]),
    .LI(\ALU/Madd_n0048_lut [1]),
    .O(\ALU/n0048 [1])
  );
  MUXCY   \ALU/Madd_n0048_cy<1>  (
    .CI(\ALU/Madd_n0048_cy [0]),
    .DI(Mram__n0036),
    .S(\ALU/Madd_n0048_lut [1]),
    .O(\ALU/Madd_n0048_cy [1])
  );
  XORCY   \ALU/Madd_n0048_xor<0>  (
    .CI(\ALU/Madd_n0048_lut [31]),
    .LI(\ALU/Madd_n0048_lut<0>1_454 ),
    .O(\ALU/n0048 [0])
  );
  MUXCY   \ALU/Madd_n0048_cy<0>  (
    .CI(\ALU/Madd_n0048_lut [31]),
    .DI(Mram__n0036),
    .S(\ALU/Madd_n0048_lut<0>1_454 ),
    .O(\ALU/Madd_n0048_cy [0])
  );
  XORCY   \ALU/Msub_n0041_xor<32>  (
    .CI(\ALU/Msub_n0041_cy [31]),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .O(\ALU/n0041 [32])
  );
  XORCY   \ALU/Msub_n0041_xor<31>  (
    .CI(\ALU/Msub_n0041_cy [30]),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .O(\ALU/n0041 [31])
  );
  MUXCY   \ALU/Msub_n0041_cy<31>  (
    .CI(\ALU/Msub_n0041_cy [30]),
    .DI(Mram__n003631),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .O(\ALU/Msub_n0041_cy [31])
  );
  MUXCY   \ALU/Msub_n0041_cy<30>  (
    .CI(\ALU/Msub_n0041_cy [29]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [30]),
    .O(\ALU/Msub_n0041_cy [30])
  );
  MUXCY   \ALU/Msub_n0041_cy<29>  (
    .CI(\ALU/Msub_n0041_cy [28]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [29]),
    .O(\ALU/Msub_n0041_cy [29])
  );
  MUXCY   \ALU/Msub_n0041_cy<28>  (
    .CI(\ALU/Msub_n0041_cy [27]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [28]),
    .O(\ALU/Msub_n0041_cy [28])
  );
  MUXCY   \ALU/Msub_n0041_cy<27>  (
    .CI(\ALU/Msub_n0041_cy [26]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [27]),
    .O(\ALU/Msub_n0041_cy [27])
  );
  MUXCY   \ALU/Msub_n0041_cy<26>  (
    .CI(\ALU/Msub_n0041_cy [25]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [26]),
    .O(\ALU/Msub_n0041_cy [26])
  );
  MUXCY   \ALU/Msub_n0041_cy<25>  (
    .CI(\ALU/Msub_n0041_cy [24]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [25]),
    .O(\ALU/Msub_n0041_cy [25])
  );
  MUXCY   \ALU/Msub_n0041_cy<24>  (
    .CI(\ALU/Msub_n0041_cy [23]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [24]),
    .O(\ALU/Msub_n0041_cy [24])
  );
  MUXCY   \ALU/Msub_n0041_cy<23>  (
    .CI(\ALU/Msub_n0041_cy [22]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [23]),
    .O(\ALU/Msub_n0041_cy [23])
  );
  MUXCY   \ALU/Msub_n0041_cy<22>  (
    .CI(\ALU/Msub_n0041_cy [21]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [22]),
    .O(\ALU/Msub_n0041_cy [22])
  );
  MUXCY   \ALU/Msub_n0041_cy<21>  (
    .CI(\ALU/Msub_n0041_cy [20]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [21]),
    .O(\ALU/Msub_n0041_cy [21])
  );
  MUXCY   \ALU/Msub_n0041_cy<20>  (
    .CI(\ALU/Msub_n0041_cy [19]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [20]),
    .O(\ALU/Msub_n0041_cy [20])
  );
  MUXCY   \ALU/Msub_n0041_cy<19>  (
    .CI(\ALU/Msub_n0041_cy [18]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [19]),
    .O(\ALU/Msub_n0041_cy [19])
  );
  MUXCY   \ALU/Msub_n0041_cy<18>  (
    .CI(\ALU/Msub_n0041_cy [17]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [18]),
    .O(\ALU/Msub_n0041_cy [18])
  );
  MUXCY   \ALU/Msub_n0041_cy<17>  (
    .CI(\ALU/Msub_n0041_cy [16]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [17]),
    .O(\ALU/Msub_n0041_cy [17])
  );
  MUXCY   \ALU/Msub_n0041_cy<16>  (
    .CI(\ALU/Msub_n0041_cy [15]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [16]),
    .O(\ALU/Msub_n0041_cy [16])
  );
  MUXCY   \ALU/Msub_n0041_cy<15>  (
    .CI(\ALU/Msub_n0041_cy [14]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [15]),
    .O(\ALU/Msub_n0041_cy [15])
  );
  MUXCY   \ALU/Msub_n0041_cy<14>  (
    .CI(\ALU/Msub_n0041_cy [13]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [14]),
    .O(\ALU/Msub_n0041_cy [14])
  );
  MUXCY   \ALU/Msub_n0041_cy<13>  (
    .CI(\ALU/Msub_n0041_cy [12]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [13]),
    .O(\ALU/Msub_n0041_cy [13])
  );
  MUXCY   \ALU/Msub_n0041_cy<12>  (
    .CI(\ALU/Msub_n0041_cy [11]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [12]),
    .O(\ALU/Msub_n0041_cy [12])
  );
  MUXCY   \ALU/Msub_n0041_cy<11>  (
    .CI(\ALU/Msub_n0041_cy [10]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [11]),
    .O(\ALU/Msub_n0041_cy [11])
  );
  MUXCY   \ALU/Msub_n0041_cy<10>  (
    .CI(\ALU/Msub_n0041_cy [9]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [10]),
    .O(\ALU/Msub_n0041_cy [10])
  );
  MUXCY   \ALU/Msub_n0041_cy<9>  (
    .CI(\ALU/Msub_n0041_cy [8]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [9]),
    .O(\ALU/Msub_n0041_cy [9])
  );
  MUXCY   \ALU/Msub_n0041_cy<8>  (
    .CI(\ALU/Msub_n0041_cy [7]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [8]),
    .O(\ALU/Msub_n0041_cy [8])
  );
  MUXCY   \ALU/Msub_n0041_cy<7>  (
    .CI(\ALU/Msub_n0041_cy [6]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [7]),
    .O(\ALU/Msub_n0041_cy [7])
  );
  MUXCY   \ALU/Msub_n0041_cy<6>  (
    .CI(\ALU/Msub_n0041_cy [5]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [6]),
    .O(\ALU/Msub_n0041_cy [6])
  );
  MUXCY   \ALU/Msub_n0041_cy<5>  (
    .CI(\ALU/Msub_n0041_cy [4]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [5]),
    .O(\ALU/Msub_n0041_cy [5])
  );
  MUXCY   \ALU/Msub_n0041_cy<4>  (
    .CI(\ALU/Msub_n0041_cy [3]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [4]),
    .O(\ALU/Msub_n0041_cy [4])
  );
  MUXCY   \ALU/Msub_n0041_cy<3>  (
    .CI(\ALU/Msub_n0041_cy [2]),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_n0041_lut [3]),
    .O(\ALU/Msub_n0041_cy [3])
  );
  MUXCY   \ALU/Msub_n0041_cy<2>  (
    .CI(\ALU/Msub_n0041_cy [1]),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_n0041_lut [2]),
    .O(\ALU/Msub_n0041_cy [2])
  );
  MUXCY   \ALU/Msub_n0041_cy<1>  (
    .CI(\ALU/Msub_n0041_cy [0]),
    .DI(Mram__n0036),
    .S(\ALU/Msub_n0041_lut [1]),
    .O(\ALU/Msub_n0041_cy [1])
  );
  MUXCY   \ALU/Msub_n0041_cy<0>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .DI(Mram__n0036),
    .S(\ALU/Msub_n0041_lut [0]),
    .O(\ALU/Msub_n0041_cy [0])
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<11>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<10>_161 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi11 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<11> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<11>_158 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<10>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<9>_164 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi10 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<10> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<10>_161 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<9>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<8>_167 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi9 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<9> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<9>_164 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<8>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<7>_170 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi8 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<8> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<8>_167 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<7>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<6>_173 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi7 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<7> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<7>_170 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<6>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<5>_176 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi6_175 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<6>_174 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<6>_173 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<6>  (
    .I0(Mram__n003635),
    .I1(\ALU/Sh11 ),
    .I2(Mram__n003637),
    .I3(\ALU/Sh10 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<6>_174 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi6  (
    .I0(\ALU/Sh10 ),
    .I1(\ALU/Sh11 ),
    .I2(Mram__n003635),
    .I3(Mram__n003637),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi6_175 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<5>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<4>_179 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi5_178 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<5>_177 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<5>_176 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<5>  (
    .I0(Mram__n003632),
    .I1(\ALU/Sh11 ),
    .I2(Mram__n003635),
    .I3(\ALU/Sh10 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<5>_177 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi5  (
    .I0(\ALU/Sh10 ),
    .I1(\ALU/Sh11 ),
    .I2(Mram__n003632),
    .I3(Mram__n003635),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi5_178 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<4>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<3>_182 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi4_181 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<4>_180 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<4>_179 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<4>  (
    .I0(Mram__n003635),
    .I1(\ALU/Sh10 ),
    .I2(Mram__n003633),
    .I3(\ALU/Sh11 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<4>_180 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi4  (
    .I0(\ALU/Sh11 ),
    .I1(\ALU/Sh10 ),
    .I2(Mram__n003635),
    .I3(Mram__n003633),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi4_181 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<3>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<2>_185 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi3 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<3> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<3>_182 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<2>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<1>_188 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi2_187 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<2> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<2>_185 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<1>  (
    .CI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<0>_191 ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi1_190 ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<1>_189 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<1>_188 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<1>  (
    .I0(Mram__n003632),
    .I1(\ALU/Sh10 ),
    .I2(Mram__n003635),
    .I3(\ALU/Sh11 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<1>_189 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi1  (
    .I0(\ALU/Sh11 ),
    .I1(\ALU/Sh10 ),
    .I2(Mram__n003632),
    .I3(Mram__n003635),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi1_190 )
  );
  MUXCY   \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<0>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .DI(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi ),
    .S(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<0> ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<0>_191 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<31>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<30>_195 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<31> )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<30>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<29>_197 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<30>_196 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<30> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<30>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<29>_197 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<30>_196 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<30>_195 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<29>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<28>_199 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<29>_198 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<29> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<29>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<28>_199 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<29>_198 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<29>_197 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<28>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<27>_201 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<28>_200 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<28> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<28>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<27>_201 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<28>_200 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<28>_199 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<27>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<26>_203 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<27>_202 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<27> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<27>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<26>_203 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<27>_202 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<27>_201 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<26>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<25>_205 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<26>_204 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<26> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<26>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<25>_205 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<26>_204 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<26>_203 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<25>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<24>_207 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<25>_206 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<25> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<25>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<24>_207 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<25>_206 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<25>_205 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<24>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<23>_209 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<24>_208 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<24> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<24>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<23>_209 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<24>_208 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<24>_207 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<23>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<22>_211 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<23>_210 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<23> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<23>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<22>_211 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<23>_210 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<23>_209 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<22>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<21>_213 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<22>_212 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<22> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<22>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<21>_213 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<22>_212 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<22>_211 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<21>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<20>_215 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<21>_214 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<21> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<21>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<20>_215 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<21>_214 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<21>_213 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<20>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<19>_217 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<20>_216 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<20> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<20>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<19>_217 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<20>_216 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<20>_215 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<19>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<18>_219 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<19>_218 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<19> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<19>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<18>_219 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<19>_218 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<19>_217 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<18>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<17>_221 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<18>_220 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<18> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<18>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<17>_221 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<18>_220 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<18>_219 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<17>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<16>_223 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<17>_222 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<17> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<17>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<16>_223 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<17>_222 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<17>_221 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<16>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<15>_225 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<16>_224 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<16> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<16>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<15>_225 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<16>_224 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<16>_223 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<15>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<14>_227 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<15>_226 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<15> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<15>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<14>_227 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<15>_226 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<15>_225 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<14>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<13>_229 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<14>_228 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<14> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<14>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<13>_229 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<14>_228 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<14>_227 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<13>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<12>_231 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<13>_230 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<13> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<13>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<12>_231 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<13>_230 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<13>_229 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<12>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<11>_233 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<12>_232 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<12> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<12>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<11>_233 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<12>_232 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<12>_231 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<11>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<10>_235 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<11>_234 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<11> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<11>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<10>_235 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<11>_234 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<11>_233 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<10>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<9>_237 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<10>_236 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<10> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<10>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<9>_237 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<10>_236 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<10>_235 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<9>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<8>_239 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<9>_238 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<9> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<9>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<8>_239 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<9>_238 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<9>_237 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<8>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<7>_241 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<8>_240 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<8> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<8>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<7>_241 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<8>_240 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<8>_239 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<7>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<6>_243 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<7>_242 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<7> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<7>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<6>_243 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<7>_242 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<7>_241 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<6>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<5>_245 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<6>_244 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<6> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<6>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<5>_245 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<6>_244 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<6>_243 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<5>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<4>_247 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<5>_246 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<5> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<5>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<4>_247 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<5>_246 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<5>_245 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<4>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<3>_249 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<4>_248 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<4> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<4>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<3>_249 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<4>_248 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<4>_247 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<3>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<2>_251 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<3>_250 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<3> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<3>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<2>_251 ),
    .DI(\ALU/Sh11 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<3>_250 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<3>_249 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<2>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<1>_253 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<2>_252 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<2> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<2>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<1>_253 ),
    .DI(\ALU/Sh10 ),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<2>_252 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<2>_251 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<1>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<0>_255 ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<1>_254 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<1> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<1>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<0>_255 ),
    .DI(Mram__n0036),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<1>_254 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<1>_253 )
  );
  XORCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_xor<0>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .LI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<0>_256 ),
    .O(\ALU/A[31]_B[31]_sub_13_OUT<0> )
  );
  MUXCY   \ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<0>  (
    .CI(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<31> ),
    .DI(Mram__n0036),
    .S(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<0>_256 ),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_cy<0>_255 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  Mram__n00361 (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .O(Mram__n0036)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Mram__n0036101 (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Sh11 )
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  Mram__n0036311 (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(Mram__n003631)
  );
  LUT3 #(
    .INIT ( 8'h72 ))
  Mram__n0036321 (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(Mram__n003632)
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  Mram__n0036331 (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(Mram__n003633)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  Mram__n0036371 (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(Mram__n003637)
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  Mram__n0036111 (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Sh10 )
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  Mram__n0036351 (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_0_IBUF_2),
    .O(Mram__n003635)
  );
  LUT5 #(
    .INIT ( 32'h73625140 ))
  \ALU/Sh421  (
    .I0(Mram__n003635),
    .I1(Mram__n003632),
    .I2(\ALU/Sh11 ),
    .I3(\ALU/Sh10 ),
    .I4(\ALU/Sh1 ),
    .O(\ALU/Sh42 )
  );
  LUT5 #(
    .INIT ( 32'h10000000 ))
  \ALU/Mmux_F1171  (
    .I0(Mram__n003635),
    .I1(\ALU/_n0052 ),
    .I2(ALU_OP_0_IBUF_5),
    .I3(ALU_OP_1_IBUF_4),
    .I4(ALU_OP_2_IBUF_3),
    .O(\ALU/Mmux_F117 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \ALU/out31  (
    .I0(Mram__n003635),
    .I1(Mram__n003637),
    .I2(Mram__n003632),
    .I3(Mram__n003633),
    .I4(Mram__n003631),
    .O(\ALU/_n0052 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_LED11 (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_2_IBUF_3),
    .I2(F_LED_SW_2_IBUF_6),
    .O(Mmux_LED1)
  );
  LUT6 #(
    .INIT ( 64'h08802AA22AA20880 ))
  Mmux_LED12 (
    .I0(Mmux_LED1),
    .I1(ALU_OP_0_IBUF_5),
    .I2(\ALU/n0041 [31]),
    .I3(\ALU/n0041 [32]),
    .I4(\ALU/Madd_n0048_cy [31]),
    .I5(\ALU/n0048 [31]),
    .O(Mmux_LED11_346)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED13 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh80 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<16> ),
    .I5(\ALU/n0048 [16]),
    .O(Mmux_LED12_347)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED14 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003637),
    .I4(\ALU/Sh10 ),
    .I5(Mmux_LED12_347),
    .O(Mmux_LED13_348)
  );
  LUT5 #(
    .INIT ( 32'h11141440 ))
  Mmux_LED15 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003635),
    .I3(\ALU/Sh10 ),
    .I4(ALU_OP_0_IBUF_5),
    .O(Mmux_LED14_349)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_LED17 (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_2_IBUF_3),
    .O(Mmux_LED16_351)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED18 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<8> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [8]),
    .I5(Mmux_LED15_350),
    .O(Mmux_LED17_352)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED19 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh1 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<24> ),
    .I5(\ALU/n0048 [24]),
    .O(Mmux_LED18_353)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED110 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003637),
    .I4(\ALU/Sh10 ),
    .I5(Mmux_LED18_353),
    .O(Mmux_LED19_354)
  );
  LUT6 #(
    .INIT ( 64'hFDDDAD8DF8D8A888 ))
  Mmux_LED111 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(Mmux_LED17_352),
    .I2(F_LED_SW_1_IBUF_7),
    .I3(Mmux_LED19_354),
    .I4(Mmux_LED13_348),
    .I5(F[0]),
    .O(Mmux_LED110_355)
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  Mmux_LED112 (
    .I0(Mmux_LED11_346),
    .I1(F_LED_SW_2_IBUF_6),
    .I2(Mmux_LED110_355),
    .O(LED_0_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED82 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED73),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<23> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [23]),
    .O(Mmux_LED81_356)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_LED84 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/Sh71 ),
    .O(Mmux_LED83)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED85 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED83),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<7> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [7]),
    .O(Mmux_LED84_358)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED88 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh95 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<31> ),
    .I5(\ALU/n0048 [31]),
    .O(Mmux_LED87)
  );
  LUT6 #(
    .INIT ( 64'h8A8AA88802022000 ))
  Mmux_LED89 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(ALU_OP_2_IBUF_3),
    .I2(ALU_OP_1_IBUF_4),
    .I3(ALU_OP_0_IBUF_5),
    .I4(Mram__n003631),
    .I5(Mmux_LED87),
    .O(Mmux_LED88_361)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED813 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<15> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [15]),
    .I5(Mmux_LED810),
    .O(Mmux_LED812)
  );
  LUT6 #(
    .INIT ( 64'hFFFFEEEA55554440 ))
  Mmux_LED814 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED88_361),
    .I3(Mmux_LED812),
    .I4(Mmux_LED86),
    .I5(ZF),
    .O(LED_7_OBUF_11)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED72 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED5),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<22> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [22]),
    .O(Mmux_LED71_364)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED75 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED73),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<6> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [6]),
    .O(Mmux_LED74)
  );
  LUT5 #(
    .INIT ( 32'h11141440 ))
  Mmux_LED76 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003635),
    .I3(\ALU/Sh11 ),
    .I4(ALU_OP_0_IBUF_5),
    .O(Mmux_LED32_400)
  );
  LUT6 #(
    .INIT ( 64'h5551555155514440 ))
  Mmux_LED77 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED14_349),
    .I3(Mmux_LED71_364),
    .I4(Mmux_LED32_400),
    .I5(Mmux_LED74),
    .O(Mmux_LED76_367)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED711 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<14> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [14]),
    .I5(Mmux_LED58),
    .O(Mmux_LED710)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED712 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh70 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<30> ),
    .I5(\ALU/n0048 [30]),
    .O(Mmux_LED711_369)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED713 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003635),
    .I4(\ALU/Sh10 ),
    .I5(Mmux_LED711_369),
    .O(Mmux_LED712_370)
  );
  LUT6 #(
    .INIT ( 64'h5555555544404040 ))
  Mmux_LED714 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED710),
    .I3(Mmux_LED712_370),
    .I4(F_LED_SW_1_IBUF_7),
    .I5(Mmux_LED76_367),
    .O(LED_6_OBUF_12)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_LED61 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/Sh85 ),
    .O(Mmux_LED6)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED62 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED6),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<21> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [21]),
    .O(Mmux_LED61_372)
  );
  LUT5 #(
    .INIT ( 32'h11141440 ))
  Mmux_LED63 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003637),
    .I3(\ALU/Sh11 ),
    .I4(ALU_OP_0_IBUF_5),
    .O(Mmux_LED52_382)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED65 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED63_373),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<5> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [5]),
    .O(Mmux_LED64_374)
  );
  LUT5 #(
    .INIT ( 32'h11141440 ))
  Mmux_LED68 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003637),
    .I3(\ALU/Sh10 ),
    .I4(ALU_OP_0_IBUF_5),
    .O(Mmux_LED22_411)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED611 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<13> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [13]),
    .I5(Mmux_LED68_376),
    .O(Mmux_LED610)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED612 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh93 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<29> ),
    .I5(\ALU/n0048 [29]),
    .O(Mmux_LED611_378)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED613 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003637),
    .I4(\ALU/Sh10 ),
    .I5(Mmux_LED611_378),
    .O(Mmux_LED612_379)
  );
  LUT6 #(
    .INIT ( 64'h5555555544404040 ))
  Mmux_LED614 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED610),
    .I3(Mmux_LED612_379),
    .I4(F_LED_SW_1_IBUF_7),
    .I5(Mmux_LED66),
    .O(LED_5_OBUF_13)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED52 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED5),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<20> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [20]),
    .O(Mmux_LED51)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_LED54 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/Sh68 ),
    .O(Mmux_LED53)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED55 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED53),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<4> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [4]),
    .O(Mmux_LED54_384)
  );
  LUT6 #(
    .INIT ( 64'h5551555155514440 ))
  Mmux_LED57 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED52_382),
    .I3(Mmux_LED51),
    .I4(Mmux_LED32_400),
    .I5(Mmux_LED54_384),
    .O(Mmux_LED56)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED511 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<12> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [12]),
    .I5(Mmux_LED58),
    .O(Mmux_LED510)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED512 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh92_259 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<28> ),
    .I5(\ALU/n0048 [28]),
    .O(Mmux_LED511_388)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED513 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003637),
    .I4(\ALU/Sh11 ),
    .I5(Mmux_LED511_388),
    .O(Mmux_LED512_389)
  );
  LUT6 #(
    .INIT ( 64'h5555555544404040 ))
  Mmux_LED514 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED510),
    .I3(Mmux_LED512_389),
    .I4(F_LED_SW_1_IBUF_7),
    .I5(Mmux_LED56),
    .O(LED_4_OBUF_14)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED42 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED2),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<19> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [19]),
    .O(Mmux_LED41_390)
  );
  LUT6 #(
    .INIT ( 64'h7775575522200200 ))
  Mmux_LED45 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(\ALU/n0048 [3]),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<3> ),
    .I5(Mmux_LED43),
    .O(Mmux_LED44_392)
  );
  LUT6 #(
    .INIT ( 64'h5551555155514440 ))
  Mmux_LED47 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED14_349),
    .I3(Mmux_LED41_390),
    .I4(Mmux_LED25_414),
    .I5(Mmux_LED44_392),
    .O(Mmux_LED46_393)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED411 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<11> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [11]),
    .I5(Mmux_LED48),
    .O(Mmux_LED410)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED412 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh70 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<27> ),
    .I5(\ALU/n0048 [27]),
    .O(Mmux_LED411_396)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED413 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003635),
    .I4(\ALU/Sh10 ),
    .I5(Mmux_LED411_396),
    .O(Mmux_LED412_397)
  );
  LUT6 #(
    .INIT ( 64'h5555555544404040 ))
  Mmux_LED414 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED410),
    .I3(Mmux_LED412_397),
    .I4(F_LED_SW_1_IBUF_7),
    .I5(Mmux_LED46_393),
    .O(LED_3_OBUF_15)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  Mmux_LED31 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/Sh82 ),
    .O(Mmux_LED3)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED32 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED3),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<18> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [18]),
    .O(Mmux_LED31_399)
  );
  LUT6 #(
    .INIT ( 64'h7775575522200200 ))
  Mmux_LED35 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(\ALU/n0048 [2]),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<2> ),
    .I5(Mmux_LED33),
    .O(Mmux_LED34_402)
  );
  LUT6 #(
    .INIT ( 64'h5551555155514440 ))
  Mmux_LED37 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED32_400),
    .I3(Mmux_LED31_399),
    .I4(Mmux_LED25_414),
    .I5(Mmux_LED34_402),
    .O(Mmux_LED36)
  );
  LUT5 #(
    .INIT ( 32'h11141440 ))
  Mmux_LED38 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003632),
    .I3(\ALU/Sh11 ),
    .I4(ALU_OP_0_IBUF_5),
    .O(Mmux_LED37_404)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  Mmux_LED39 (
    .I0(Mmux_LED37_404),
    .I1(\ALU/Mmux_F117 ),
    .I2(\ALU/Sh42 ),
    .O(Mmux_LED38_405)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED311 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<10> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [10]),
    .I5(Mmux_LED38_405),
    .O(Mmux_LED310)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED312 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh42 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<26> ),
    .I5(\ALU/n0048 [26]),
    .O(Mmux_LED311_407)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED313 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003635),
    .I4(\ALU/Sh10 ),
    .I5(Mmux_LED311_407),
    .O(Mmux_LED312_408)
  );
  LUT6 #(
    .INIT ( 64'h5555555544404040 ))
  Mmux_LED314 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED310),
    .I3(Mmux_LED312_408),
    .I4(F_LED_SW_1_IBUF_7),
    .I5(Mmux_LED36),
    .O(LED_2_OBUF_16)
  );
  LUT6 #(
    .INIT ( 64'h8080AAA280808880 ))
  Mmux_LED22 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_0_IBUF_5),
    .I2(Mmux_LED2),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<17> ),
    .I4(ALU_OP_1_IBUF_4),
    .I5(\ALU/n0048 [17]),
    .O(Mmux_LED21)
  );
  LUT6 #(
    .INIT ( 64'h7775575522200200 ))
  Mmux_LED25 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(\ALU/n0048 [1]),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<1> ),
    .I5(Mmux_LED23),
    .O(Mmux_LED24_413)
  );
  LUT6 #(
    .INIT ( 64'h5551555155514440 ))
  Mmux_LED27 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED22_411),
    .I3(Mmux_LED21),
    .I4(Mmux_LED25_414),
    .I5(Mmux_LED24_413),
    .O(Mmux_LED26)
  );
  LUT5 #(
    .INIT ( 32'h11141440 ))
  Mmux_LED28 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003633),
    .I3(\ALU/Sh11 ),
    .I4(ALU_OP_0_IBUF_5),
    .O(Mmux_LED27_416)
  );
  LUT6 #(
    .INIT ( 64'h5555555540444000 ))
  Mmux_LED211 (
    .I0(F_LED_SW_1_IBUF_7),
    .I1(Mmux_LED16_351),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<9> ),
    .I3(ALU_OP_0_IBUF_5),
    .I4(\ALU/n0048 [9]),
    .I5(Mmux_LED28_417),
    .O(Mmux_LED210)
  );
  LUT6 #(
    .INIT ( 64'h3B3319112A220800 ))
  Mmux_LED212 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(ALU_OP_1_IBUF_4),
    .I2(\ALU/_n0052 ),
    .I3(\ALU/Sh89_260 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<25> ),
    .I5(\ALU/n0048 [25]),
    .O(Mmux_LED211_419)
  );
  LUT6 #(
    .INIT ( 64'hBBBEBEEA11141440 ))
  Mmux_LED213 (
    .I0(ALU_OP_2_IBUF_3),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(Mram__n003637),
    .I4(\ALU/Sh11 ),
    .I5(Mmux_LED211_419),
    .O(Mmux_LED212_420)
  );
  LUT6 #(
    .INIT ( 64'h5555555544404040 ))
  Mmux_LED214 (
    .I0(F_LED_SW_2_IBUF_6),
    .I1(F_LED_SW_0_IBUF_8),
    .I2(Mmux_LED210),
    .I3(Mmux_LED212_420),
    .I4(F_LED_SW_1_IBUF_7),
    .I5(Mmux_LED26),
    .O(LED_1_OBUF_17)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_4_o3  (
    .I0(\ALU/Sh10 ),
    .I1(Mram__n003637),
    .I2(Mram__n003635),
    .I3(\ALU/Sh11 ),
    .I4(Mram__n003632),
    .I5(Mram__n003631),
    .O(\ALU/A[31]_reduce_nor_4_o3_421 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \ALU/Sh931  (
    .I0(\ALU/Sh10 ),
    .O(\ALU/Sh931_422 )
  );
  LUT6 #(
    .INIT ( 64'h0001010100550155 ))
  \ALU/A[31]_reduce_nor_2_o2  (
    .I0(Mram__n003631),
    .I1(Mram__n003635),
    .I2(Mram__n003637),
    .I3(\ALU/Sh11 ),
    .I4(Mram__n003633),
    .I5(\ALU/Sh10 ),
    .O(\ALU/A[31]_reduce_nor_2_o2_423 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_11_o1  (
    .I0(\ALU/n0048 [1]),
    .I1(\ALU/n0048 [0]),
    .I2(\ALU/n0048 [2]),
    .I3(\ALU/n0048 [3]),
    .I4(\ALU/n0048 [4]),
    .I5(\ALU/n0048 [5]),
    .O(\ALU/A[31]_reduce_nor_11_o1_425 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \ALU/A[31]_reduce_nor_11_o2  (
    .I0(\ALU/A[31]_reduce_nor_11_o1_425 ),
    .I1(\ALU/n0048 [13]),
    .I2(\ALU/n0048 [12]),
    .I3(\ALU/n0048 [14]),
    .I4(\ALU/n0048 [15]),
    .I5(\ALU/n0048 [16]),
    .O(\ALU/A[31]_reduce_nor_11_o2_426 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \ALU/A[31]_reduce_nor_11_o3  (
    .I0(\ALU/n0048 [25]),
    .I1(\ALU/n0048 [24]),
    .I2(\ALU/n0048 [26]),
    .I3(\ALU/n0048 [27]),
    .I4(\ALU/n0048 [28]),
    .O(\ALU/A[31]_reduce_nor_11_o3_427 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_11_o4  (
    .I0(\ALU/n0048 [18]),
    .I1(\ALU/n0048 [17]),
    .I2(\ALU/n0048 [19]),
    .I3(\ALU/n0048 [20]),
    .I4(\ALU/n0048 [21]),
    .I5(\ALU/n0048 [22]),
    .O(\ALU/A[31]_reduce_nor_11_o4_428 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \ALU/A[31]_reduce_nor_11_o5  (
    .I0(\ALU/n0048 [30]),
    .I1(\ALU/n0048 [29]),
    .I2(\ALU/n0048 [31]),
    .O(\ALU/A[31]_reduce_nor_11_o5_429 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_11_o6  (
    .I0(\ALU/n0048 [7]),
    .I1(\ALU/n0048 [6]),
    .I2(\ALU/n0048 [8]),
    .I3(\ALU/n0048 [9]),
    .I4(\ALU/n0048 [10]),
    .I5(\ALU/n0048 [11]),
    .O(\ALU/A[31]_reduce_nor_11_o6_430 )
  );
  LUT6 #(
    .INIT ( 64'h0080000000000000 ))
  \ALU/A[31]_reduce_nor_11_o7  (
    .I0(\ALU/A[31]_reduce_nor_11_o2_426 ),
    .I1(\ALU/A[31]_reduce_nor_11_o3_427 ),
    .I2(\ALU/A[31]_reduce_nor_11_o6_430 ),
    .I3(\ALU/n0048 [23]),
    .I4(\ALU/A[31]_reduce_nor_11_o4_428 ),
    .I5(\ALU/A[31]_reduce_nor_11_o5_429 ),
    .O(\ALU/A[31]_reduce_nor_11_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_14_o1  (
    .I0(\ALU/A[31]_B[31]_sub_13_OUT<1> ),
    .I1(\ALU/A[31]_B[31]_sub_13_OUT<0> ),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<2> ),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<3> ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<4> ),
    .I5(\ALU/A[31]_B[31]_sub_13_OUT<5> ),
    .O(\ALU/A[31]_reduce_nor_14_o1_431 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \ALU/A[31]_reduce_nor_14_o2  (
    .I0(\ALU/A[31]_reduce_nor_14_o1_431 ),
    .I1(\ALU/A[31]_B[31]_sub_13_OUT<13> ),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<12> ),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<14> ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<15> ),
    .I5(\ALU/A[31]_B[31]_sub_13_OUT<16> ),
    .O(\ALU/A[31]_reduce_nor_14_o2_432 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \ALU/A[31]_reduce_nor_14_o3  (
    .I0(\ALU/A[31]_B[31]_sub_13_OUT<25> ),
    .I1(\ALU/A[31]_B[31]_sub_13_OUT<24> ),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<26> ),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<27> ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<28> ),
    .O(\ALU/A[31]_reduce_nor_14_o3_433 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_14_o4  (
    .I0(\ALU/A[31]_B[31]_sub_13_OUT<18> ),
    .I1(\ALU/A[31]_B[31]_sub_13_OUT<17> ),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<19> ),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<20> ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<21> ),
    .I5(\ALU/A[31]_B[31]_sub_13_OUT<22> ),
    .O(\ALU/A[31]_reduce_nor_14_o4_434 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \ALU/A[31]_reduce_nor_14_o5  (
    .I0(\ALU/A[31]_B[31]_sub_13_OUT<30> ),
    .I1(\ALU/A[31]_B[31]_sub_13_OUT<29> ),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<31> ),
    .O(\ALU/A[31]_reduce_nor_14_o5_435 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU/A[31]_reduce_nor_14_o6  (
    .I0(\ALU/A[31]_B[31]_sub_13_OUT<7> ),
    .I1(\ALU/A[31]_B[31]_sub_13_OUT<6> ),
    .I2(\ALU/A[31]_B[31]_sub_13_OUT<8> ),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<9> ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<10> ),
    .I5(\ALU/A[31]_B[31]_sub_13_OUT<11> ),
    .O(\ALU/A[31]_reduce_nor_14_o6_436 )
  );
  LUT6 #(
    .INIT ( 64'h0080000000000000 ))
  \ALU/A[31]_reduce_nor_14_o7  (
    .I0(\ALU/A[31]_reduce_nor_14_o2_432 ),
    .I1(\ALU/A[31]_reduce_nor_14_o3_433 ),
    .I2(\ALU/A[31]_reduce_nor_14_o6_436 ),
    .I3(\ALU/A[31]_B[31]_sub_13_OUT<23> ),
    .I4(\ALU/A[31]_reduce_nor_14_o4_434 ),
    .I5(\ALU/A[31]_reduce_nor_14_o5_435 ),
    .O(\ALU/A[31]_reduce_nor_14_o )
  );
  IBUF   AB_SW_2_IBUF (
    .I(AB_SW[2]),
    .O(AB_SW_2_IBUF_0)
  );
  IBUF   AB_SW_1_IBUF (
    .I(AB_SW[1]),
    .O(AB_SW_1_IBUF_1)
  );
  IBUF   AB_SW_0_IBUF (
    .I(AB_SW[0]),
    .O(AB_SW_0_IBUF_2)
  );
  IBUF   ALU_OP_2_IBUF (
    .I(ALU_OP[2]),
    .O(ALU_OP_2_IBUF_3)
  );
  IBUF   ALU_OP_1_IBUF (
    .I(ALU_OP[1]),
    .O(ALU_OP_1_IBUF_4)
  );
  IBUF   ALU_OP_0_IBUF (
    .I(ALU_OP[0]),
    .O(ALU_OP_0_IBUF_5)
  );
  IBUF   F_LED_SW_2_IBUF (
    .I(F_LED_SW[2]),
    .O(F_LED_SW_2_IBUF_6)
  );
  IBUF   F_LED_SW_1_IBUF (
    .I(F_LED_SW[1]),
    .O(F_LED_SW_1_IBUF_7)
  );
  IBUF   F_LED_SW_0_IBUF (
    .I(F_LED_SW[0]),
    .O(F_LED_SW_0_IBUF_8)
  );
  OBUF   LED_7_OBUF (
    .I(LED_7_OBUF_11),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_6_OBUF_12),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_13),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_4_OBUF_14),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_OBUF_15),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_16),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_OBUF_17),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_18),
    .O(LED[0])
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  Mmux_LED871 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED81_356),
    .I3(Mmux_LED84_358),
    .I4(Mmux_LED14_349),
    .O(Mmux_LED86)
  );
  LUT5 #(
    .INIT ( 32'h55555140 ))
  Mmux_LED671 (
    .I0(F_LED_SW_0_IBUF_8),
    .I1(F_LED_SW_1_IBUF_7),
    .I2(Mmux_LED61_372),
    .I3(Mmux_LED64_374),
    .I4(Mmux_LED52_382),
    .O(Mmux_LED66)
  );
  LUT6 #(
    .INIT ( 64'hD5F791B3C4E680A2 ))
  \ALU/Mmux_F_3  (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_0_IBUF_5),
    .I2(\ALU/Madd_n0048_lut [31]),
    .I3(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<15>_157 ),
    .I4(\ALU/A[31]_B[31]_sub_13_OUT<0> ),
    .I5(\ALU/n0048 [0]),
    .O(\ALU/Mmux_F_3_27 )
  );
  LUT5 #(
    .INIT ( 32'h44454440 ))
  \ALU/Sh801  (
    .I0(Mram__n003635),
    .I1(\ALU/Sh11 ),
    .I2(Mram__n003632),
    .I3(Mram__n003633),
    .I4(\ALU/Sh10 ),
    .O(\ALU/Sh80 )
  );
  LUT6 #(
    .INIT ( 64'h0200000000000000 ))
  Mmux_LED46 (
    .I0(ALU_OP_0_IBUF_5),
    .I1(Mram__n003635),
    .I2(\ALU/_n0052 ),
    .I3(ALU_OP_1_IBUF_4),
    .I4(ALU_OP_2_IBUF_3),
    .I5(\ALU/Sh1 ),
    .O(Mmux_LED25_414)
  );
  LUT5 #(
    .INIT ( 32'hAEEAA22A ))
  \ALU/Sh5611  (
    .I0(\ALU/Sh10 ),
    .I1(Mram__n003633),
    .I2(Mram__n003632),
    .I3(Mram__n003635),
    .I4(\ALU/Sh11 ),
    .O(\ALU/Sh561 )
  );
  LUT5 #(
    .INIT ( 32'h55411400 ))
  \ALU/Sh851  (
    .I0(Mram__n003635),
    .I1(Mram__n003632),
    .I2(Mram__n003633),
    .I3(\ALU/Sh10 ),
    .I4(\ALU/Sh11 ),
    .O(\ALU/Sh85 )
  );
  LUT5 #(
    .INIT ( 32'hFEBA5410 ))
  \ALU/Sh89  (
    .I0(Mram__n003635),
    .I1(Mram__n003632),
    .I2(\ALU/Sh10 ),
    .I3(\ALU/Sh11 ),
    .I4(\ALU/Sh1 ),
    .O(\ALU/Sh89_260 )
  );
  LUT5 #(
    .INIT ( 32'h44454440 ))
  \ALU/Sh821  (
    .I0(Mram__n003635),
    .I1(\ALU/Sh10 ),
    .I2(Mram__n003632),
    .I3(Mram__n003633),
    .I4(\ALU/Sh11 ),
    .O(\ALU/Sh82 )
  );
  LUT6 #(
    .INIT ( 64'h597B7B59486A6A48 ))
  \ALU/Mmux_F_4  (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_0_IBUF_5),
    .I2(\ALU/A[31]_B[31]_or_6_OUT<0> ),
    .I3(Mram__n0036),
    .I4(Mram__n003632),
    .I5(\ALU/A[31]_B[31]_and_0_OUT<0> ),
    .O(\ALU/Mmux_F_4_28 )
  );
  LUT5 #(
    .INIT ( 32'h11011000 ))
  \ALU/Sh681  (
    .I0(Mram__n003635),
    .I1(Mram__n003632),
    .I2(Mram__n003633),
    .I3(\ALU/Sh10 ),
    .I4(\ALU/Sh11 ),
    .O(\ALU/Sh68 )
  );
  LUT6 #(
    .INIT ( 64'h5551151144400400 ))
  \ALU/Sh711  (
    .I0(Mram__n003635),
    .I1(Mram__n003633),
    .I2(Mram__n003632),
    .I3(\ALU/Sh11 ),
    .I4(Mram__n0036),
    .I5(\ALU/Sh10 ),
    .O(\ALU/Sh71 )
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<30>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [30])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<29>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [29])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<28>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [28])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<27>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [27])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<26>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [26])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<25>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [25])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<24>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [24])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<23>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [23])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<22>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [22])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<21>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [21])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<20>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [20])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<19>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [19])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<18>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [18])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<17>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [17])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<16>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [16])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<15>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [15])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<14>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [14])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<13>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [13])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<12>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [12])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<11>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [11])
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \ALU/Madd_n0048_lut<10>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  \ALU/Madd_n0048_lut<9>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Madd_n0048_lut [9])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<8>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [8])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<7>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<6>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<5>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<4>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<3>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Madd_n0048_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h64 ))
  \ALU/Madd_n0048_lut<2>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Madd_n0048_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<30>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [30])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<29>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [29])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<28>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [28])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<27>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [27])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<26>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [26])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<25>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [25])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<24>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [24])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<23>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [23])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<22>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [22])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<21>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [21])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<20>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [20])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<19>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [19])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<18>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [18])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<17>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [17])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<16>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [16])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<15>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<14>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [14])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<13>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [13])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<12>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [12])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<11>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [11])
  );
  LUT3 #(
    .INIT ( 8'h1D ))
  \ALU/Msub_n0041_lut<10>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [10])
  );
  LUT3 #(
    .INIT ( 8'h9B ))
  \ALU/Msub_n0041_lut<9>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [9])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<8>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<7>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<6>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<5>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<4>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<3>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h9B ))
  \ALU/Msub_n0041_lut<2>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<30>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<30>_196 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<29>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<29>_198 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<28>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<28>_200 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<27>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<27>_202 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<26>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<26>_204 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<25>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<25>_206 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<24>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<24>_208 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<23>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<23>_210 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<22>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<22>_212 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<21>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<21>_214 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<20>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<20>_216 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<19>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<19>_218 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<18>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<18>_220 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<17>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<17>_222 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<16>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<16>_224 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<15>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<15>_226 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<14>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<14>_228 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<13>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<13>_230 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<12>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<12>_232 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<11>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<11>_234 )
  );
  LUT3 #(
    .INIT ( 8'h1D ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<10>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<10>_236 )
  );
  LUT3 #(
    .INIT ( 8'h9B ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<9>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<9>_238 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<8>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<8>_240 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<7>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<7>_242 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<6>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<6>_244 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<5>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<5>_246 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<4>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<4>_248 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<3>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<3>_250 )
  );
  LUT3 #(
    .INIT ( 8'h9B ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<2>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<2>_252 )
  );
  LUT5 #(
    .INIT ( 32'h65686858 ))
  Mmux_LED44 (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_0_IBUF_5),
    .I2(AB_SW_2_IBUF_0),
    .I3(AB_SW_0_IBUF_2),
    .I4(AB_SW_1_IBUF_1),
    .O(Mmux_LED43)
  );
  LUT5 #(
    .INIT ( 32'h85666858 ))
  Mmux_LED34 (
    .I0(ALU_OP_1_IBUF_4),
    .I1(ALU_OP_0_IBUF_5),
    .I2(AB_SW_2_IBUF_0),
    .I3(AB_SW_1_IBUF_1),
    .I4(AB_SW_0_IBUF_2),
    .O(Mmux_LED33)
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<11>1  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<11> )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi111  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi11 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<10>1  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<10> )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi101  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi10 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<8>1  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<8> )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi81  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi8 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \ALU/Madd_n0048_lut<1>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_n0041_lut<1>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_n0041_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_n0041_lut<0>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_n0041_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<1>  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<1>_254 )
  );
  LUT3 #(
    .INIT ( 8'hD7 ))
  \ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<0>  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Msub_A[31]_B[31]_sub_13_OUT_lut<0>_256 )
  );
  LUT3 #(
    .INIT ( 8'h7A ))
  \ALU/A[31]_B[31]_or_6_OUT<0>1  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .O(\ALU/A[31]_B[31]_or_6_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h26 ))
  \ALU/A[31]_B[31]_and_0_OUT<0>1  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/A[31]_B[31]_and_0_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h39396862 ))
  Mmux_LED24 (
    .I0(AB_SW_2_IBUF_0),
    .I1(ALU_OP_1_IBUF_4),
    .I2(ALU_OP_0_IBUF_5),
    .I3(AB_SW_1_IBUF_1),
    .I4(AB_SW_0_IBUF_2),
    .O(Mmux_LED23)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \ALU/Madd_n0048_lut<0>1  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Madd_n0048_lut<0>1_454 )
  );
  LUT6 #(
    .INIT ( 64'h0404000404000000 ))
  Mmux_LED71 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003635),
    .I3(Mram__n003632),
    .I4(\ALU/Sh10 ),
    .I5(\ALU/Sh11 ),
    .O(Mmux_LED5)
  );
  LUT6 #(
    .INIT ( 64'h0404000404000000 ))
  Mmux_LED64 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003635),
    .I3(Mram__n003632),
    .I4(\ALU/Sh1 ),
    .I5(\ALU/Sh11 ),
    .O(Mmux_LED63_373)
  );
  LUT6 #(
    .INIT ( 64'h0404000404000000 ))
  Mmux_LED41 (
    .I0(\ALU/_n0052 ),
    .I1(ALU_OP_1_IBUF_4),
    .I2(Mram__n003635),
    .I3(Mram__n003632),
    .I4(\ALU/Sh11 ),
    .I5(\ALU/Sh10 ),
    .O(Mmux_LED2)
  );
  LUT6 #(
    .INIT ( 64'h1111111100100111 ))
  \ALU/A[31]_reduce_nor_20_o3  (
    .I0(\ALU/Sh70 ),
    .I1(\ALU/Sh71 ),
    .I2(Mram__n003632),
    .I3(\ALU/Sh1 ),
    .I4(\ALU/Sh11 ),
    .I5(Mram__n003635),
    .O(\ALU/A[31]_reduce_nor_20_o3_424 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi91  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi9 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi71  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi7 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi31  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi3 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi21  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi2_187 )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<9>1  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<9> )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<7>1  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<7> )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<3>1  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<3> )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<2>1  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<2> )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi2  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lutdi )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<0>1  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_lut<0> )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ALU/Sh12  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .O(\ALU/Sh1 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA880080808000 ))
  \ALU/A[31]_reduce_nor_9_o7_SW1  (
    .I0(Mram__n003631),
    .I1(Mram__n003635),
    .I2(Mram__n003637),
    .I3(Mram__n003632),
    .I4(\ALU/Sh11 ),
    .I5(\ALU/Sh10 ),
    .O(N23)
  );
  LUT4 #(
    .INIT ( 16'h2822 ))
  \ALU/A[31]_reduce_nor_2_o4  (
    .I0(\ALU/A[31]_reduce_nor_2_o2_423 ),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_1_IBUF_1),
    .I3(AB_SW_2_IBUF_0),
    .O(\ALU/A[31]_reduce_nor_2_o )
  );
  LUT3 #(
    .INIT ( 8'h1D ))
  \ALU/A[31]_reduce_nor_6_o  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .O(\ALU/A[31]_reduce_nor_6_o_272 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \ALU/A[31]_reduce_nor_20_o4_SW0  (
    .I0(\ALU/A[31]_reduce_nor_20_o3_424 ),
    .I1(\ALU/Sh68 ),
    .I2(\ALU/Sh80 ),
    .I3(\ALU/Sh82 ),
    .I4(\ALU/Sh1 ),
    .I5(\ALU/Sh85 ),
    .O(N27)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \ALU/Sh91  (
    .I0(AB_SW_1_IBUF_1),
    .I1(AB_SW_2_IBUF_0),
    .O(\ALU/Sh70 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  Mmux_LED81 (
    .I0(AB_SW_2_IBUF_0),
    .I1(ALU_OP_1_IBUF_4),
    .I2(AB_SW_1_IBUF_1),
    .I3(\ALU/_n0052 ),
    .O(Mmux_LED73)
  );
  LUT5 #(
    .INIT ( 32'hFFFF2820 ))
  Mmux_LED811 (
    .I0(\ALU/Mmux_F117 ),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .I3(AB_SW_1_IBUF_1),
    .I4(Mmux_LED14_349),
    .O(Mmux_LED810)
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  Mmux_LED59 (
    .I0(\ALU/Mmux_F117 ),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .I3(Mmux_LED32_400),
    .O(Mmux_LED58)
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  Mmux_LED49 (
    .I0(\ALU/Mmux_F117 ),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .I3(Mmux_LED14_349),
    .O(Mmux_LED48)
  );
  LUT5 #(
    .INIT ( 32'hFFFF2000 ))
  Mmux_LED29 (
    .I0(\ALU/Mmux_F117 ),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .I3(AB_SW_1_IBUF_1),
    .I4(Mmux_LED27_416),
    .O(Mmux_LED28_417)
  );
  LUT6 #(
    .INIT ( 64'h93EEFFEE93FFFFFF ))
  \ALU/Mmux_ZF_4_SW0  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .I3(ALU_OP_1_IBUF_4),
    .I4(N23),
    .I5(\ALU/A[31]_reduce_nor_4_o3_421 ),
    .O(N29)
  );
  LUT5 #(
    .INIT ( 32'h4540EFEA ))
  \ALU/Mmux_ZF_4  (
    .I0(ALU_OP_0_IBUF_5),
    .I1(\ALU/A[31]_reduce_nor_6_o_272 ),
    .I2(ALU_OP_1_IBUF_4),
    .I3(\ALU/A[31]_reduce_nor_2_o ),
    .I4(N29),
    .O(\ALU/Mmux_ZF_4_30 )
  );
  LUT4 #(
    .INIT ( 16'h882A ))
  \ALU/Sh932  (
    .I0(\ALU/Sh931_422 ),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .I3(AB_SW_2_IBUF_0),
    .O(\ALU/Sh93 )
  );
  LUT4 #(
    .INIT ( 16'h5F40 ))
  \ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<15>  (
    .I0(AB_SW_0_IBUF_2),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_2_IBUF_0),
    .I3(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<11>_158 ),
    .O(\ALU/Mcompar_A[31]_B[31]_LessThan_16_o_cy<15>_157 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF8280 ))
  Mmux_LED16 (
    .I0(\ALU/Mmux_F117 ),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_1_IBUF_1),
    .I3(AB_SW_0_IBUF_2),
    .I4(Mmux_LED14_349),
    .O(Mmux_LED15_350)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFEFFFF ))
  \ALU/A[31]_reduce_nor_20_o8_SW0  (
    .I0(\ALU/Sh95 ),
    .I1(\ALU/Sh42 ),
    .I2(\ALU/Sh92_259 ),
    .I3(\ALU/Sh93 ),
    .I4(N27),
    .I5(\ALU/Sh89_260 ),
    .O(N31)
  );
  LUT4 #(
    .INIT ( 16'h1808 ))
  \ALU/Sh92  (
    .I0(AB_SW_2_IBUF_0),
    .I1(AB_SW_1_IBUF_1),
    .I2(AB_SW_0_IBUF_2),
    .I3(\ALU/Sh561 ),
    .O(\ALU/Sh92_259 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF2000 ))
  Mmux_LED69 (
    .I0(\ALU/Mmux_F117 ),
    .I1(AB_SW_0_IBUF_2),
    .I2(AB_SW_2_IBUF_0),
    .I3(AB_SW_1_IBUF_1),
    .I4(Mmux_LED22_411),
    .O(Mmux_LED68_376)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF10114445 ))
  \ALU/A[31]_reduce_nor_20_o8  (
    .I0(N31),
    .I1(AB_SW_2_IBUF_0),
    .I2(AB_SW_0_IBUF_2),
    .I3(\ALU/Sh42 ),
    .I4(AB_SW_1_IBUF_1),
    .I5(\ALU/_n0052 ),
    .O(\ALU/A[31]_reduce_nor_20_o )
  );
  LUT5 #(
    .INIT ( 32'hAAABAAA8 ))
  \ALU/Sh951  (
    .I0(\ALU/Sh10 ),
    .I1(Mram__n003635),
    .I2(Mram__n003632),
    .I3(Mram__n003633),
    .I4(Mram__n003631),
    .O(\ALU/Sh95 )
  );
endmodule


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

