module alu_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] op,
    output reg [3:0] result,
    output reg carry_borrow,
    output reg zero
);

always @(*) begin

    result = 4'b0000;
    carry_borrow = 1'b0;

    case (op)

        3'b000: begin
            {carry_borrow, result} = A + B;
        end

        3'b001: begin
            {carry_borrow, result} = A - B;
        end

        3'b010: begin
            result = A & B;
        end

        3'b011: begin
            result = A | B;
        end

        3'b100: begin
            result = A ^ B;
        end

        default: begin
            result = 4'b0000;
            carry_borrow = 1'b0;
        end

    endcase

    if (result == 4'b0000)
        zero = 1'b1;
    else
        zero = 1'b0;

end

endmodule
