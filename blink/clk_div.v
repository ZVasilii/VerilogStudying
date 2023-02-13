module clk_div(input clk, output clkDiv);
	
	reg[25:0] cnt = 0;
	assign clkDiv = cnt[25];
	
	always @(posedge clk) begin
		if (cnt === 26'h3ffffff)
			cnt <= 0;
		else
			cnt <= cnt + 26'b1;
	end
endmodule