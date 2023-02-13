module top( input CLK, KEY1,
				output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
				output DS_C);

wire clkDiv;
reg clkButton;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = 4'hf;
clk_div clk_div01(.clk(CLK), .clkDiv(clkDiv));

always @(clkDiv or KEY1)
begin
	if (KEY1)
		clkButton = clkDiv;
end

assign DS_C = clkButton;

endmodule