module sign_ext(
    input [11:0]imm,

    output [31:0]ext_imm
);
reg [31:12]ext;

always @(*) begin
if (imm[11])
    ext = 20'hfffff;
else
    ext = 20'h0;
end

assign ext_imm = {ext, imm};


endmodule
