`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:24 05/20/2016 
// Design Name: 
// Module Name:    Top_Module 
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
module Top_Module(rst,clk_100MHz,Setup_BTN,SW,LED
    );
	 input rst;//«Â¡„
	 input clk_100MHz;
	 input [3:0]SW;
	 input Setup_BTN;
	 output reg [7:0]LED;
	 wire clk;
	 wire [31:0]ALU_F,M_R_Data;
	 
	 BTN BTN_OK(clk_100MHz,Setup_BTN,clk);
	
	 CPU My_CPU (clk,rst,ZF,OF,ALU_F,M_R_Data);
	 always@(*)
	 begin
		case(SW)
		4'b0000:LED = ALU_F[7:0];
		4'B0001:LED = ALU_F[15:8];
		4'B0010:LED = ALU_F[23:16];
		4'B0011:LED = ALU_F[31:24];
		4'B0100:LED = M_R_Data[7:0];
		4'B0101:LED = M_R_Data[15:8];
		4'B0110:LED = M_R_Data[23:16];
		4'B0111:LED = M_R_Data[31:24];
		4'B1000:begin LED[0] = ZF;LED[7] = OF;LED[6:1]=0; end
		endcase
	 end
endmodule
