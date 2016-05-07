`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:16 12/02/2015 
// Design Name: 
// Module Name:    demo07 
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
module demo07(A,B,C0,AS,C4,ZF,CF,F);
	
	input A,B,C0,AS;
	output C4,ZF,CF,F;
	
	wire C0,AS;
	wire[3:0] A,B;
	reg C4,ZF,CF;
	reg[3:0] F;
	
	always@(*)
		begin
		
		if(AS==0)
			begin
			{C4,F}=A+B+C0;
			CF=C4;
			end
		else
			begin 
			{C4,F}=A-B-C0;
			CF=~C4;
			end
		if(F==4'b0000)
			ZF=1;
		else
			ZF=0;
			
			
		end

endmodule
