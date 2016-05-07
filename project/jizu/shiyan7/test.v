`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:59:45 05/25/2015 
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
module test(rst,clk,choose,LED
    );
input clk;
input rst;
input [1:0]choose;
output reg [7:0]LED;
reg [31:0]PC;
wire [31:0]Inst_code;
always@(*)
begin
case(choose)
	2'b00:LED=Inst_code[7:0];
	2'b01:LED=Inst_code[15:8];
	2'b10:LED=Inst_code[23:16];
	2'b11:LED=Inst_code[31:24];
	endcase		
end
Inst_Rom ROM (
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
