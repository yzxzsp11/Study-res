`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:21 04/13/2015 
// Design Name: 
// Module Name:    shiyan3 
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
module shiyan3(AB_SW,ALU_OP,F_LED_SW,LED);
	
	input[2:0]	AB_SW,ALU_OP,F_LED_SW;
	output[7:0]	LED;
	
	reg[31:0] A,B;
	wire[2:0] AB_SW;
	wire[31:0] F;
	wire ZF,OF;
	ALU ALU(A,B,ALU_OP,F,ZF,OF);
	
	always@(*)
	begin
		case(AB_SW)
			3'b000:begin A=32'h0000_0000; B=32'h0000_0000; end
			3'b001:begin A=32'h0000_0003; B=32'h0000_0607; end
			3'b010:begin A=32'h8000_0000; B=32'h8000_0000; end
			3'b011:begin A=32'h7FFF_FFFF; B=32'h7FFF_FFFF; end
			3'b100:begin A=32'hFFFF_FFFF; B=32'hFFFF_FFFF; end
			3'b101:begin A=32'h8000_0000; B=32'hFFFF_FFFF; end
			3'b110:begin A=32'hFFFF_FFFF; B=32'h8000_0000; end
			3'b111:begin A=32'h1234_5678; B=32'h3333_2222; end
			default:begin A=32'h9ABC_DEF0; B=32'h1111_2222; end
		endcase
	end
	
	wire [2:0]F_LED_SW;
	reg [7:0]LED;
	
	always@(*)
	begin
		case(F_LED_SW)
			3'b000:LED=F[7:0];
			3'b001:LED=F[15:8];
			3'b010:LED=F[23:16];
			3'b011:LED=F[31:24];
		default:begin LED[7]=ZF;	LED[6:1]=6'b0;	LED[0]=OF;end
		endcase
	end
endmodule
