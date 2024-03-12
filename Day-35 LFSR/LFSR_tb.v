

module LFSR_tb;
    reg clk;
    reg reset;
    wire [3:0] out;
    LFSR dut (
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    initial begin
        clk = 0;
        reset = 1;
        #20; // Wait for a few cycles
        reset = 0; // Release reset
        #200; // Run for some cycles
        $finish; // End simulation
    end
    always #10 clk = ~clk; 

endmodule
