`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:55 06/08/2015 
// Design Name: 
// Module Name:    ALU_32 
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
module ALU_32(F,ZF,OF,A,B,ALU_OP
    );

input [31:0]A,B;
input [2:0]ALU_OP;
output reg[31:0]F;
output ZF,OF;
reg C32;
parameter zero_32=32'h00000000,one_32=32'h00000001;

always@(*)
begin

 C32=1'b0;
 case(ALU_OP)
			3'b000: F = A & B;
			3'b001:F = A | B;
			3'b010:F = A ^ B;
			3'b011:F = ~(A | B);
			3'b100:{C32,F} = A + B;
			3'b101:{C32,F} = A - B;
			3'b110:F=(A<B)?one_32:zero_32;
			3'b111:F = B << A;
			default: F=zero_32;
		endcase
		 
end

assign ZF=~|F;
assign OF=((ALU_OP==3'b100)||(ALU_OP==3'b101))&&(A[31]^B[31]^F[31]^C32);

endmodule
