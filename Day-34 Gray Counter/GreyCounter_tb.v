module gray_counter_tb;
    reg clk;
    reg rst;
    wire [3:0] out;
    gray_counter dut (.clk(clk),.rst(rst),.out(out));
    initial begin
        clk = 0;
        rst = 1;
        #20; 
        rst = 0; 
        #200; 
        $finish; 
    end
    always #10 clk = ~clk; 
endmodule
