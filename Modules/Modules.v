module top_module ( input a, input b, output out );

  //module mod_a (input in1, input in2, output out); This is a sub module
    //instantiate by position
    //mod_a inst (a,b,out);
    
    //instantiate by name 
    mod_a inst(.in1(a), .in2(b), .out(out));
        
        
endmodule
