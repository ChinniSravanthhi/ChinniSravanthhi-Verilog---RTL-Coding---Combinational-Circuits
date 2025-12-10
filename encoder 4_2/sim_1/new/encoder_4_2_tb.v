`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2025 18:35:53
// Design Name: 
// Module Name: encoder_4_2_tb
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
module encoder_4to2_tb();

reg [3:0] in;
reg en;
wire [1:0] out;

encoder_4to2 dut (.in(in), .en(en), .out(out));

integer i;

initial begin
    en = 1;
    for(i=0; i<8; i=i+1) begin
        in = $random();
        #10;
        $display("in=%b en=%b out=%b", in, en, out);
    end
end

initial begin
    #200;
    $finish;
end

endmodule


