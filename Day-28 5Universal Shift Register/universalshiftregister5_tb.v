`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 20:11:39
// Design Name: 
// Module Name: universalshiftregister5_tb
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


module universalshiftregister5_tb;
reg clk,rst,SI;
reg [1:0] sel;
reg [4:0] PI;
wire [4:0] PO;
wire SO;
universalshiftregister5 dut(.clk(clk),.rst(rst),.SI(SI),.PI(PI),.sel(sel),.PO(PO));
always #5 clk=~clk;
initial begin

      clk = 0;
      rst = 1;
      SI = 0;
      sel = 0;
      PI = 5'b10101;
      // Apply reset
      #10 rst = 0;
      // Test case 1: sel = 00
      #20 sel = 2'b00;
      #10;
      // Test case 2: sel = 01
      #20 sel = 2'b01;
      #10 SI = 1;
      #10 SI = 0;
      #10;
      // 3: sel = 10
      #20 sel = 2'b10;
      #10 SI = 1;
      #10 SI = 0;
      #10;
      #20 sel = 2'b11;//4:sel=11
      #10;
      #10 $finish;
  end

endmodule

