module top_module (
    input [7:0] in,
    output [31:0] out );//

    // assign out = { replicate-sign-bit , the-input };
  //check the MSB to sign extend the bits
    assign out= (in[7]==1'b1)?{{24{1'b1}},in}:{{24{1'b0}},in};
endmodule
