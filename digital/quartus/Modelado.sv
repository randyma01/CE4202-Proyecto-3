module Modelado (
    input logic [31:0] x,
	 output logic [31:0] y,
	 output logic [31:0] w
);

//Constantes
logic [31:0] a1 = 32'd1;//es una constante ya dispuesta en negativo
logic [31:0] b0 = 32'd2;
logic [31:0] b1 = 32'd3;

logic [31:0] w0 = 32'd10; //W inicial
logic [31:0] xmax = 32'd0;//constante -xmax[n]/2

int cont = 0;

//variables w[n]
logic [31:0] xn, wx, rh1, rl1, rm1, re1, rf1, wn;


//w[n]

Suma s1 (x, xmax, xn);
Multi m1 (a1, wx, rh1, rm1, rl1, rm1, re1, rf1);
Suma s2 (xn, rm1, wn);

//variables y[n]
logic [31:0] rh2, rl2, rm2, re2, rf2;
logic [31:0] rh3, rl3, rm3, re3, rf3;


//y[n]
Multi m2 (b0, wx, rh2, rm2, rl2, rm2, re2, rf2);
Multi m3 (b1, wn, rh3, rm3, rl3, rm3, re3, rf3);
Suma s3 (rm2, rm3, y);

assign w = wn;
    
endmodule
