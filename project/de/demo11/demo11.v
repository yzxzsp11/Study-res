`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:06 12/23/2015 
// Design Name: 
// Module Name:    demo11 
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
module demo11(MR,Load,EN,CLK,Q,CO,D);
	input MR,Load,EN,CLK;
	input [3:0]D;
	output reg[3:0]Q; 
	output reg CO;
	always@(posedge CLK,negedge MR)
		begin
			if(!MR)	
				begin 
					Q<=4'b0000;
					CO<=0;
				end
			else if(!Load)
				Q<=D;
			else if(!EN)
				Q<=Q;
			else
				{CO,Q}<=Q+1;
		end
endmodule