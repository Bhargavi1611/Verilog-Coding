`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2024 13:18:35
// Design Name: 
// Module Name: fullsubtractor_tb
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


module fullsubtractor_tb;
reg a,b,bin;
wire d,bout;
fullsubtractor dut(d,bout,a,b,bin);
initial begin
$monitor("a=%0b b=%0b bin=%0b d=%0b bout=%0b",a,b,bin,d,bout);
a=1'b0;b=1'b0;bin=1'b0;
#10;a=1'b0;b=1'b0;bin=1'b1;
#10;a=1'b0;b=1'b1;bin=1'b0;
#10;a=1'b0;b=1'b1;bin=1'b1;
#10;a=1'b1;b=1'b0;bin=1'b0;
#10;a=1'b1;b=1'b0;bin=1'b1;
#10;a=1'b1;b=1'b1;bin=1'b0;
#10;a=1'b1;b=1'b1;bin=1'b1;
#10;
end 
endmodule


