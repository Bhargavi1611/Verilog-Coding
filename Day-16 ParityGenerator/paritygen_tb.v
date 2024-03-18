`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 14:21:05
// Design Name: 
// Module Name: paritygen_tb
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


module paritygen_tb;
reg [2:0]a;
wire e;
paritygen dut(e,a);
initial begin
$monitor("a=%0b  e=%0b",a,e);
a=3'b000;#10;
a=3'b001;#10;
a=3'b010;#10;
a=3'b100;#10;
a=3'b101;#10;
a=3'b110;#10;
a=3'b111;#10;
end
endmodule
