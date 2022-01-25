module Suma (
    input logic [31:0] a,
	 input logic [31:0] b,
	 output logic [31:0] result
);


logic [15:0] resf;
logic [15:0] rese;
logic c_f;
logic C_out; 


SumaPF sumapf (a[15:0], b[15:0], resf, c_f);
SumaPE sumape (a[31:16], b[31:16], rese, C_out, c_f);

assign result = {rese, resf};
    
endmodule
