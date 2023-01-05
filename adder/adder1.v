module adder(
    input a,
    input b,
    input carry_in,
    output c,
    output carry_out
);

assign carry_out = (a & b) | ((a ^ b) & carry_in);
assign c = (a ^ b) ^ carry_in;

endmodule
