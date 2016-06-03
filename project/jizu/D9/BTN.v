`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:17 05/20/2016 
// Design Name: 
// Module Name:    BTN 
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
module BTN(clk_100MHz,BTN,BTN_out
    );
	 input clk_100MHz;
	 input BTN;
	 output reg BTN_out;

	 reg BTN1,BTN2;
	 wire BTN_down;
	 reg [21:0]cnt;
	 reg BTN_20ms_1,BTN_20ms_2;
	 wire BTN_up;
	 
	 always @(posedge clk_100MHz)
	 begin
		BTN1<=BTN;
		BTN2<=BTN1;
	 end
	 assign BTN_down = (~BTN2)&&BTN1;
	 always@(posedge clk_100MHz)
	 begin
		if(BTN_down)
		begin
			cnt<=22'b0;
			BTN_out<=1'b1;
		end
		else cnt<=cnt+1'b1;
		if(cnt==22'h20000) BTN_20ms_1<=BTN;
		BTN_20ms_2<=BTN_20ms_1;
		if(BTN_up)BTN_out<=1'b0;
	 end
	 assign BTN_up = BTN_20ms_2 && (~BTN_20ms_1);
endmodule
