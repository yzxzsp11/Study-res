`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:40 05/20/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A,B,ALU_OP,ZF,OF,F
    );
		input [31:0] A,B;
		input [2:0] ALU_OP;
		output reg ZF,OF;
		output reg [31:0] F;
		
		always @ (*)
		begin
			case (ALU_OP)
			3'B000:F = A&B; 
			3'B001:F = A|B; 
			3'B010:F = A^B; 
			3'B011:F = ~(A|B); 
			3'B100:{OF , F} = A+B; 
			3'B101:F = A-B; 
			3'B110:begin if(A<B)F=1;else F = 0;end//A<B?1:0;
			3'B111:{OF,F} = B<<A;
			endcase
			if(F == 0) ZF = 1;
			else ZF = 0;
		end

endmodule

