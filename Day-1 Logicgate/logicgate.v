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
    y1 = a & b;//and gate output 1 if both inputs are 1 else 0
    y2 = a | b;// or gate output 1 if any one of the input is 1
    y3 = ~a;// not gate output is 0 if input is 1 and vice-versa
    y4 = ~(a & b);// nand gate complementary of and gate
    y5 = a ^ b;//xorgate output is 0 if both inputs are 0 or 1
    y6 = ~(a | b);//nor gate performs complementary operation of or gate 
    y7 = ~(a ^ b);//xnor gate performs compleemtary operation of xor gate 
  end
endmodule
