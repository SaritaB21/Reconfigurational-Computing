`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2021 10:24:09 PM
// Design Name: 
// Module Name: mul_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mul_tb();
reg [1:0]A_0;
reg [1:0]B_0;
reg CLK_0;
wire [3:0]P_0;
wire [1:0]out_A;

design_1_wrapper m1(A_0,B_0,CLK_0,P_0,out_A);

initial
begin
A_0 = 2'b00; B_0 =2'b01;
#10;
A_0=2'b10; B_0=2'b11;
#10;
A_0=2'b01; B_0=2'b11;
#10;
A_0=2'b00; B_0=2'b00;
#10;
A_0=2'b00; B_0=2'b00;
end
initial
begin
CLK_0=1'b0;
repeat(20)
#5 CLK_0=~CLK_0;
$finish;
end
endmodule
