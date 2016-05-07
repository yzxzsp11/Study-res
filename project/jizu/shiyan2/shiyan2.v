`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:46 04/11/2015 
// Design Name: 
// Module Name:    shiyan2 
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
module shiyan2(Sum,Cout,X,Y,Cin
    );
	 output[3:0]Sum;
	 output Cout;
	 input[3:0]X,Y;
	 input Cin;
	 assign{Cout,Sum}=X+Y+Cin;

endmodule
