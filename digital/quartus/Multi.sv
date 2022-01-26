module Multi (
	input logic [15:0] a,
	input logic [15:0] b,
	input logic [15:0] c,
	input logic [15:0] d,
	output logic [63:0] resultH,
	output logic [63:0] resultM,
	output logic [63:0] resultL,
	
	output logic [31:0] result,
	output logic [15:0] resultE,
	output logic [15:0] resultF
);



High h (a, c, resultH);

Mid m (a,b,c,d, resultM);

Low l (b, d, resultL);


assign result = resultH[47:16]+resultM[47:16]+resultL[47:16];
assign resultE = result[31:16];
assign resultF = result[15:0];

    
endmodule
