`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:42 10/25/2017 
// Design Name: 
// Module Name:    DecFuncional 
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
module DecFuncional // Decodificador 1 entre 4
(a[1],a[0],en,b[3],b[2],b[1],b[0]
 );
 //Entradas
   input a[1:0],en;
 //Salidas
   output b[3:0];

 //Código
 assign b[0]=(~a[1]) & (~a[0]) & ~en; // Los enables estan negados por que son  a nivel bajo, a [0] es el de menor indice.
 assign b[1]=(~a[1]) & (a[0]) & ~en;
 assign b[2]=(a[1]) & (~a[0]) & ~en;
 assign b[3]=(a[1]) & (a[0]) & ~en;

endmodule
