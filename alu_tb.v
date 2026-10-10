module alu_tb;

reg        oe;
reg [3:0]  command_in;
reg [7:0]  a_in;
reg [7:0]  b_in;

wire [15:0] d_out;

integer i;

// Instantiate ALU
alu DUT (
    .oe(oe),
    .command_in(command_in),
    .a_in(a_in),
    .b_in(b_in),
    .d_out(d_out)
);

initial begin

    oe = 1'b1;
    a_in = 8'd20;
    b_in = 8'd5;

    for(i=0;i<16;i=i+1)
    begin
        command_in = i;
        #10;
    end

    oe = 1'b0;
    #10;

    $finish;
end

initial
begin
    $monitor("Time=%0t OE=%b CMD=%b A=%d B=%d OUT=%d",
             $time,oe,command_in,a_in,b_in,d_out);
end

endmodule
