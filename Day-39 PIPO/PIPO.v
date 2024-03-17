`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 16:27:59
// Design Name: 
// Module Name: PIPO
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

module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule 

module PIPO(d,clk,q);
    input [3:0] d;
    input clk;
    output [3:0]q;
    dff ee(d[3], clk, q[3]);
    dff ff(d[2], clk, q[2]);
    dff gg(d[1], clk, q[1]);
    dff hh(d[0], clk, q[0]);
endmodule