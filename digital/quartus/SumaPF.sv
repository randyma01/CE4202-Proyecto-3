module SumaPF(A, B, RES, C_out);

input logic [15:0] A, B;
output logic [15:0] RES;
output logic C_out;

logic [16:0] res_aux;

assign res_aux = A + B;

assign C_out = res_aux[16];
assign RES = res_aux[15:0];


endmodule
