module t_using_jk_flipflop_tb;

reg reset = 1, clk = 0;
reg t, j, k;
wire q;

t_using_jk_flipflop dut(q, clk, reset, t);

initial begin
    $monitor("t=%0b j=%0b k=%0b q=%0b", t, j, k, q);
    reset = 0;
    #10;
    t = 0; j = 0; k = 0; // Hold (no toggle)
    #10;
    t = 1; j = 0; k = 0; // Toggle (q inverts on each clock edge)
    #10;
    t = 0; j = 1; k = 0; // Set (q = 1)
    #10;
    t = 0; j = 0; k = 1; // Reset (q = 0)
    #10;
    t = 1; j = 1; k = 1; // Undefined state (Don't care)
    #10;
    $finish;
end

always #5 clk =~clk;

endmodule
