`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:15 10/30/2017 
// Design Name: 
// Module Name:    Dec1_4Case 
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
module Dec1_4Case(
 
input [1:0]a, //Entradas
input enable,
output reg [3:0]b //Usamos reg ya que estos pueden tomar valores (SALIDAS)//
    );
	 
always @(a,enable) //Siempre que varie algo que comienze

begin

if (enable == 0) begin // El enable es a nivel bajo, 

case(a)

2'b00: b=4'b1110; // Esto significa que en caso de que A tenga el valor 00 (Tambien lo podriamos poner en decimal)
2'b01: b=4'b1101;// pero de esta manera es mas visual, lo que dice es que en caso de que a valga 01, el vector b
2'b10: b=4'b1011; // toma el valor 1011 ya que se trata de salidas a nivel bajo.
2'b11: b=4'b0111;
endcase

if (enable == 1) begin
case (a)
2'bxx: b=4'b1111; // Si el enable esta encendido, entonces la salida son todo 0, que al ser a nivel bajo se trata de unos.
   //Las equis significan que ese valor no importa.
 
 endcase
 end
 end
 end

endmodule
