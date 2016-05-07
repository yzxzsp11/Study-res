`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:07:52 05/26/2015
// Design Name:   test
// Module Name:   D:/file2/shiyan7/test_7.v
// Project Name:  shiyan7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_7;

	// Inputs
	reg rst;
	reg clk;
	reg [1:0] choose;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.rst(rst), 
		.clk(clk), 
		.choose(choose), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		choose = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rst=1;
		choose=0;
		#10;
		rst=0;
		#10;
		choose=1;
		#20;
		choose=2;
		#20;
		choose=3;
		#20;
		choose=2;
        
		// Add stimulus here

	end
	initial begin
	clk=0;
	forever #10 clk=~clk;
	end
      
endmodule

