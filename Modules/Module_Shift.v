module top_module ( input clk, input d, output q );
    //declare wires
    wire w1,w2;
//sub-module 
    //module my_dff(input clk, input d, output q)
   
  //instantiate three modules     
    my_dff dff1(clk, d, w1);
    my_dff dff2(clk, w1, w2);
    my_dff dff3(clk, w2, q);
  
endmodule
