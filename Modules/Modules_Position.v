module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    //sub module
    //module mod_a (output out, output out, input in, input in,input in, input in)
    //instantiate by position 
    mod_a instance1(out1, out2, a,b,c,d);

endmodule
