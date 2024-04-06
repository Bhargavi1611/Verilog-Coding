`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2024 20:15:46
// Design Name: 
// Module Name: DUALPORTRAM_tb
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


module DUALPORTSRAM_tb;
reg [7:0] data;
reg [5:0] r_addr, w_addr;
reg we, r_clock, w_clock;
wire  [7:0] q;
DUALPORTSRAM dut(q, data, r_addr, w_addr, we, r_clock, w_clock);
always #5 w_clock=~w_clock;
always #10 r_clock=~r_clock;
initial begin
  r_addr = 0;
      w_addr = 0;
      data = 8'h00;
      we = 0;
      w_clock = 0;
      r_clock = 0;
      w_addr = 5;
      data = 8'hFF;
      we = 1;
      #10; 
      we = 0;
      r_addr = 5;
      #10; 
      $finish;
  end
endmodule
