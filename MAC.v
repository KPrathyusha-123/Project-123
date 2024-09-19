`timescale 1ns / 1ps

module MAC( clk ,rst, Trunc0 , Trunc1 , Trunc2 , Trunc3, A ,B, Mac_out );

input clk ,rst ;
input Trunc0 , Trunc1 , Trunc2 , Trunc3 ;
input [7:0] A ,B ;

output [15:0] Mac_out ;

wire [15 :0] Product , Add_out ;

Approximate_Multiplier inst1( .A(A) , .B(B) , .Trunc0(Trunc0) , .Trunc1(Trunc1) , .Trunc2(Trunc2) , .Trunc3(Trunc3) , .Product(Product) );

RCA inst2( .A(Product),.B(Mac_out),.Cin(1'b0),.Sum(Add_out),.Carry(go)) ;

Register inst3( .clk(clk) ,.rst(rst) , .Din(Add_out) ,.Dout(Mac_out) ) ;

endmodule

//ADDER
module RCA(A,B,Cin,Sum,Carry) ;

input [15:0] A,B ;
input Cin ;

output [15:0] Sum ;
output Carry ;

full_adder fa1( .a(A[0]) , .b(B[0]) , .c(Cin) , .sum(Sum[0]) , .carry(c1) ) ;
full_adder fa2( .a(A[1]) , .b(B[1]) , .c(c1) , .sum(Sum[1]) , .carry(c2) ) ;
full_adder fa3( .a(A[2]) , .b(B[2]) , .c(c2) , .sum(Sum[2]) , .carry(c3) ) ;
full_adder fa4( .a(A[3]) , .b(B[3]) , .c(c3) , .sum(Sum[3]) , .carry(c4) ) ;

full_adder fa5( .a(A[4]) , .b(B[4]) , .c(c4) , .sum(Sum[4]) , .carry(c5) ) ;
full_adder fa6( .a(A[5]) , .b(B[5]) , .c(c5) , .sum(Sum[5]) , .carry(c6) ) ;
full_adder fa7( .a(A[6]) , .b(B[6]) , .c(c6) , .sum(Sum[6]) , .carry(c7) ) ;
full_adder fa8( .a(A[7]) , .b(B[7]) , .c(c7) , .sum(Sum[7]) , .carry(c8) ) ;

full_adder fa9( .a(A[8]) , .b(B[8]) , .c(c8) , .sum(Sum[8]) , .carry(c9) ) ;
full_adder fa10( .a(A[9]) , .b(B[9]) , .c(c9) , .sum(Sum[9]) , .carry(c10) ) ;
full_adder fa11( .a(A[10]) , .b(B[10]) , .c(c10) , .sum(Sum[10]) , .carry(c11) ) ;
full_adder fa12( .a(A[11]) , .b(B[11]) , .c(c11) , .sum(Sum[11]) , .carry(c12) ) ;

full_adder fa13( .a(A[12]) , .b(B[12]) , .c(c12) , .sum(Sum[12]) , .carry(c13) ) ;
full_adder fa14( .a(A[13]) , .b(B[13]) , .c(c13) , .sum(Sum[13]) , .carry(c14) ) ;
full_adder fa15( .a(A[14]) , .b(B[14]) , .c(c14) , .sum(Sum[14]) , .carry(c15) ) ;
full_adder fa16( .a(A[15]) , .b(B[15]) , .c(c15) , .sum(Sum[15]) , .carry(Carry) ) ;


endmodule 

//register

module Register( clk ,rst , Din ,Dout ) ;

input clk ,rst  ;
input [15:0] Din  ;

output reg[15:0] Dout  ;

always @(posedge clk or posedge rst)

begin
	if(rst) Dout <= 0 ;
	else Dout <= Din ;

end

endmodule 