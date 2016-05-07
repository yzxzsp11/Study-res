`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:57 11/30/2015 
// Design Name: 
// Module Name:    demo05 
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
module demo05(A,B,Y);

	input A,B;
	output Y;
	
	wire[3:0] A,B;
	reg[2:0] Y;
	
	always@(*)
		begin
		
		if(A>B)			Y=3'b100;
		else if(A<B) 	Y=3'b001;
		else 				Y=3'b010;
		
		end
	

endmodule
