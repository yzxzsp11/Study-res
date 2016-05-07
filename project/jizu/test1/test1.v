`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:33 03/25/2016 
// Design Name: 
// Module Name:    test1 
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
module test1(A,B,C0,C1,F);

	input A,B,C0;
	output C1,F;
	wire A,B,C0,C1,F;
	wire s1,s2,s3;
	
	xor u1(s1,A,B),
		u2(F,s1,C0);
	and u3(s2,A,B),
		u4(s3,s1,C0);
	or u5(C1,s2,s3);


endmodule
