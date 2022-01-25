module High (
    input logic [15:0] a,
	 input logic [15:0] c,
	 output logic [63:0] result
);

assign result = {(a*c),16'b0}<<16;
    
endmodule
