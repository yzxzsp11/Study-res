`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:46 12/23/2015 
// Design Name: 
// Module Name:    demo15 
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
module demo15(OE,S,CLK,D,Q);
	input OE,CLK;
	input [1:0]S;
	input [3:0]D;
	output reg [3:0]Q;
	always@(posedge CLK )
		begin
			if(OE)	Q<=4'bzzzz;
			else if(S==2'b00)	Q<=Q;
			else if(S==2'b01) begin Q<={Q[2:0],Q[3]};end
			else if(S==2'b10) begin Q<={Q[0],Q[3:1]};end
			else if(S==2'b11)	 Q<=D;
		end	
endmodule

