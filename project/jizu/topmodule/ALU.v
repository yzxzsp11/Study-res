`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:42 05/05/2015 
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
module ALU(A,B,ALU_OP,F,ZF,OF
    );
input [31:0]A,B;
input [2:0]ALU_OP;
output [31:0]F;
output ZF,OF;
wire[2:0]ALU_OP;
reg [31:0]F;
reg [32:0]C;
reg ZF,OF;
always@(*)
begin
	case(ALU_OP)
	3'b000:begin F=A&B;	ZF=!F;	OF=0;end
	3'b001:begin F=A|B;	ZF=!F;	OF=0;end	
	3'b010:begin F=A^B;	ZF=!F;	OF=0;end
	3'b011:begin F=~(A|B);	ZF=!F;	OF=0;end
	3'b100:begin F=A+B;	ZF=!F;	C=A+B;	OF=(F!==C)?1:0;end
	3'b101:begin F=A-B;	ZF=!F;	C=A-B;	OF=(F!==C)?1:0;end
	3'b110:begin F=(A<B)?1:0;ZF=!F;OF=0;end
	3'b111:begin F=A<<B;	ZF=!F;	OF=0;end
	endcase
end
endmodule
