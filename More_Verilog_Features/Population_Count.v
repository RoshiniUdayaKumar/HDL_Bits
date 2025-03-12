module top_module( 
    input [254:0] in,
    output [7:0] out );
//always combinational block 
    always @(*) begin 
        out= 8'd0; //initialize the first bit to 0
        for(int i=0; i<255; i++) begin 
            if(in[i]==1) begin 
               out++;
              end          
        end        
    end
endmodule
