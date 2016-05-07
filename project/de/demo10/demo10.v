`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:07 12/16/2015 
// Design Name: 
// Module Name:    demo10 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module demo10(J,K,CLK,Q,Qn);

	input J,K,CLK;
	output Q,Qn;
	reg Q;
	
	assign Qn=~Q;
	
	always@(negedge CLK)
		case({J,K})
			2'b00: Q<=Q;
			2'b01: Q<=0;
			2'b10: Q<=1;
			2'b11: Q<=~Q;
		endcase

endmodule