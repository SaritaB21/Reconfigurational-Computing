



// For simulation only, comment out the clock division code 
// When actually going for synthesis and implementation on FPGA, use the clk division code.
//////////////////////////////////////////////////////////////////////////////////


module Counter_N(
    input Clk,
    input Reset,
    output [3:0]Count
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

//CLOCK DIVISION CO
// Following code is for the Clock division as internal clk freq is 100MHZ so 
// time period will be low and it is impossible  to observe LED On OFF pattern on the board
// the following code convert the internal clk freq approx. to around 1kHZ so that LED
// ON OFF pattern can be observed 






 