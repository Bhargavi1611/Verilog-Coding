`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 20:03:20
// Design Name: 
// Module Name: tristatebuffer_tb
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


module tristatebuffer_tb;
reg a,en;
wire b;
tristatebuffer dut(b,a,en);
initial begin
$monitor("a=%0b en=%0b b=%0b",a,en,b);
  en = 0; a = 1; #10;
  en = 1; a = 1; #10;
  en = 1; a = 0; #10;
  en = 1; a = 0; #10;
  end
endmodule
