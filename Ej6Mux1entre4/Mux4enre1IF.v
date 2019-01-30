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
module Mux1entre4Case(
 a,
 b,
m );
input [3:0]a;
input [1:0]b;
output reg m; //M es nuestra salida del mux

always @ (a or b) begin  //Si b cambia que ocurra
case (b) // los valores de b en decimal seleccionaran que salida de todas habra.
0: m=a[0]; 
1: m=a[1];
2: m=a[2];
3: m=a[3];
 
endcase
		 
end
endmodule

module Mux1entre16(
input[15:0]a,
input [3:0]b,
inout m ,
output mux);

assign mux= ((~b[3]) & (~b[2])& m[0]) | ((b[3]) & (~b[2]) & a[1]) | ((b[3]) & (~b[2])&  a[2]) | ((b[3]) & (b[2])& m[3]); 

mux1entre4Case m0 (a[3:0],b[1:0],m0);
mux1entre4Case m1 (a[7:4],b[1:0],m1); 
mux1entre4Case m2 (a[11:8],b[1:0],m2); 
mux1entre4Case m3 (a[15:2],b[1:0],m3);  

