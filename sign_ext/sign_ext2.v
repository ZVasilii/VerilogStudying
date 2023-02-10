module sign_ext2(
    input [11:0]imm,

    output [31:0]ext_imm
);

reg [19:0]ext;
always @(*) begin
    ext = imm[11] ? 20'hfffff : 20'h0;
end

assign ext_imm = {ext, imm};

endmodule
