module alu(
    input        oe,
    input  [3:0] command_in,
    input  [7:0] a_in,
    input  [7:0] b_in,
    output reg [15:0] d_out
);

always @(*) begin
    if (oe) begin
        case(command_in)

            // Arithmetic Operations
            4'b0000 : d_out = a_in + b_in;          // ADD
            4'b0001 : d_out = a_in - b_in;          // SUB
            4'b0010 : d_out = a_in * b_in;          // MUL
            4'b0011 : d_out = (b_in != 0) ? (a_in / b_in) : 16'd0; // DIV
            4'b0100 : d_out = a_in + 1;             // INC A
            4'b0101 : d_out = a_in - 1;             // DEC A

            // Logical Operations
            4'b0110 : d_out = a_in & b_in;          // AND
            4'b0111 : d_out = a_in | b_in;          // OR
            4'b1000 : d_out = a_in ^ b_in;          // XOR
            4'b1001 : d_out = ~(a_in);              // NOT A

            // Shift Operations
            4'b1010 : d_out = a_in << 1;            // Left Shift
            4'b1011 : d_out = a_in >> 1;            // Right Shift

            // Compare Operations
            4'b1100 : d_out = (a_in == b_in);       // Equal
            4'b1101 : d_out = (a_in > b_in);        // Greater Than
            4'b1110 : d_out = (a_in < b_in);        // Less Than

            // Pass A
            4'b1111 : d_out = a_in;

            default : d_out = 16'd0;

        endcase
    end
    else
        d_out = 16'bz;     // Output disabled (Tri-state)
end

endmodule
