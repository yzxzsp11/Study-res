`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:18:00 12/02/2015
// Design Name:   demo06
// Module Name:   D:/ISE/project/demo06/test.v
// Project Name:  demo06
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo06
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
	reg C0;

	// Outputs
	wire C4;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	demo06 uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.C4(C4), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		A = 4'b1111;B = 4'b1111;C0 = 1'b1;
		
		#100;
		A = 4'b1111;B = 4'b1100;C0 = 1'b1;
		
		#100;
		A = 4'b0000;B = 4'b1111;C0 = 1'b1;
		
		#100;
		A = 4'b0001;B = 4'b0001;C0 = 1'b1;
		
		#100;
		A = 4'b1111;B = 4'b1111;C0 = 1'b0;
		
		#100;
		A = 4'b0001;B = 4'b1100;C0 = 1'b0;

	end
      
endmodule

