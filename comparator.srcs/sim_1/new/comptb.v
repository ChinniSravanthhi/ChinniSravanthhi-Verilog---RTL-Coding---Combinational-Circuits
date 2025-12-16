`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2025 18:00:15
// Design Name: 
// Module Name: comptb
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

module tb_comparator_4bit();

    reg [3:0] A;
    reg [3:0] B;
    wire A_gt_B;
    wire A_lt_B;
    wire A_eq_B;

    // Instantiate the comparator module
    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    initial begin
        // Display header
        $display("Time\tA\tB\tA>B\tA<B\tA==B");

        // Test cases
        A = 4'b0010; B = 4'b0011; #10;
        A = 4'b0101; B = 4'b0101; #10;
        A = 4'b1111; B = 4'b0110; #10;
        A = 4'b0000; B = 4'b0000; #10;

        $finish;
    end

endmodule
