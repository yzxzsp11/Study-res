`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:23 04/29/2015
// Design Name:   shiyan3
// Module Name:   D:/file2/shiyan3/test3.v
// Project Name:  shiyan3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiyan3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test3;

	// Inputs
	reg [2:0] AB_SW;
	reg [2:0] ALU_OP;
	reg [2:0] F_LED_SW;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	shiyan3 uut (
		.AB_SW(AB_SW), 
		.ALU_OP(ALU_OP), 
		.F_LED_SW(F_LED_SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		AB_SW = 0;
		ALU_OP = 0;
		F_LED_SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
      AB_SW = 3'b011;
		ALU_OP = 3'b000;
		F_LED_SW = 3'b010;
		#100;
      AB_SW = 3'b010;
		ALU_OP = 3'b010;
		F_LED_SW = 3'b010;
		#100;
      AB_SW = 3'b011;
		ALU_OP = 3'b011;
		F_LED_SW = 3'b011;
 		#100;
      AB_SW = 3'b110;
		ALU_OP = 3'b110;
		F_LED_SW = 3'b010; 
		#100;
      AB_SW = 3'b111;
		ALU_OP = 3'b111;
		F_LED_SW = 3'b111; 
		#100;
      AB_SW = 3'b100;
		ALU_OP = 3'b100;
		F_LED_SW = 3'b100; 
		 
		// Add stimulus here

	end
      
endmodule

