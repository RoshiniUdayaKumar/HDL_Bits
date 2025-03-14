//Step1: Creating sub-module A 
module crktA(input x, input y, output z);
    wire w1;
        xor xor1(w1, x,y);
    and and1(z, w1, x);
endmodule

//Step2: Creating sub-module B
module crktB(input x, input y, output z);
    assign z= ~(x^y);
endmodule

//Top-module 
module top_module (input x, input y, output z);
    //declaring wires 
    wire w1,w2,w3,w4;
    wire out1, out2;
//creating instances of sub-modules 
    crktA IA1(x,y,w1);
    crktA IA2(x,y,w2);
    crktB IB1(x,y,w3);
    crktB IB2(x,y,w4);
    //implementing logic 
    or or1(out1, w1,w2);
    and and1(out2, w3, w4);
    xor xor1(z, out1, out2);
    
    
endmodule
