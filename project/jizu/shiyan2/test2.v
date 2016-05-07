`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:11:18 04/11/2015
// Design Name:   shiyan2
// Module Name:   D:/file2/shiyan2/test2.v
// Project Name:  shiyan2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg [3:0] X;
	reg [3:0] Y;
	reg Cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	shiyan2 uut (
		.Sum(Sum), 
		.Cout(Cout), 
		.X(X), 
		.Y(Y), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		X = 5;
		Y = 6;
		Cin = 0;
		#100;
		X = 7;
		Y = 8;
		Cin = 1;
		#100;
		X = 7;
		Y = 8;
		Cin = 0;
		#100;
		X = 4;
		Y = 3;
		Cin = 1;
		#100;
		X = 5;
		Y = 6;
		Cin = 1;
		#100;
		X = 9;
		Y = 6;
		Cin = 1;
		#100;
		X = 0;
		Y = 0;
		Cin = 1;
		#100;
		X = 9;
		Y = 6;
		Cin = 9;
		#100;

	end
      
endmodule

