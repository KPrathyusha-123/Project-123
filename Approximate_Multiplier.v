`timescale 1ns / 1ps

module Approximate_Multiplier( A , B , Trunc0 , Trunc1 , Trunc2 , Trunc3 , Product );

input [7:0] A , B  ;
input Trunc0 , Trunc1 , Trunc2  , Trunc3 ;

output [15:0] Product ;

/////1
pp_generation pp1( .Trunc0(Trunc0) , .B0(B[0]) , .A0(A[0]) , .A1(A[1]) , .PPD00(P00) , .PPD01(P01) ) ;
pp_generation pp2( .Trunc0(Trunc0) , .B0(B[1]) , .A0(A[0]) , .A1(A[1]) , .PPD00(P10) , .PPD01(P11) ) ;
pp_generation pp3( .Trunc0(Trunc0) , .B0(B[2]) , .A0(A[0]) , .A1(A[1]) , .PPD00(P20) , .PPD01(P21) ) ;
pp_generation pp4( .Trunc0(Trunc0) , .B0(B[0]) , .A0(A[2]) , .A1(A[3]) , .PPD00(P02) , .PPD01(P03) ) ;
ppg  pp01( .Trunc(Trunc0) , .B(B[2]) , .A(A[1]) , .PPD(P12) ) ;
ppg  pp01a( .Trunc(Trunc0) , .B(B[3]) , .A(A[0]) , .PPD(P30) ) ;

/////2
pp_generation pp5( .Trunc0(Trunc1) , .B0(B[4]) , .A0(A[0]) , .A1(A[1]) , .PPD00(P40) , .PPD01(P41) ) ;
pp_generation pp6( .Trunc0(Trunc1) , .B0(B[5]) , .A0(A[0]) , .A1(A[1]) , .PPD00(P50) , .PPD01(P51) ) ;
pp_generation pp7( .Trunc0(Trunc1) , .B0(B[6]) , .A0(A[0]) , .A1(A[1]) , .PPD00(P60) , .PPD01(P61) ) ;
pp_generation pp8( .Trunc0(Trunc1) , .B0(B[3]) , .A0(A[1]) , .A1(A[2]) , .PPD00(P31) , .PPD01(P32) ) ;
pp_generation pp9( .Trunc0(Trunc1) , .B0(B[2]) , .A0(A[2]) , .A1(A[3]) , .PPD00(P22) , .PPD01(P23) ) ;
pp_generation pp10( .Trunc0(Trunc1) , .B0(B[4]) , .A0(A[2]) , .A1(A[3]) , .PPD00(P42) , .PPD01(P43) ) ;
pp_generation pp11( .Trunc0(Trunc1) , .B0(B[1]) , .A0(A[3]) , .A1(A[4]) , .PPD00(P13) , .PPD01(P14) ) ;
pp_generation pp12( .Trunc0(Trunc1) , .B0(B[3]) , .A0(A[3]) , .A1(A[4]) , .PPD00(P33) , .PPD01(P34) ) ;
pp_generation pp13( .Trunc0(Trunc1) , .B0(B[0]) , .A0(A[4]) , .A1(A[5]) , .PPD00(P04) , .PPD01(P05) ) ;
pp_generation pp14( .Trunc0(Trunc1) , .B0(B[2]) , .A0(A[4]) , .A1(A[5]) , .PPD00(P24) , .PPD01(P25) ) ;
pp_generation pp15( .Trunc0(Trunc1) , .B0(B[1]) , .A0(A[5]) , .A1(A[6]) , .PPD00(P15) , .PPD01(P16) ) ;
pp_generation pp16( .Trunc0(Trunc1) , .B0(B[0]) , .A0(A[6]) , .A1(A[7]) , .PPD00(P06) , .PPD01(P07) ) ;
ppg  pp02( .Trunc(Trunc1) , .B(B[7]) , .A(A[0]) , .PPD(P70) ) ;
ppg  pp03( .Trunc(Trunc1) , .B(B[5]) , .A(A[2]) , .PPD(P52) ) ;

/////3
pp_generation pp17( .Trunc0(Trunc2) , .B0(B[7]) , .A0(A[1]) , .A1(A[2]) , .PPD00(P71) , .PPD01(P72) ) ;
pp_generation pp18( .Trunc0(Trunc2) , .B0(B[6]) , .A0(A[2]) , .A1(A[3]) , .PPD00(P62) , .PPD01(P63) ) ;
pp_generation pp19( .Trunc0(Trunc2) , .B0(B[5]) , .A0(A[3]) , .A1(A[4]) , .PPD00(P53) , .PPD01(P54) ) ;
pp_generation pp20( .Trunc0(Trunc2) , .B0(B[7]) , .A0(A[3]) , .A1(A[4]) , .PPD00(P73) , .PPD01(P74) ) ;
pp_generation pp21( .Trunc0(Trunc2) , .B0(B[4]) , .A0(A[4]) , .A1(A[5]) , .PPD00(P44) , .PPD01(P45) ) ;
pp_generation pp22( .Trunc0(Trunc2) , .B0(B[6]) , .A0(A[4]) , .A1(A[5]) , .PPD00(P64) , .PPD01(P65) ) ;
pp_generation pp23( .Trunc0(Trunc2) , .B0(B[3]) , .A0(A[5]) , .A1(A[6]) , .PPD00(P35) , .PPD01(P36) ) ;
pp_generation pp24( .Trunc0(Trunc2) , .B0(B[5]) , .A0(A[5]) , .A1(A[6]) , .PPD00(P55) , .PPD01(P56) ) ;
pp_generation pp25( .Trunc0(Trunc2) , .B0(B[2]) , .A0(A[6]) , .A1(A[7]) , .PPD00(P26) , .PPD01(P27) ) ;
pp_generation pp26( .Trunc0(Trunc2) , .B0(B[4]) , .A0(A[6]) , .A1(A[7]) , .PPD00(P46) , .PPD01(P47) ) ;
ppg  pp04( .Trunc(Trunc2) , .B(B[1]) , .A(A[7]) , .PPD(P17) ) ;
ppg  pp05( .Trunc(Trunc2) , .B(B[3]) , .A(A[7]) , .PPD(P37) ) ;

/////4
pp_generation pp27( .Trunc0(Trunc3) , .B0(B[7]) , .A0(A[5]) , .A1(A[6]) , .PPD00(P75) , .PPD01(P76) ) ;
pp_generation pp28( .Trunc0(Trunc3) , .B0(B[6]) , .A0(A[6]) , .A1(A[7]) , .PPD00(P66) , .PPD01(P67) ) ;
ppg  pp06( .Trunc(Trunc3) , .B(B[5]) , .A(A[7]) , .PPD(P57) ) ;
ppg  pp07( .Trunc(Trunc3) , .B(B[7]) , .A(A[7]) , .PPD(P77) ) ;
/////////////////////////level2
half_adder ha1 ( .a(P10) , .b(P01) , .sum(hs1) , .carry(hc1) ) ;
full_adder fa1( .a(P20) , .b(P11) , .c(P02) , .sum(fs1) , .carry(fc1) ) ;
apx4to2compressor apx1( .x1(P30) , .x2(P21) , .x3(P12) , .x4(P03) , .sum(as1) , .carry(ac1) ) ;
apx4to2compressor apx2( .x1(P40) , .x2(P31) , .x3(P22) , .x4(P13) , .sum(as2) , .carry(ac2) ) ;
apx4to2compressor apx3( .x1(P50) , .x2(P41) , .x3(P32) , .x4(P23) , .sum(as3) , .carry(ac3) ) ;
apx4to2compressor apx4( .x1(P60) , .x2(P51) , .x3(P42) , .x4(P33) , .sum(as4) , .carry(ac4) ) ;
EDC_compressor edc1( .A1(P70), .A2(P61),.A3(P52),.A4(P43),.SUM(es1),.CARRY(ec1) ) ;
half_adder ha2 ( .a(P14) , .b(P05) , .sum(hs2) , .carry(hc2) ) ;
full_adder fa2 ( .a(P24) , .b(P15) , .c(P06) , .sum(fs2) , .carry(fc2) ) ;
EDC_compressor edc2( .A1(P34), .A2(P25),.A3(P16),.A4(P07),.SUM(es2),.CARRY(ec2) ) ;
//accurate 

full_adder fa3 ( .a(P71) , .b(P62) , .c(P53) , .sum(fs3) , .carry(fc3) ) ;
half_adder ha3 ( .a(P72) , .b(P63) , .sum(hs3) , .carry(hc3) ) ;
exact_compressor cp1 ( .x1(P44) , .x2(P35) , .x3(P26) , .x4(P17) , .ci(1'b0) , .co(co1) , .carry(ca1) , .sum(cs1) ) ;
exact_compressor cp2 ( .x1(P54) , .x2(P45) , .x3(P36) , .x4(P27) , .ci(co1) , .co(co2) , .carry(ca2) , .sum(cs2) ) ;
exact_compressor cp3 ( .x1(P64) , .x2(P55) , .x3(P46) , .x4(P37) , .ci(co2) , .co(co3) , .carry(ca3) , .sum(cs3) ) ;
exact_compressor cp4 ( .x1(P74) , .x2(P65) , .x3(P56) , .x4(P47) , .ci(co3) , .co(co4) , .carry(ca4) , .sum(cs4) ) ;
exact_compressor cp5( .x1(P75) , .x2(P66) , .x3(P57) , .x4(1'b0) , .ci(co4) , .co(co5) , .carry(ca5) , .sum(cs5) ) ;
full_adder fa4 ( .a(P76) , .b(P67) , .c(co5) , .sum(fs4) , .carry(fc4) ) ;

///////////level 3

assign r1 = fs1 | hc1 ;
assign r2 = as1 | fc1 ;
full_adder fa5 ( .a(as2) , .b(ac1) , .c(P04) , .sum(fs5) , .carry(fc5) ) ;
full_adder fa6 ( .a(as3) , .b(ac2) , .c(hs2) , .sum(fs6) , .carry(fc6) ) ;
apx4to2compressor apx5( .x1(as4) , .x2(ac3) , .x3(fs2) , .x4(hc2) , .sum(as5) , .carry(ac5) ) ;
apx4to2compressor apx6( .x1(es1) , .x2(ac4) , .x3(es2) , .x4(fc2) , .sum(as6) , .carry(ac6) ) ;
exact_compressor cp6( .x1(fs3) , .x2(ec1) , .x3(cs1) , .x4(ec2) , .ci(ec1&ec2) , .co(co6) , .carry(ca6) , .sum(cs6) ) ;
exact_compressor cp7( .x1(hs3) , .x2(fc3) , .x3(cs2) , .x4(ca1) , .ci(co6) , .co(co7) , .carry(ca7) , .sum(cs7) ) ;
exact_compressor cp8( .x1(P73) , .x2(hc3) , .x3(cs3) , .x4(ca2) , .ci(co7) , .co(co8) , .carry(ca8) , .sum(cs8) ) ;
full_adder fa7 ( .a(cs4) , .b(ca3) , .c(co8) , .sum(fs7) , .carry(fc7) ) ;
full_adder fa8 ( .a(cs5) , .b(ca4) , .c(fc7) , .sum(fs8) , .carry(fc8) ) ;
full_adder fa9 ( .a(fs4) , .b(ca5) , .c(fc8) , .sum(fs9) , .carry(fc9) ) ;
full_adder fa10 ( .a(P77) , .b(fc4) , .c(fc9) , .sum(fs10) , .carry(fc10) ) ;

/////level 4

assign Product[4:0] =  { fs5 , r2 , r1 , hs1 , P00 } ;
half_adder ha4 ( .a(fs6) , .b(fc5) , .sum(Product[5]) , .carry(hc4) ) ;

full_adder fa11 ( .a(as5) , .b(fc6) , .c(hc4) , .sum(Product[6]) , .carry(fc11) ) ;
full_adder fa12 ( .a(as6) , .b(ac5) , .c(fc11) , .sum(Product[7]) , .carry(fc12) ) ;
full_adder fa13 ( .a(cs6) , .b(ac6) , .c(fc12) , .sum(Product[8]) , .carry(fc13) ) ;
full_adder fa14 ( .a(cs7) , .b(ca6) , .c(fc13) , .sum(Product[9]) , .carry(fc14) ) ;
full_adder fa15 ( .a(cs8) , .b(ca7) , .c(fc14) , .sum(Product[10]) , .carry(fc15) ) ;
full_adder fa16 ( .a(fs7) , .b(ca8) , .c(fc15) , .sum(Product[11]) , .carry(fc16) ) ;

half_adder ha5 ( .a(fs8) , .b(fc16) , .sum(Product[12]) , .carry(hc5) ) ;
half_adder ha6 ( .a(fs9) , .b(hc5) , .sum(Product[13]) , .carry(hc6) ) ;
half_adder ha7 ( .a(fs10) , .b(hc6) , .sum(Product[14]) , .carry(hc7) ) ;
assign Product[15] = fc10 | hc7 ;


endmodule

/////

module pp_generation ( Trunc0 , B0 , A0 , A1 , PPD00 , PPD01 ) ;

input Trunc0 , B0 , A0 , A1  ;

output  PPD00 , PPD01 ;

wire T , w1 ;

not g0( w1 , Trunc0 ) ;

and g1( T , B0 , w1  ) ;

and g2( PPD00 , A0 , T ) ;

and g3( PPD01 , A1 , T ) ;

endmodule 
///////
module ppg ( Trunc , B , A , PPD ) ;

input Trunc , B , A  ;

output  PPD ;

wire w1 , w2 ;

not g0( w2 , Trunc ) ;

and g1( w1 , B , w2 ) ;

and g2( PPD , w1 , A ) ;

endmodule


///////////apx 4 to 2 compressor

module apx4to2compressor( x1 , x2 , x3 , x4 , sum , carry ) ;

input x1 , x2 , x3 , x4  ;

output  sum , carry ;

assign w1 = x1 & x2 ;
assign w2 = x1 | x2 ;
assign w3 = x3 & x4 ;
assign w4 = x3 | x4 ;
assign w5 = w1 | w3 ;
assign w6 = w2 & w4 ;

assign sum = w2 ^ w4 ^ w5 ;
assign carry = w5 | w6 ;

endmodule

//full adder

module full_adder ( a , b , c , sum , carry ) ;

input a , b , c ;
output sum , carry ;

assign sum = a ^ b ^ c ;
assign carry = ( a & b ) | ( b & c ) | ( a & c )  ;

endmodule

//half adder

module half_adder ( a , b , sum , carry ) ;

input a , b  ;
output sum , carry ;

assign sum = a ^ b  ;
assign carry =  a & b  ;

endmodule

//////
module EDC_compressor( A1,A2,A3,A4,SUM,CARRY ) ;

input A1,A2,A3,A4 ;
output SUM,CARRY ;

wire w1 , w2 , w3 ;

assign w1 = A1 ^ A2 ;
assign w2 = A3 & A4 ;
assign w3 = A3 | A4 ;

assign SUM = w1 ? w2 : w3 ;
assign CARRY =  A1 | A2  ;

endmodule 

///exact compressor

module exact_compressor ( x1 , x2 , x3 , x4 , ci , co , carry , sum ) ;

input x1 , x2 , x3 , x4 , ci  ;

output  co , carry , sum ;

wire s1 ;

full_adder  fa1( .a(x1) , .b(x2) , .c(x3) , .sum(s1) , .carry(co) ) ;

full_adder  fa2( .a(s1) , .b(x4) , .c(ci) , .sum(sum) , .carry(carry) ) ;


endmodule
