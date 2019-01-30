`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:19 10/30/2017 
// Design Name: 
// Module Name:    HammingCorr1 
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
module HammingCorr1(
  input [7:1]a,  //Estas son las entradas
 output reg [4:1]b //Estas salidas las definimos como reg ya que en la logica combinacional estos no pueden tomar valores.
                    //En este caso reg si que puede guardar valores, en otros ejemplos se hace primero output y luego reg
 
    );
	 
	 //Codigo
	 wire [2:0]c;
	 
	 assign c[0]=a[1]^a[3]^a[5]^a[7];
	 assign c[1]=a[2]^a[3]^a[6]^a[7];   //Creamos nuestros C internos que dependen de la imparidad de esos valores.
	 assign c[2]=a[4]^a[5]^a[6]^a[7];
	 
	 always @(a or c) //Siempre que varien uno de estos dos valores que se inicie el "case"
	begin
	case (c)
	3: b[1]=~a[3]; //Si C toma el valor decimal 3 (~c2,c1,c0) eso quiere decirnos que el error esta en el bit de entrada 3, asi que lo cambiamos
	5: b[2]=~a[5];
	6: b[3]=~a[6];
	7: b[4]=~a[7]; // esto es por que en el hamming corrector hemos fijado a[1] a[2] y a[4] Como valores de imparidad.
	
	endcase
	end
	


endmodule
