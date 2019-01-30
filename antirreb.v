`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:00 11/15/2017 
// Design Name: 
// Module Name:    antirreb 
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
module Antirrebote(
input P,clk,
output reg PB);

reg [18:0]CNT; //Para contar hasta 500000 hacen falta 19 bit
reg [1:0] estado;
reg [1:0] estadoNext;
reg [1:0] temp;
reg ContEn;

initial
begin

CNT = 0;
estado = 0;
PB = 0;

 end

always @(posedge clk) begin
   estado<=EstadoNext;

	case (estado)
	0: begin
   	PB=0;
	  ContEn=0;
	  if (p==1)
	  EstadoNext=1;
	  else
	  EstadoNext=0;
	  
	1: begin
	   PB=0;
		ContEn=1;
		if (p==1 && temp ==0)
		estadoNext=1;
		else if (p==1 && temp == 1)
		EstadoNext == 2;
		else if (p==0)
		EstadoNext ==0;
	end
		
		
	2: begin
	      PB=1; 
			contEn=0;
       if(P ==1)	
          EstadoNext=2;
		 else 	 
		    EstadoNext=3;
		 end
			
	3: begin
	      PB=1;
			contEn=0;
         if (P==0 && temp == 0)
			estadoNext=3;
			if (P==1)
			EstadoNext=2;
			if P==0 && Temp==1
			EstadoNext=0;
			
	     end		
		end	
	endcase
	
	always @(posedge clk)
	   if(contEn==0)
		   begin
		temp<=0;
       CNT<=0;		
          end
		else 
         if (CNT<500000)
           begin	
          temp <=0;
           CNT<=CNT+1;
         end 			  
		   else
			 temp <=1;
			   cnt<=0;
	  end
	  
	  endmodule	  