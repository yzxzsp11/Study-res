`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:21 06/08/2015 
// Design Name: 
// Module Name:    EXP_RI_CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module EXP_RI_CPU(Step_In,rst,clk_100M,LED,SW);

input Step_In,rst,clk_100M;
input [3:0]SW;
output reg [7:0]LED;
wire [31:0]ALU_F,Mem_R_Data;
wire ZF,OF;

      BTN_OK uut1(
      .clk_100MHz(clk_100M),
		.BTN(Step_In),
		.BTN_Out(clk)
		);
		
		RI_CPU uut2(clk,rst,clk_100M,ALU_F,Mem_R_Data,ZF,OF);
		
		
always@(*)
begin
 case(SW[3:0])
 4'b0000:LED=ALU_F[7:0];
 4'b0001:LED=ALU_F[15:8];
 4'b0010:LED=ALU_F[23:16];
 4'b0011:LED=ALU_F[31:24];
 4'b0100:LED=Mem_R_Data[7:0];
 4'b0101:LED=Mem_R_Data[15:8];
 4'b0110:LED=Mem_R_Data[23:16];
 4'b0111:LED=Mem_R_Data[31:24];
 4'b1000:begin LED[7]=OF;LED[0]=ZF;LED[6:1]=6'b0;end
 default:LED=8'b0;
 endcase
 end
 

endmodule
