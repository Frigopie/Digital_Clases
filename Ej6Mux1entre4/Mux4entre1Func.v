`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:08:42 10/25/2017 
// Design Name: 
// Module Name:    Mux4_1Func 
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
module Mux4_1Func  ( // Mux con enable a nivel bajo QUE GENERA IMPEDANCIA
a[0],a[1],a[2],a[3],b[0],b[1],S,en);//Las A son las entradas, y las B las de seleccion, S es el valor que tomará la salida .
	 //Entradas
	 input a[3:0],b[1:0],en;
	 //Salidas
	 output S;
	 // Codigo Assign
	 assign S = ((~b[1]) & (~b[0])& ~en & a[0]) | ((b[1]) & (~b[0])& ~en & a[1]) | ((b[1]) & (~b[0])& ~en & a[2]) | ((b[1]) & (b[0])& ~en & a[3]); 
	              // (0  and  0 and 0 and  a[0]) or ... // // 
 	 always @(a or b or en)
	 begin
	 case (en)
	 
	 1'b1: S=2b'zz;
    
	 endcase     	 //Alta impedancia, cuando el enable toma el valor 1 el bit que resulta es Z, que es impedancia
    end

endmodule
