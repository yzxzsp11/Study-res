`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:16 04/14/2016 
// Design Name: 
// Module Name:    Test_RigisterFile 
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
module Test_RigisterFile(Addr,Write_Reg,C1,C2,Clk,Reset,LED);
	input [4:0]Addr;
	input [1:0]C1;
	input Write_Reg,C2,Clk,Reset;
	output reg [7:0]LED;
	wire [31:0]R_Data_A,R_Data_B;
	reg [31:0]W_Data;
	reg [4:0]A,B;
	RegisterFile
		reg1(A,B,Addr,Write_Reg,W_Data,Clk,Reset,R_Data_A,R_Data_B);
		
	always@(Addr or Write_Reg or C1 or C2 or R_Data_A or R_Data_B) 
	begin
		A=0;
		B=0;
		LED=0;
		W_Data=0;
		
		if(!Write_Reg)
		begin
			
			if(!C2)
			begin
				
				A=Addr;
				
					case(C1)
						2'b00:LED=R_Data_A[7:0];
						2'b01:LED=R_Data_A[15:8];
						2'b10:LED=R_Data_A[23:16];
						2'b11:LED=R_Data_A[31:24];
					endcase
			end
			
			else
			begin
				B=Addr;
				
					case(C1)
						2'b00:LED=R_Data_B[7:0];
						2'b01:LED=R_Data_B[15:8];
						2'b10:LED=R_Data_B[23:16];
						2'b11:LED=R_Data_B[31:24];
					endcase
			end
		
		end
		
		else
		begin
			case(C1)
				2'b00:W_Data=32'h0000_0003;
				2'b01:W_Data=32'h0000_0607;
				2'b10:W_Data=32'hFFFF_FFFF;
				2'b11:W_Data=32'h1111_1234;
			endcase
		end
	end
	endmodule
