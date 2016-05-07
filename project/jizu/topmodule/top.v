`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:17 05/05/2015 
// Design Name: 
// Module Name:    top 
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
module top(Addr,R_Addr_A,R_Addr_B,Write_Reg,Data,Clk,Reset,ALU_OP,ZF,OF
    );
input [4:0]Addr,R_Addr_A,R_Addr_B;
input Write_Reg;
input Clk;
input Reset;
input [2:0]ALU_OP;
input [31:0]Data;
output ZF,OF;
wire [31:0]F;
wire [31:0]A,B;
jicunqi jicunqi(Addr,R_Addr_A,R_Addr_B,Write_Reg,R_Data_A,R_Data_B,Data,Clk,Reset);
assign A=R_Data_A;
assign B=R_Data_B;
ALU ALU(A,B,ALU_OP,F,ZF,OF);
assign F=Data;

endmodule

