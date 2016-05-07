`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:32:29 12/23/2015
// Design Name:   demo13
// Module Name:   D:/ISE/project/demo13/test.v
// Project Name:  demo13
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demo13
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
	reg MR;
	reg Load;
	reg EN;
	reg CLK;
	reg [3:0] D;
	reg Up_Dn;

	// Outputs
	wire [3:0] Q;
	wire CO;
	
	always
	 #50CLK=~CLK;
	// Instantiate the Unit Under Test (UUT)
	demo13 uut (
		.MR(MR), 
		.Load(Load), 
		.EN(EN), 
		.CLK(CLK), 
		.Q(Q), 
		.CO(CO), 
		.D(D), 
		.Up_Dn(Up_Dn)
	);

	initial begin
		// Initialize Inputs
		MR = 0;
		Load = 0;
		EN = 0;
		CLK = 0;
		D = 0;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		MR = 1;
		Load = 0;
		EN = 0;
		D = 0;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 0;
		EN = 0;
		D = 4'b1111;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 1;
		EN = 1;
		D = 4'b0000;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 1;
		EN = 0;
		D = 0;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 1;
		Load = 0;
		EN = 0;
		D = 0;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 0;
		EN = 0;
		D = 4'b0000;
		Up_Dn = 0;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 1;
		EN = 1;
		D = 0;
		Up_Dn = 1;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 1;
		EN = 1;
		D = 0;
		Up_Dn = 1;

		// Wait 100 ns for global reset to finish
		#100;
		MR = 0;
		Load = 1;
		EN = 1;
		D = 0;
		Up_Dn = 1;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

