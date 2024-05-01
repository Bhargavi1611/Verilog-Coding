`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 11:57:42
// Design Name: 
// Module Name: mealybinary
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


module mealybinary(
  input a, b, cin, reset, clk,
  output reg sum, carry
);

  parameter s0 = 1'b0;
  parameter s1 = 1'b1;
  reg present;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      present <= s0;
    end else begin
      present <= carry;
    end
  end

  always @(posedge clk) begin
    case (present)
      s0: begin
        sum = a ^ b;
        if (a && b) begin
          carry = s1;
        end else begin
          carry = present;
        end
      end
      s1: begin
        sum = ~(a ^ b);
        if (~a && ~b) begin
          carry = s0;
        end else begin
          carry = present;
        end
      end
      default: carry = s0;
    endcase
  end
endmodule