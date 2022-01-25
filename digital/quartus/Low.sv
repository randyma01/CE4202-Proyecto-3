module Low (
    input logic [15:0] b,
	 input logic [15:0] d,
	 output logic [63:0] result
);

assign result = (b*d);
    
endmodule
