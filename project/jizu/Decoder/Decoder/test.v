`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:01 05/21/2015
// Design Name:   Decoder
// Module Name:   D:/Xilinx/Decoder/test.v
// Project Name:  Decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder
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
	reg rst;
	reg clk;
	reg [1:0] SW;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	Decoder uut (
		.rst(rst), 
		.clk(clk), 
		.SW(SW), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rst=1;
		SW=0;
		#20;
		rst=0;
		SW=1;
		#20;
		SW=2;
		#20;
		SW=3;
		#20;
		SW=2;
        
		// Add stimulus here

	end
	initial begin
	clk=0;
	forever #10 clk=~clk;
	end
      
endmodule

