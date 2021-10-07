module mux(
    output C,
    input [3:0] A,
    input [1:0] B   
    );
    reg C;
    
    always@(*)
    begin
    case(B)
    2'b00 : C= A[0];
    2'b01 : C= A[1];
    2'b10 : C= A[2];
    2'b11 : C= A[3];
 endcase
    end
endmodule