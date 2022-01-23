module SumaPF(A, B, RES, C_out);

input logic [15:-0] A, B;
output logic [15:0] RES;
output logic C_out;

wire [16:0] C_aux;

genvar i;

adder1bit Bit0 (A[0], B[0], 1'b0, C_aux[1], RES[0]);

generate
	for (i = 1; i < 16; i=i+1)begin : suma_N
		adder1bit BitN (A[i], B[i], C_aux[i], C_aux[i+1], RES[i]);
	end
endgenerate

assign C_out = C_aux[16];


endmodule