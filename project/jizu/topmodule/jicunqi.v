`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:01 05/05/2015 
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
module jicunqi(Addr,R_Addr_A,R_Addr_B,Write_Reg,R_Data_A,R_Data_B,Data,Clk,Reset
    );
input[4:0]Addr,R_Addr_A,R_Addr_B;
input Write_Reg;
input Clk;
input Reset;
integer i;
input [31:0]Data;
output reg [31:0]R_Data_A,R_Data_B;
reg[31:0]REG_Files[0:31];
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
			case(Addr)
				5'b00000:REG_Files[0]=Data;
				5'b00001:REG_Files[1]=Data;
				5'b00010:REG_Files[2]=Data;
				5'b00011:REG_Files[3]=Data;
				5'b00100:REG_Files[4]=Data;
				5'b00101:REG_Files[5]=Data;
				5'b00110:REG_Files[6]=Data;
				5'b00111:REG_Files[7]=Data;
				5'b01000:REG_Files[8]=Data;
				5'b01001:REG_Files[9]=Data;
				5'b01010:REG_Files[10]=Data;
				5'b01011:REG_Files[11]=Data;
				5'b01100:REG_Files[12]=Data;
				5'b01101:REG_Files[13]=Data;
				5'b01110:REG_Files[14]=Data;
				5'b01111:REG_Files[15]=Data;
				5'b10000:REG_Files[16]=Data;
				5'b10001:REG_Files[17]=Data;
				5'b10010:REG_Files[18]=Data;
				5'b10011:REG_Files[19]=Data;
				5'b10100:REG_Files[20]=Data;
				5'b10101:REG_Files[21]=Data;
				5'b10110:REG_Files[22]=Data;
				5'b10111:REG_Files[23]=Data;
				5'b11000:REG_Files[24]=Data;
				5'b11001:REG_Files[25]=Data;
				5'b11010:REG_Files[26]=Data;
				5'b11011:REG_Files[27]=Data;
				5'b11100:REG_Files[28]=Data;
				5'b11101:REG_Files[29]=Data;
				5'b11110:REG_Files[30]=Data;
				5'b11111:REG_Files[31]=Data;
			endcase
			end
		else
			begin
				R_Data_A=REG_Files[R_Addr_A];
				R_Data_B=REG_Files[R_Addr_B];
			end
	end
end

endmodule

