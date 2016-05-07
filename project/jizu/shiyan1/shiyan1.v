`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:17 04/11/2015 
// Design Name: 
// Module Name:    shiyan1 
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
module shiyan1(A,B,C,F,C1
    );
input A,B,C;
output F,C1;
assign {C1,F}=A+B+C;

endmodule
