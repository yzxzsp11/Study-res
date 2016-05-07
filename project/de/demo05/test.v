`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:17:19 11/30/2015
// Design Name:   demo05
// Module Name:   D:/ISE/project/demo05/test.v
// Project Name:  demo05
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo05
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
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [2:0] Y;

	// Instantiate the Unit Under Test (UUT)
	demo05 uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		A = 3'b001;B = 3'b000;
		
		#100;
		A = 3'b011;B = 3'b011;
		
		#100;
		A = 3'b001;B = 3'b101;
		
		#100;
		A = 3'b111;B = 3'b010;
		
		#100;
		A = 3'b110;B = 3'b110;
		
		#100;
		A = 3'b011;B = 3'b101;

	end
      
endmodule

