`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:29 12/23/2015 
// Design Name: 
// Module Name:    demo13 
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
module demo13(MR,Load,EN,CLK,Q,CO,D,Up_Dn);
	input MR,Load,EN,CLK,Up_Dn;
	input [3:0]D;
	output reg[3:0]Q; 
	output reg CO;
	always@(posedge CLK)
		begin
			if(MR)	
				begin 
					Q<=4'b0000;
					CO<=0;
				end
			else if(!Load) 
				begin 
					Q<=D;
					CO<=0;
				end
			else if(!EN) 
				Q<=Q;
			else if(!Up_Dn)
				begin
					if(Q==4'b1111)
						CO<=1;
					{CO,Q}<=Q+1;
				end
			else 
				begin
					if(Q==4'b0000)
						CO<=1;
					{CO,Q}<=Q-1;
				end	
		end
endmodule
