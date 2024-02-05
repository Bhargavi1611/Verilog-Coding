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
    y1 = a & b;
    y2 = a | b;
    y3 = ~a;
    y4 = ~(a & b);
    y5 = a ^ b;
    y6 = ~(a | b);
    y7 = ~(a ^ b);
  end
endmodule
