`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 16:35:12
// Design Name: 
// Module Name: bcdadder_tb
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


module bcd_adder_tb;
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire carry;
bcd_adder dut(sum,carry,a,b,cin);
initial begin
$monitor("a=%0b b=%0b cin=%0b sum=%0b carry=%0b",a,b,cin,sum,carry);
a=0;b=0;cin=0;
#100;
a=6;b=9;cin=1;
#100;
a=3;b=3;cin=0;
#100;
a=4;b=5;cin=0;
#100;
a=4;b=3;cin=1;
#100;
a=3;b=5;cin=0;
#100;
end

endmodule
