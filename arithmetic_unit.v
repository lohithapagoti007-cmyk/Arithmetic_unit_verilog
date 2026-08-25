module arithmetic_unit (
    input  wire [63:0] a,
    input  wire [63:0] b,
    input  wire [2:0]  op,
    output reg  [63:0] result,
    output reg         carry_out
);
    always @(*) begin
        carry_out = 1'b0;
        case (op)
            3'b000: {carry_out, result} = a + b;            
            3'b001: {carry_out, result} = a - b;            
            3'b010: result = a + 1'b1;                      
            3'b011: result = a - 1'b1;                      
            3'b100: {carry_out, result} = a + b + 1'b1;     
            3'b101: {carry_out, result} = a - b - 1'b1;     
            default: result = 64'd0;
        endcase
		  end
endmodule
