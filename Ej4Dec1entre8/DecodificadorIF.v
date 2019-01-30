`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:38 10/30/2017 
// Design Name: 
// Module Name:    DecodificadorIF 
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
module DecodificadorIF(
 
input [1:0]a,
input en,
output reg [3:0]b
    );
always @(a,en)

begin

 if (en == 0) begin
  
  if (a == 2'b00) begin
	b=4'b1110; end
	else if (a == 2'b01) begin
	b=4'b1101; end
	  if (a == 2'b10) begin
	b=4'b1011; end
	else if (a == 2'b11) begin
	b= 4'b0111; end
	
 else if (en == 1)
  b= 4'b1111; end
end

endmodule

module Decodificador1entre16(
input [3:0]a,
input en,
output [15:0]b);

wire [3:0]out;

DecodificadorIF d1(b[3:0],a[1:0],out[0]); //En este caso out van a ser nuestros enables
DecodificadorIF d2(b[7:4],a[1:0],out[1]);
DecodificadorIF d3(b[11:8],a[1:0],out[2]); 
DecodificadorIF d4(b[15:12],a[1:0],out[3]);
Decodificador2x4 d5(out,a[3:2],en); //Este decodificador va a  ser el que elija entre el resto


endmodule


module decodificador2x4(

output reg [3:0]b,
input [1:0] a,
input en);

always @(a,en)        // Es el mismo decodificador.
if(~en)

case(a)

2'b00: b=4'b0001;    
2'b01: b=4'b0010;
2'b10: b=4'b0100;
2'b11: b=4'b1000;

default: b=0;

endcase
else b=0;

endmodule

   




