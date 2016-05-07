`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:33 12/23/2015 
// Design Name: 
// Module Name:    demo14 
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
module demo14(OE,CLR,CLK,D,Q);

	input OE,CLR,CLK;
	input [3:0]D;
	output reg[3:0]Q;
	
	always@(posedge CLK)
		begin
			if(OE)	
				Q<=4'bzzzz;
			else if(CLR)
				Q<=4'b0000;
			else if(!CLK)
				Q<=Q;
			else 
				Q<=D;
		end
endmodule
