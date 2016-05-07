`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:39 11/30/2015 
// Design Name: 
// Module Name:    demo06 
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
module demo06(A,B,C0,C4,F);

	input[3:0] A,B;
	input C0;
	output[3:0] F;
	output C4;
	
	assign {C4,F}=A+B+C0;
		
endmodule
