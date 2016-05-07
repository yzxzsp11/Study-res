`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:10 12/09/2015 
// Design Name: 
// Module Name:    demo09 
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
module demo09(D,PRE,CLR,CLK,Q,Qn);

	input D,PRE,CLR,CLK;
	output reg Q,Qn;
	
	always@(negedge PRE or negedge CLR or posedge CLK)
		if(!PRE)
			begin
			Q <= 1'b1;
			Qn <= 1'b0;
			end
		else if(!CLR)
			begin
			Q <= 1'b0;
			Qn <= 1'b1;
			end
		else
			begin
			Q <= D;
			Qn <= ~D;
			end

endmodule
