module top_module (input x, input y, output z);
    //declaring wire 
    wire w1;
//using structural modelling 
    xor xor1(w1, x,y);
    and and1(z, w1, x);
    
endmodule
