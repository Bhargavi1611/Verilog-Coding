`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 16:29:09
// Design Name: 
// Module Name: LFSR
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


module LFSR(
input clk, reset, 
output reg [3:0] out);
  always@(posedge clk) begin
    if(reset) 
    out <= 4'hf;
    else 
    out = {out[2:0],(out[3]^out[2])};
  end
endmodule

