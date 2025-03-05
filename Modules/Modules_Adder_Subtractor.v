module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    //wire declaration
    wire w1;
    wire [31:0] neg;
    
    //module instantiation 
    add16 inst1(a[15:0], neg[15:0],sub, sum[15:0], w1);
    add16 inst2(a[31:16], neg[31:16],w1, sum[31:16]);
    
    //XOR operation 
    assign neg= b^{{32{sub}}};

endmodule
