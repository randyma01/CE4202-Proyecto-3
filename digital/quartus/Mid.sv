module Mid (
    input logic [14:0] a,
	 input logic [15:0] b,
	 input logic [14:0] c,
	 input logic [15:0] d,
	 output logic [31:0] result
);

assign result = (a*d)+(b*c);
    
endmodule
