`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:22:32 06/07/2015
// Design Name:   top
// Module Name:   D:/file2/shiyan9/test_1.v
// Project Name:  shiyan9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_1;

	// Inputs
	reg rst;
	reg clk;
	reg [2:0] SW;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.rst(rst), 
		.clk(clk), 
		.SW(SW), 
		.LED(LED)
	);

		initial begin
		// Initialize Inputs
	   rst=0;
		SW=0;
		// Wait 100 ns for global reset to finish
		#10;
		rst=1;
		SW=0;
		#20;
		rst=0;
		SW=0;
        
		// Add stimulus here

	end
   initial begin
    		clk = 0;
	forever #10 clk=~clk; 
	end
      
      
endmodule

