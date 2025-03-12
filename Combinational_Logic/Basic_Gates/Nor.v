module top_module (
    input in1,
    input in2,
    output out);
//NOR gate, a combination of NOT-OR gate 
    assign out=~(in1|in2); 
endmodule
