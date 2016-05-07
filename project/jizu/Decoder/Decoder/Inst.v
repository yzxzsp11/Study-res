`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:54 05/21/2015 
// Design Name: 
// Module Name:    Inst 
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
module Inst(input clk,input rst,output [31:0]inst_code
    );
reg [31:0]pc;

always@(negedge clk or posedge rst)
begin
 if(rst)
 pc<=32'h0000_0000;
 else
 pc<=pc+4;
 end
 
 Inst_ROM MY_ROM(
 
 .clka(clk), 	 
 .addra(pc[7:2]), 	 
 .douta(inst_code) 
 );
endmodule
