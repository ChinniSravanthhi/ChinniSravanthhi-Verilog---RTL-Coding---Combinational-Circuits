`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 23:02:56
// Design Name: 
// Module Name: tb4
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
module tb_mux4to1;

    reg [3:0] d;       // 4 data inputs
    reg [1:0] sel;     // select lines
    wire y;            // output

    // Instantiate the MUX module
    mux4to1 uut (
        .d(d),
        .sel(sel),
        .y(y)
    );

    // Stimulus block
    initial begin
        // Initialize inputs
        d = 4'b0000; sel = 2'b00;
        #10 d = 4'b1010; sel = 2'b00; // select d0
        #10 sel = 2'b01;               // select d1
        #10 sel = 2'b10;               // select d2
        #10 sel = 2'b11;               // select d3
        #10 d = 4'b1111; sel = 2'b10; // change data input, select d2
        #10 sel = 2'b01;               // select d1
        #10 sel = 2'b00;               // select d0
        $finish;                    // stop simulation
    end
endmodule

