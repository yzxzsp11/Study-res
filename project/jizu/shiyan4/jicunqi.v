`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:50:35 04/25/2015 
// Design Name: 
// Module Name:    jicunqi 
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
module jicunqi(Addr,Write_Reg,Clk,Reset,Read_Reg,choose,LED);

	input[4:0] Addr;
	input Write_Reg,Read_Reg;
	input Clk,Reset;
	input[1:0] choose;
	integer i;
	reg[31:0] W_Data;
	reg[31:0] R_Data_A,R_Data_B;
	output reg[7:0] LED;
	reg[31:0] REG_Files[0:31];
	
	always@(posedge Clk or posedge Reset)
	begin
		if(Reset)
			for(i=0;i<32;i=i+1)
			begin
				REG_Files[i]=32'h0000_0000;
			end
		else
			begin
				if(Write_Reg)
					begin  
					case(choose)
						2'b00:W_Data=32'h1001_0000;
						2'b01:W_Data=32'h7FFF_FFFF;
						2'b10:W_Data=32'h1234_5678;
						2'b11:W_Data=32'h3333_2222;
					endcase
					case(Addr)
						5'b00000:REG_Files[0]=W_Data;
						5'b00001:REG_Files[1]=W_Data;
						5'b00010:REG_Files[2]=W_Data;
						5'b00011:REG_Files[3]=W_Data;
						5'b00100:REG_Files[4]=W_Data;
						5'b00101:REG_Files[5]=W_Data;
						5'b00110:REG_Files[6]=W_Data;
						5'b00111:REG_Files[7]=W_Data;
						5'b01000:REG_Files[8]=W_Data;
						5'b01001:REG_Files[9]=W_Data;
						5'b01010:REG_Files[10]=W_Data;
						5'b01011:REG_Files[11]=W_Data;
						5'b01100:REG_Files[12]=W_Data;
						5'b01101:REG_Files[13]=W_Data;
						5'b01110:REG_Files[14]=W_Data;
						5'b01111:REG_Files[15]=W_Data;
						5'b10000:REG_Files[16]=W_Data;
						5'b10001:REG_Files[17]=W_Data;
						5'b10010:REG_Files[18]=W_Data;
						5'b10011:REG_Files[19]=W_Data;
						5'b10100:REG_Files[20]=W_Data;
						5'b10101:REG_Files[21]=W_Data;
						5'b10110:REG_Files[22]=W_Data;
						5'b10111:REG_Files[23]=W_Data;
						5'b11000:REG_Files[24]=W_Data;
						5'b11001:REG_Files[25]=W_Data;
						5'b11010:REG_Files[26]=W_Data;
						5'b11011:REG_Files[27]=W_Data;
						5'b11100:REG_Files[28]=W_Data;
						5'b11101:REG_Files[29]=W_Data;
						5'b11110:REG_Files[30]=W_Data;
						5'b11111:REG_Files[31]=W_Data;
					endcase
					end
				else
					begin
					if(Read_Reg)
						begin
							R_Data_A=REG_Files[Addr];
							case(choose)
								2'b00:LED=R_Data_A[7:0];
								2'b01:LED=R_Data_A[15:8];
								2'b10:LED=R_Data_A[23:16];
								2'b11:LED=R_Data_A[31:24];
							endcase
						end
					else
						begin
							R_Data_B=REG_Files[Addr];
							case(choose)
								2'b00:LED=R_Data_B[7:0];
								2'b01:LED=R_Data_B[15:8];
								2'b10:LED=R_Data_B[23:16];
								2'b11:LED=R_Data_B[31:24];
							endcase
						end
					end
			end
	end

endmodule
