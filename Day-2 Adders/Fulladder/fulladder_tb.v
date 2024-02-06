`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 16:28:17
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
reg a,b,cin;
wire s,c;
fulladder dut(s,c,a,b,cin);
initial begin
$monitor("a=%0b b=%0b cin=%0b s=%0b c=%0b",a,b,cin,s,c);
a=1'b0;b=1'b0;cin=1'b0;
#10;a=1'b0;b=1'b0;cin=1'b1;
#10;a=1'b0;b=1'b1;cin=1'b0;
#10;a=1'b0;b=1'b1;cin=1'b1;
#10;a=1'b1;b=1'b0;cin=1'b0;
#10;a=1'b1;b=1'b0;cin=1'b1;
#10;a=1'b1;b=1'b1;cin=1'b0;
#10;a=1'b1;b=1'b1;cin=1'b1;
#10;
end 
endmodule
