`timescale 1 ns / 100 ps

module top();

    reg clk = 1'b0;

    always begin
      #1 clk = ~clk;
    end

    wire out_clk;
    tick tick_01(.clk(clk), .clk_1(out_clk));

    initial begin
        $dumpvars;
        $display("Starting simulation");
        #10 $finish;

    end
endmodule
