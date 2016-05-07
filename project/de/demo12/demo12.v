`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:35 12/23/2015 
// Design Name: 
// Module Name:    demo12 
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
module demo12(MR,EN,CLK,Q,CO);
	input MR,EN,CLK;
	output reg [3:0]Q;
	output reg CO;
	always@(posedge CLK ,negedge MR)
	if(!MR)
	begin 
		Q<=4'b0000;
		CO<=1'b0;
	end
	else if(!EN)
     begin
		Q<=Q;
		CO<=CO;
     end
	else
	  begin
		if(Q==4'b0000)
			begin
				Q<=4'b1001;
				CO<=1;
			end
		else
			begin
				Q<=Q-1;
				CO<=0;
			end
	  end
endmodule