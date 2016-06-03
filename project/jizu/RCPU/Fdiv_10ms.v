`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:14 05/16/2016 
// Design Name: 
// Module Name:    Fdiv_10ms 
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
module Fdiv_10ms(
		input rst,
		input clk,
		output reg clk_10ms
    );
	 reg [19:0]counter;
	 always@(posedge rst,posedge clk)begin
			if(rst)begin
				counter<=0;
				clk_10ms<=0;
			end
			else if(counter==20'b1000_0000_0000_0000_0000)begin
				counter<=20'b0;
				clk_10ms<=~clk_10ms;
			end
			else
				counter<=counter+1;
	 end

endmodule
