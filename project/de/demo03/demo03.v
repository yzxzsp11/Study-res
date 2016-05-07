`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:26 11/20/2015 
// Design Name: 
// Module Name:    demo03 
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
module demo03(G1,G2A,G2B,C,B,A,Y);

	input G1,G2A,G2B,C,B,A;
	output Y;
	
	wire G1,G2A,G2B,C,B,A;
	reg[7:0] Y;
	
	always@(*)
		if(G1==1&&G2A==1&&G2B==1)
			begin
			
			if(C==0&&B==0&&A==0)				Y=8'b00000001;
			else if(C==0&&B==0&&A==1)		Y=8'b00000010;
			else if(C==0&&B==1&&A==0)		Y=8'b00000100;
			else if(C==0&&B==1&&A==1)		Y=8'b00001000;
			else if(C==1&&B==0&&A==0)		Y=8'b00010000;
			else if(C==1&&B==0&&A==1)		Y=8'b00100000;
			else if(C==1&&B==1&&A==0)		Y=8'b01000000;
			else if(C==1&&B==1&&A==1)		Y=8'b10000000;
			else									Y=8'b00000000;
			
			end
		else
			Y=8'b00000000;

endmodule
