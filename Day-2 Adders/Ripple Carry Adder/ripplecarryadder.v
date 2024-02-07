`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 16:41:29
// Design Name: 
// Module Name: ripplecarryadder
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


module ripplecarryadder(s,cout,a,b,cin);
  input [3:0] a,b;//4-bit bus 
input cin;
  output [3:0]s;//we get 4 sum outputs so we took 4-bit bus 
output cout;
//always @ (a,b,cin)
  assign {cout,s}=a+b+cin;//data flow model//using concatenation operator
endmodule


