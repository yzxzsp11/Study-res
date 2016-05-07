`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:40 06/05/2015 
// Design Name: 
// Module Name:    test 
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
module test(rst,clk,Inst_code
    );
input clk;
input rst;
reg [31:0]PC;
output[31:0]Inst_code;
ROM_B ROM (
  .clka(clk), // input clka
  .addra(PC[7:2]), // input [5 : 0] addra
  .douta(Inst_code) // output [31 : 0] douta
);

always@(negedge clk or posedge rst)
begin
if(rst)
	begin
	PC<=32'h0000_0000;
	end
	else
	begin
	PC<=PC+4;
	end
end	
	
endmodule