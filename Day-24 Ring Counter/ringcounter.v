module ringcounter(
    input clk, 
    input reset,
    output reg [3:0] out
);

    reg [3:0] counter;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            counter <= 4'b0001;
        end
        else begin
            counter <= {counter[2:0], counter[3]};
        end
    end

    always @ *
    begin
     out = counter;
end
endmodule
