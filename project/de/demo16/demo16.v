`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:02 12/23/2015 
// Design Name: 
// Module Name:    demo16 
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
module demo16(clk,sw,rst,clk_out);

input clk,rst;
input[1:0] sw;
output reg clk_out;
wire clk,rst;
reg[8:0] counter1,counter2,counter3;
reg [1:0]ct;
always@(posedge clk)
begin
	if(sw==2'b00)
	begin
		if(rst)
		begin
			counter1<=9'd0;
			counter2<=9'd0;
			counter3<=9'd0;
			clk_out<=1'b0;
			ct<=2'b00;
		end
		else if(counter3==9'd0100)
		begin
			counter3<=9'd0;
			clk_out<=~clk_out;
		end
		else if(counter2==9'd0500)
		begin
			counter2<=9'd0;
			counter3<=counter3+1'd01;
		end
		else if(counter1==9'd0500)
		begin
			counter1<=9'd0;
			counter2<=counter2+1'd01;
		end
		else
		counter1<=counter1+1'b1;
	end
	else	if(sw==2'b01)
	begin
		if(rst)
		begin
			counter1<=9'd0;
			counter2<=9'd0;
			counter3<=9'd0;
			clk_out<=1'b0;
			ct<=2'b00;
		end
		else if(counter3==9'd200)
		begin
			counter3<=9'd0;
			clk_out<=~clk_out;
		end
		else if(counter2==9'd0500)
		begin
			counter2<=9'd0;
			counter3<=counter3+1'd01;
		end
		else if(counter1==9'd0500)
		begin
			counter1<=9'd0;
			counter2<=counter2+1'd01;
		end
		else
		counter1<=counter1+1'b1;
	end
	else	if(sw==2'b10)
	begin
		if(rst)
		begin
			counter1<=9'd0;
			counter2<=9'd0;
			counter3<=9'd0;
			ct<=2'b00;
			clk_out<=1'b0;
		end
		else if(counter3==9'd100)
		begin
			counter3<=9'd0;
			clk_out<=~clk_out;
		end
		else if(counter2==9'd0500)
		begin
			counter2<=9'd0;
			counter3<=counter3+1'd01;
		end
		else if(counter1==9'd0500)
		begin
			counter1<=9'd0;
			counter2<=counter2+1'd01;
		end
		else
		counter1<=counter1+1'b1;
	end
	else
		begin
		if(rst)
		begin
			counter1<=9'd0;
			counter2<=9'd0;
			counter3<=9'd0;
			ct<=2'b00;
			clk_out<=1'b0;
		end
		else if(ct==2'b11)
		begin
			clk_out<=1'b1;
		end
		else if(counter3==9'd0400&&ct!=2'b11)
		begin
			counter3<=0;
			ct<=ct+2'b01;
		end
		else if(counter2==9'd0500)
		begin
			counter2<=9'd0;
			counter3<=counter3+1'd01;
		end
		else if(counter1==9'd0500)
		begin
			counter1<=9'd0;
			counter2<=counter2+1'd01;
		end
		else
		counter1<=counter1+1'b1;
	end
end
endmodule

