module top_module (
    input in1,
    input in2,
    input in3,
    output out);
//wire declaration 
    wire w1;
    //logic 
    assign w1= ~(in1^in2);  //XNOR gate implementation
    assign out= (w1^in3);   //XOR gate implementation
endmodule 
