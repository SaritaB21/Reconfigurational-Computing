`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 10:34:08 PM
// Design Name: 
// Module Name: Test_Counter_N
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


module Test_Counter_N();
parameter N=4;
reg Clk;
reg Reset;
wire [N-1:0]Count;
    
Counter_N C1(Clk,Reset,Count);

initial 
begin
Clk=1'b0;
repeat(50)
begin
#5 Clk=~Clk;
end
$finish;
end

initial 
begin
Reset=1'b0;
#6 Reset=1'b1;
#12 Reset=1'b0;
end
 
endmodule
