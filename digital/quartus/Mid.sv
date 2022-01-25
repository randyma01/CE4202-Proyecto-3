module Mid (
    input logic [15:0] a,
	 input logic [15:0] b,
	 input logic [15:0] c,
	 input logic [15:0] d,
	 output logic [63:0] result
);

assign result = ((a*d)+(b*c))<<16;
    
endmodule
