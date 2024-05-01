`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 12:04:46
// Design Name: 
// Module Name: mealyseq_tb
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 12:04:46
// Design Name: 
// Module Name: mealyseq_tb
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

module mealyseq_tb;
  reg clk, rst_n, x; 
  wire z; 
  
  mealyseq dut(clk, rst_n, x, z); 
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
    #10; 
   
  end
endmodule 
