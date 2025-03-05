module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    //declaring wires 
    wire w1;
    
    //module instantiation 
    add16 inst1(a[15:0], b[15:0], 0, sum[15:0], w1);
    add16 inst2(a[31:16], b[31:16], w1, sum[31:16]);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum=a^b^cin;
    assign cout= (a&b)| (cin&(a^b));

endmodule
