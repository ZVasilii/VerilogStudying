`timescale 1 ns / 100 ps

module top();

reg[7:0] a = 8'b0;
reg[7:0] b = 8'b0;
wire[7:0] c;
adder8 adder(.a(a), .b(b), .c(c));

initial begin
    $dumpvars;
    a = 65; b = 81; #1
    $display("a = %d, b = %d, c = %d", a, b, c);
    a = 1; b = 1; #1
    $display("a = %d, b = %d, c = %d", a, b, c);
    a = 255; b = 255; #1
    $display("a = %d, b = %d, c = %d", a, b, c);
end
endmodule
