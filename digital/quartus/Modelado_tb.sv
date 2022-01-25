module Modelado_tb();

logic [31:0] x;
logic [31:0] y;
logic [31:0] result = 32'd0;

logic [31:0] cnt;
logic fp_r;


parameter largo = 400;
reg [31:0] lectura [0:399];
logic [31:0] dato;
integer i;

Modelado modelado (x, y, result);

initial
begin
//
//	x = 32'b00000000000000111100100110011011;result = y;#10;
//	
//	x = 32'b00000010000000111100100110011011;#10;
$readmemb("./binary_data.txt",lectura);

for (i=0;i<largo;i=i+1)
begin
dato = lectura [i];
$display("%b",dato);

end
end
endmodule
