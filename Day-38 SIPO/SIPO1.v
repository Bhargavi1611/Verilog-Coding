`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 15:43:41
// Design Name: 
// Module Name: SIPO1
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

module SIPO1(d,clk,q);
    input d,clk;
    output [3:0]q;
    dff aa(d, clk, q[3]);
    dff bb(q[3], clk, q[2]);
    dff cc(q[2], clk, q[1]);
    dff dd(q[1], clk, q[0]);
endmodule
