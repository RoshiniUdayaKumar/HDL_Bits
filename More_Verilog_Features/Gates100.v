module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor 
);
    assign out_and =& in[99:0];  //AND
    assign out_or =| in[99:0];   //OR
    assign out_xor=^ in[99:0];   //XOR
    

endmodule
