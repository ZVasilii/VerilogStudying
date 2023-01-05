`timescale 1 ns / 100 ps

module top();

    reg a = 1'b1;
    reg b = 1'b1;
    reg c_in = 1'b0;

    wire c;
    wire c_out;

    adder addder_1(.a(a), .b(b), .carry_in(c_in), .c(c), .carry_out(c_out));

    initial begin
        $dumpvars;
        a = 1'b0; b = 1'b0; c_in = 1'b0; #1
        $display("a = %d, b = %d, c = %d, c_in = %d, c_out  =%d", a, b, c, c_in, c_out);
        a = 1'b0; b = 1'b0; c_in = 1'b1; #1
        $display("a = %d, b = %d, c = %d, c_in = %d, c_out  =%d", a, b, c, c_in, c_out);
        a = 1'b1; b = 1'b1; c_in = 1'b1; #1
        $display("a = %d, b = %d, c = %d, c_in = %d, c_out  =%d", a, b, c, c_in, c_out);
        $finish;
    end
endmodule
