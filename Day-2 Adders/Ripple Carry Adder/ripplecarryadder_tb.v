`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2024 19:30:00
// Design Name: 
// Module Name: ripplecarryadder_tb
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


module ripplecarryadder_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
ripplecarryadder dut(s,cout,a,b,cin);
initial 
$monitor("a=%0b b=%0b cin=%0b s=%0b cout=%0b",a,b,cin,s,cout);
initial begin
a=0;b=0;cin=0;
repeat(16) begin
#10 a=a+1;
repeat(16) begin
#10 b=b+1;
repeat(2)
#10 cin=~cin;
end //repeat(16)
end //repeat(16)
end
endmodule
