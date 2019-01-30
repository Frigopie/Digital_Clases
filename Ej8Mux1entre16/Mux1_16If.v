`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:42 11/04/2017 
// Design Name: 
// Module Name:    Mux1_4If 
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
module Mux1_4If(
 a,
 b,
out );
input [3:0]a;
input [1:0]b;
output reg out; //M es nuestra salida del mux

always @ (a or b)
begin
 if (b == 2'b00) begin //Cuando b que son las seleccionadoras marcan 00, sacan el valor de A[0]
       out=a[0]; end
if (b == 2'b01) begin
       out=a[1]; end
if (b == 2'b10) begin
       out=a[2]; end
if (b == 2'b11) begin
       out=a[3]; end		 
		 
end
endmodule

module Mux1Entre16IF(
input [15:0]a,
input [3:0]b,
output out,
output mux);

wire out0,out1,out2,out3;

assign mux= ((~b[3]) & (~b[2]) & out0) | ((~b[3]) & (b[2]) & out1) | ((b[3]) & (~b[2]) & out2) | ((b[3]) & (b[2]) & out3); // Un multiplexor que toma como entradas a los otros dos y  a b[3] 
 
 //Instanciamos dos mux extras que nos daran out 1 y out 0
 
Mux1_4If m0 (a[3:0],b[1:0],out0);
Mux1_4If m1 (a[7:4],b[1:0],out1);
Mux1_4If m2 (a[11:8],b[1:0],out2);
Mux1_4If m3 (a[15:12],b[1:0],out3);

endmodule
