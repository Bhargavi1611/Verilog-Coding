`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2024 11:58:41
// Design Name: 
// Module Name: mealybinary_tb
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


module mealybinary_tb;
  reg a, b, cin, reset, clk;
  wire sum, carry;

  mealybinary uut(
    .a(a),
    .b(b),
    .cin(cin),
    .reset(reset),
    .clk(clk),
    .sum(sum),
    .carry(carry)
  );

  initial begin
   
    a = 0;
    b = 0;
    cin = 0;
    reset = 1;
    clk = 0;

    // Reset
    #10 reset = 0;

    #10 a = 0; b = 0; cin = 0; // 0 + 0 + 0 = 0
    #10 a = 1; b = 0; cin = 0; // 1 + 0 + 0 = 1
    #10 a = 1; b = 1; cin = 0; // 1 + 1 + 0 = 0 (carry 1)
    #10 a = 1; b = 1; cin = 1; // 1 + 1 + 1 = 1 (carry 1)
    #10 a = 0; b = 1; cin = 1; // 0 + 1 + 1 = 0 (carry 1)
    #10 $finish;
  end
  always #5 clk = ~clk;

endmodule