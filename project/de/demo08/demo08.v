`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:21 12/09/2015 
// Design Name: 
// Module Name:    demo08 
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
module demo08(R,S,Q,Qn);

	input R,S;
	output Q,Qn;
	
	wire R,S,Q,Qn;
	
	assign    Q=~(S|Qn);
   assign    Qn=~(R|Q);
			
	
	

endmodule
