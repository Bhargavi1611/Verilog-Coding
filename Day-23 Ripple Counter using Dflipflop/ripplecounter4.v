`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 11:56:18
// Design Name: 
// Module Name: ripplecounter4
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

module dff(q,qn,clk,reset,d);
input clk,reset;
input d;
output reg q;
output qn;
always @(posedge clk or negedge reset)
if(!reset)
q<=0;
else
q<=d;
assign qn=~q;
endmodule

module ripplecounter4(out,clk,reset);
input clk,reset;
output [3:0] out;
wire q0,qn0,q1,qn1,q2,qn2,q3,qn3;
dff dff0(.d(qn0),.clk(clk),.reset(reset),.q(q0),.qn(qn0));
dff dff1(.d(qn1),.clk(clk),.reset(reset),.q(q1),.qn(qn1));
dff dff2(.d(qn2),.clk(clk),.reset(reset),.q(q2),.qn(qn2));
dff dff3(.d(qn3),.clk(clk),.reset(reset),.q(q3),.qn(qn3));

assign out={qn3,qn2,qn1,qn0};

endmodule
