`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:16:10 11/18/2015
// Design Name:   demo02
// Module Name:   D:/ISE/project/demo02/test.v
// Project Name:  demo02
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo02
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
	reg [1:0] A;
	reg [1:0] B;
	reg [1:0] C;
	reg [1:0] D;
	reg EN;
	reg [1:0] S;

	// Outputs
	wire [1:0] Y;

	// Instantiate the Unit Under Test (UUT)
	demo02 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.EN(EN), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		EN = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100;
		EN = 0;S = 2'b00;A = 2'b11;B = 2'b01;C = 2'b10;D = 2'b11;
		
		#100;
		EN = 1;S = 2'b00;A = 2'b01;B = 2'b00;C = 2'b10;D = 2'b11;
		
		#100;
		EN = 1;S = 2'b01;A = 2'b00;B = 2'b01;C = 2'b10;D = 2'b11;
		
		#100;
		EN = 1;S = 2'b10;A = 2'b00;B = 2'b10;C = 2'b01;D = 2'b11;
		
		#100;
		EN = 1;S = 2'b11;A = 2'b00;B = 2'b10;C = 2'b11;D = 2'b01;

	end
      
endmodule

