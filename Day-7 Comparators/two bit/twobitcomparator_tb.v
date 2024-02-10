`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 13:36:50
// Design Name: 
// Module Name: twobitcomparator_tb
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


module twobitcomparator_tb;
  reg [1:0] a, b; // 2-bit inputs
  wire D, E, F;
  twobitcomparator dut(D, E, F, a, b);
  initial begin
    $monitor("a=%b b=%b D=%b E=%b F=%b", a, b, D, E, F);
    a = 2'b00; b = 2'b00; #10;
    a = 2'b00; b = 2'b01; #10;
    a = 2'b01; b = 2'b00; #10;
    a = 2'b01; b = 2'b01; #10;// Add more test cases as needed
  end
  
endmodule


