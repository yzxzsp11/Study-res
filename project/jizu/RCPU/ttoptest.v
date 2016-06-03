`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:18:57 05/20/2016
// Design Name:   TopTest
// Module Name:   G:/isefiles/RCPU/ttoptest.v
// Project Name:  RCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopTest
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ttoptest;

	// Inputs
	reg rst;
	reg btn;
	reg [2:0] SW;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	TopTest uut (
		.rst(rst), 
		.btn(btn), 
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		rst = 1;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		rst = 0;
		btn = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

