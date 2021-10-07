`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 10:17:51 PM
// Design Name: 
// Module Name: Counter_N
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


module Counter_N(
    input Clk,
    input Reset,
    output [3:0] Count
    );
    reg [3:0]Count;
    
    always@(posedge Clk)
    begin
    if(Reset==1'b1)
        Count = 0;
    else
    Count = Count + 1;
    end
endmodule        

