module Multi_tb();

logic [15:0] a;
logic [15:0] b;
logic [15:0] c;
logic [15:0] d;

logic [31:0] A;
logic [31:0] B;

logic [63:0] resultH;
logic [63:0] resultM;
logic [63:0] resultL;
logic [31:0] result;
logic [15:0] resultE;
logic [15:0] resultF;

Multi multi (A,B,resultH, resultM, resultL, result, resultE, resultF);


initial
begin

a = 16'd1;
b = 16'b1000000000000000;
c = 16'd3;
d = 16'b0100000000000000;

A = {a,b};
B = {c,d};


end
endmodule
