`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:16 10/27/2017 
// Design Name: 
// Module Name:    Dec1_4If 
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
module Dec1_4If(
en,
a,
b

    );
	 //Entradas
	 input en;
	 input [1:0]a;
	 // Salidas
	 output reg [3:0]b;
	 //Code
	 
always @(en or a[1] or a[0]) //Siempre que varie alguno de estos valores que se ejecute el codigo
begin
b=16; //Damos el valor del vector en binario y 1111 es 16, ya que esta la salida en nivel bajo.
if (~en)begin

   if (a==2'b00)begin // Si se dan estas dos condiciones que la salida en b valga 1110, por que esta a nivel bajo.

      b=14; end

   if (a==2'b01)begin

      b=13; end

   if (a==2'b10)begin

      b=11; end // 11 es el valor que toma si 1011 = 8+2+1

 if (a==2'b11)begin

      b=7; end
end
end




endmodule
