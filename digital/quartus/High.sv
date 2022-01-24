module High (
    input logic [14:0] a,
	 input logic [14:0] c,
	 output logic [31:0] result
);

assign result = (a*c)<<8;
    
endmodule
