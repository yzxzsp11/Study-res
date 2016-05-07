`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:58 11/21/2015 
// Design Name: 
// Module Name:    demo04 
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
module demo04(EN,In,Y,Done);

	input EN,In;
	output Y,Done;
	
	wire EN;
	wire[7:0] In;
	reg Done;
	reg[2:0] Y;
	
	always@(*)
	
		if((EN==1)&&(In!=8'b00000000))
			begin
			
			Done=1;
			if(In[0]==1)		Y=3'b000;	
			else if(In[1]==1)	Y=3'b001;	
			else if(In[2]==1)	Y=3'b010;	
			else if(In[3]==1)	Y=3'b011;	
			else if(In[4]==1)	Y=3'b100;	
			else if(In[5]==1)	Y=3'b101;	
			else if(In[6]==1)	Y=3'b110;	
			else if(In[7]==1)	Y=3'b111;	
			else 					Y=3'b000;
			
			end
			
		else
			begin
			
			Y=3'b000;
			Done=0;
			
			end	
	


endmodule
