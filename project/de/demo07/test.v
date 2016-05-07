`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:16 12/02/2015
// Design Name:   demo07
// Module Name:   D:/ISE/project/demo07/test.v
// Project Name:  demo07
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo07
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
	reg AS;

	// Outputs
	wire C4;
	wire ZF;
	wire CF;
	wire [3:0] F;

	// Instantiate the Unit Under Test (UUT)
	demo07 uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.AS(AS), 
		.C4(C4), 
		.ZF(ZF), 
		.CF(CF), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;
		AS = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		A = 4'b0000;B = 4'b1111;C0 = 1;AS = 0; 
		
		#100;
		A = 4'b0011;B = 4'b1100;C0 = 1;AS = 0;
		
		#100;
		A = 4'b0000;B = 4'b0001;C0 = 1;AS = 0;
		
		#100;
		A = 4'b1100;B = 4'b0001;C0 = 1;AS = 1;
		
		#100;
		A = 4'b1100;B = 4'b0101;C0 = 0;AS = 1;
		

	end
      
endmodule

