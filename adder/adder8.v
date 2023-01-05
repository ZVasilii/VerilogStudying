module adder8
(
    input [7:0] a,
    input [7:0] b,
    output [7:0] c
);

    adder addr_01(.a(a[0]), .b(b[0]), .carry_in(1'b0), .c(c[0]), .carry_out(c1));
    adder addr_02(.a(a[1]), .b(b[1]), .carry_in(c1), .c(c[1]), .carry_out(c2));
    adder addr_03(.a(a[2]), .b(b[2]), .carry_in(c2), .c(c[2]), .carry_out(c3));
    adder addr_04(.a(a[3]), .b(b[3]), .carry_in(c3), .c(c[3]), .carry_out(c4));
    adder addr_05(.a(a[4]), .b(b[4]), .carry_in(c4), .c(c[4]), .carry_out(c5));
    adder addr_06(.a(a[5]), .b(b[5]), .carry_in(c5), .c(c[5]), .carry_out(c6));
    adder addr_07(.a(a[6]), .b(b[6]), .carry_in(c6), .c(c[6]), .carry_out(c7));
    adder addr_08(.a(a[7]), .b(b[7]), .carry_in(c7), .c(c[7]), .carry_out());
endmodule
