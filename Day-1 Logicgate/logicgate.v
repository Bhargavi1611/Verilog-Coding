`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.02.2024 22:52:33
// Design Name: 
// Module Name: logicgate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module logicgate(output reg y1, y2, y3, y4, y5, y6, y7, input a, b);

  always @ *
  begin
    y1 = a & b;//and gate
    y2 = a | b;// or gate
    y3 = ~a;// not gate
    y4 = ~(a & b);// nand gate
    y5 = a ^ b;//xorgate
    y6 = ~(a | b);//nor gate
    y7 = ~(a ^ b);//xnor gate
  end
endmodule
