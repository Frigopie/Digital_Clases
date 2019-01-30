`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:24 10/16/2017 
// Design Name: 
// Module Name:    HammOUT 
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
module HammOUT(
   input [4:1]a,
   output [7:1]b
	 ); //En el codigo generador de hamming se crean 3 bits nuevos que seran los "comprobados" en el corrector
assign b[1] = b[3] ^ b[5] ^ b[7] ; //Para crear esos nuevos bits usamos puertas XOR (^) que nos indican imparidad.
assign b[2] = b[3] ^ b[6] ^ b[7] ;
assign b[3] = a[1];
assign b[4] = b[5] ^ b[6] ^ b[7];
assign b[5] = a[2];
assign b[6] = a[3];
assign b[7] = a[4];

endmodule
