module Multi (
	input logic [31:0] A,
	input logic [31:0] B,
	output logic [63:0] resultH,
	output logic [63:0] resultM,
	output logic [63:0] resultL,
	
	output logic [31:0] result,
	output logic [15:0] resultE,
	output logic [15:0] resultF
);

logic [15:0] a = A[31:16];
logic [15:0] b = A[15:0];
logic [15:0] c = B[31:16];
logic [15:0] d = B[15:0];

High h (a, c, resultH);

Mid m (a,b,c,d, resultM);

Low l (b, d, resultL);


assign result = resultH[47:16]+resultM[47:16]+resultL[47:16];
assign resultE = result[31:16];
assign resultF = result[15:0];

    
endmodule
