`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:30 11/18/2015 
// Design Name: 
// Module Name:    demo02 
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
module demo02(A,B,C,D,EN,S,Y);

	input A,B,C,D,EN,S;
	output Y;
	
	wire EN;
	wire[1:0] A,B,C,D,S,Y;
	
	assign Y[1]=(EN&(~S[1])&(~S[0])&A[1])|(EN&(~S[1])&(S[0])&B[1])|(EN&(S[1])&(~S[0])&C[1])|(EN&(S[1])&(S[0])&D[1]);
	assign Y[0]=(EN&(~S[1])&(~S[0])&A[0])|(EN&(~S[1])&(S[0])&B[0])|(EN&(S[1])&(~S[0])&C[0])|(EN&(S[1])&(S[0])&D[0]);

endmodule