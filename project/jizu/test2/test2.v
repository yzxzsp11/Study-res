`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:02:53 03/25/2016 
// Design Name: 
// Module Name:    test2 
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
module test2(A,B,C0,C4,F);

	input[3:0] A,B;
	input C0;
	output[3:0] F;
	output C4;
	wire C1,C2,C3;
	
	assign C1 = (A[0]&B[0])+((A[0]+B[0])&C0);
	assign C2 = (A[1]&B[1])+((A[1]+B[1])&C1);
	assign C3 = (A[2]&B[2])+((A[2]+B[2])&C2);
	assign C4 = (A[3]&B[3])+((A[3]+B[3])&C3);
	assign F[0] = A[0]+B[0]+C0;
	assign F[1] = A[1]+B[1]+C1;
	assign F[2] = A[2]+B[2]+C2;
	assign F[3] = A[3]+B[3]+C3;
	


endmodule
