`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:52 05/14/2016 
// Design Name: 
// Module Name:    Fetch_Instruction 
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
module Fetch_Instruction(
    input rst,
    input clk,
    output [31:0] Inst_code
    );
	 
	 reg [31:0] PC;
	 
	 Ins_ROM ins_rom (
	 .clka(clk), // input clka
	 .addra(PC[7:2]), // input [5 : 0] addra
	 .douta(Inst_code) // output [31 : 0] douta
	 );
	 
	 always@(negedge clk or posedge rst)
	 begin
		if(rst)
			PC = 32'h0;
		else
			PC = PC + 32'h4;
	 end

endmodule
