`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:15:28 12/23/2015
// Design Name:   demo16
// Module Name:   D:/ISE/project/demo16/test.v
// Project Name:  demo16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg [1:0] sw;
	reg rst;

	// Outputs
	wire clk_out;

	// Instantiate the Unit Under Test (UUT)
	demo16 uut (
		.clk(clk), 
		.sw(sw), 
		.rst(rst), 
		.clk_out(clk_out)
	);
	integer in;
	initial begin
		// Initialize Inputs
		clk = 0;
		sw = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		clk=1;rst=1;#10;clk=0;rst=0;#10;
		for(in=0;in<30;in=in+1)
		begin
		clk=1;#1;clk=0;#1; 
		end
		clk=1;rst=1;#10;clk=0;rst=0;#10;
		sw=2'b01;
		for(in=0;in<30;in=in+1)
		begin
		clk=1;#1;clk=0;#1; 
		end
		clk=1;rst=1;#10;clk=0;rst=0;#10;
		sw=2'b10;
		for(in=0;in<30;in=in+1)
		begin
		clk=1;#1;clk=0;#1; 
		end
		clk=1;rst=1;#10;clk=0;rst=0;#10;
		sw=2'b11;		
		for(in=0;in<30;in=in+1)
		begin
		clk=1;#1;clk=0;#1; 
		end
        	
		// Add stimulus here

	end
      
endmodule
