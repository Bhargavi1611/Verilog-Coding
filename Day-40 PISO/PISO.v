`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 19:20:39
// Design Name: 
// Module Name: PISO
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

module m(I, s ,q);
    input s;
    input [1:0] I;
    output reg q;
    always @ * begin
    if(s)
    q=I[1];
    else
    q=I[0];
    end
    endmodule

module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule

module PISO(d, clk, s, q);
    input [3:0]d;
input clk,s;
    output q;
    wire q1,q2,q3,d1,d2,d3;
    dff a(d[3],clk,q1);
    m a1(q1,d[2],s,d1);
    dff b(d1,clk,q2);
    m b1(q2,d[1],s,d2);
    dff c(d2,clk,q3);
    m c1(q3,d[0],s,d3);
    dff dd(d3,clk,q);
endmodule

