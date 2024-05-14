`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2024 11:01:03
// Design Name: 
// Module Name: mealynonover
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


module mealynonover(input  clk, rst_n, x, output z); 
  parameter A = 4'h1; 
  parameter B = 4'h2; 
  parameter C = 4'h3; 
  parameter D = 4'h4; 
   
  reg [3:0] state, next_state; 
  always @(posedge clk or negedge rst_n) begin 
    if(!rst_n) begin  
      state <= A; 
    end 
    else state <= next_state; 
  end 
   
  always @(state or x) begin 
    case(state) 
      A: begin 
           if(x == 0) next_state = A; 
           else       next_state = B; 
         end 
      B: begin 
           if(x == 0) next_state = C; 
           else       next_state = B; 
         end 
      C: begin 
           if(x == 0) next_state = D; 
           else       next_state = B; 
         end 
      D: begin 
           if(x == 0) next_state = A; 
           else       next_state = A; 
         end 
      default: next_state = A; 
    endcase 
  end 
  assign z = (state == A) && (x == 0)? 1:0; 
endmodule 

