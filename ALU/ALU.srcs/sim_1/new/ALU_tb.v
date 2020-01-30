`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/15 09:25:18
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb;
    reg[7:0] a, b, din;
    reg[2:0] sel;
    
    wire[7:0] q;
    
    ALU uut(
        .a(a),
        .b(b),
        .din(din),
        .sel(sel),
        .q(q)
    );
    
    initial begin
        a = 0;
        b = 0;
        sel = 3'b000;
        din = 4;
        
    #100;
    #100 a = 20; b = 10; sel = 3'b000;
    #100 a = 10; b = 8;  sel = 3'b001;
    #100 a = 10; b = 8;  sel = 3'b010;
    #100 a = 10; b = 20; sel = 3'b011;
    #100 a = 10; b = 50; sel = 3'b100;
    #100 $finish;
 
    end
endmodule
