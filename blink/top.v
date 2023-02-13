module top( input CLK,
				output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
				output DS_C);

wire clkDiv;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = 4'hf;
clk_div clk_div01(.clk(CLK), .clkDiv(clkDiv));
assign DS_C = clkDiv;

endmodule