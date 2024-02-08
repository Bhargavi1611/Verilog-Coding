`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 09:29:11
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
  reg [1:0] I;
  reg S;
  wire Y;
  mux bhargavi(Y,I,S);
  initial begin
    $monitor("Y=%0b I=%0b S=%0b",Y,I,S);
   I=2'b00;S=1'b0;
   #10;
   I=2'b01;S=1'b0;
   #10;
   I=2'b10;S=1'b1;
   #10;
   I=2'b11;S=1'b1;
   #10;
  end 
endmodule