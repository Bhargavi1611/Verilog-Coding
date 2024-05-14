`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 08:58:24
// Design Name: 
// Module Name: moore
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


module moore(
    input reset,
    input clk,
    input in,
    output reg det
    );
reg [2:0] pr_stage, nx_stage; parameter  a=3'b000;
parameter b=3'b010;
parameter c=3'b011 ;
parameter d=3'b100 ;
always@(posedge clk)
begin
    if(reset)
        pr_stage<=a;
    else
    pr_stage<=nx_stage; 
end
always@(pr_stage,in)
case(pr_stage)
    a:if(in==1)
    nx_stage=b;
    else
    nx_stage=a;
    b:if(in==0)
    nx_stage=c;
    else
    nx_stage=b;
    c:if(in==1)
    nx_stage=d;
    else
    nx_stage=a;
    d:if(in==1)
    nx_stage=b;
    else
    nx_stage=c;
    default:nx_stage=a;
endcase


always@(pr_stage)
case(pr_stage)
    a: det=0;
    b: det=0;
    c: det=0;
    d: det=1;
    default: det=0;
endcase
endmodule

    