`timescale 1ns / 1ps

module tb_alu_4bit;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] op;

    wire [3:0] result;
    wire carry_borrow;
    wire zero;

    alu_4bit uut (
        .A(A),
        .B(B),
        .op(op),
        .result(result),
        .carry_borrow(carry_borrow),
        .zero(zero)
    );

    initial begin

        A = 4'b0011;
        B = 4'b0010;
        op = 3'b000;
        #10;

        A = 4'b0101;
        B = 4'b0010;
        op = 3'b001;
        #10;

        A = 4'b1100;
        B = 4'b1010;
        op = 3'b010;
        #10;

        A = 4'b1100;
        B = 4'b1010;
        op = 3'b011;
        #10;

        A = 4'b1100;
        B = 4'b1010;
        op = 3'b100;
        #10;

        A = 4'b0000;
        B = 4'b0000;
        op = 3'b000;
        #10;

        $finish;

    end

endmodule
