module SumaPE(A, B, RES, C_out, C_in);

input logic [15:-0] A, B;
input logic C_in;
output logic [15:0] RES;
output logic C_out;

wire [16:0] C_aux;

genvar i;

adder1bit Bit0 (A[0], B[0],C_in, C_aux[1], RES[0]);

generate
	for (i = 1; i < 16; i=i+1)begin : suma_N
		adder1bit BitN (A[i], B[i], C_aux[i], C_aux[i+1], RES[i]);
	end
endgenerate

assign C_out = C_aux[16];


endmodule