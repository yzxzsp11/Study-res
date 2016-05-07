`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:36:08 11/21/2015
// Design Name:   demo04
// Module Name:   D:/ISE/project/demo04/test.v
// Project Name:  demo04
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo04
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
	reg EN;
	reg [7:0] In;

	// Outputs
	wire [2:0] Y;
	wire Done;

	// Instantiate the Unit Under Test (UUT)
	demo04 uut (
		.EN(EN), 
		.In(In), 
		.Y(Y), 
		.Done(Done)
	);

	initial begin
		// Initialize Inputs
		EN = 0;
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		EN = 0;In = 8'b00000000;
		
		#100;
		EN = 0;In = 8'b10000001;
				
		#100;
		EN = 1;In = 8'b00000000;
		
		#100;
		EN = 1;In = 8'b00111001;
		
		#100;
		EN = 1;In = 8'b00001000;		
		
		#100;
		EN = 1;In = 8'b00010000;
		
		#100;
		EN = 1;In = 8'b00011000;
		


	end
      
endmodule

