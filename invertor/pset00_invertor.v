/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Problem set #00
*/

module pset00_invertor(
    input wire clk,
    output wire clkInv
);

assign clkInv = ~clk;

endmodule
