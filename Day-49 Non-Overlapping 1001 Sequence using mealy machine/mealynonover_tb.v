`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 11:02:14
// Design Name: 
// Module Name: mealynonover_tb
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


module mealynonover_tb;
  reg clk, rst_n, x; 
  wire z; 
  mealynonover dut(clk, rst_n, x, z); 
  always #5 clk=~clk;
  initial begin
    clk = 0;    
    rst_n = 0;
    #1 rst_n = 1; 
    #3
     x = 1;
      #4 
      x = 0;
      #4
       x = 0;
      #4
       x = 1;
      #4
       x = 0;
      #4 
      x = 0;
      #4 
      x = 1;
      #4
       x = 0;
      #4 
      x = 0;
      #4
       x = 1;
      #4 
      x = 0;
      #4 
      x = 0;
      #4
       x = 1;
      #4 
      x = 0;

  end
endmodule 

