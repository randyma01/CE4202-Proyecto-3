module Modelado (
    input logic [31:0] x,
	 output logic [31:0] y
);

logic [31:0] a1 = 32'd1;
logic [31:0] b0 = 32'd2;
logic [31:0] b1 = 32'd3;

logic [31:0] w0 = 32'd10;

int cont = 0;

logic [15:0] resf;
logic [15:0] rese;
logic c_out;
logic C_out; 

logic [31:0] result = 32'd0;

SumaPF sumapf (x[15:0], result[15:0], resf, c_out);
SumaPE sumape (x[31:16], result[31:16], rese, C_out, c_out);

assign y = {rese, resf};
    
endmodule
