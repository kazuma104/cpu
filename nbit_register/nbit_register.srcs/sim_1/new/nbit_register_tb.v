`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/02 11:48:28
// Design Name: 
// Module Name: nbit_register_tb
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


module nbit_register_tb;
    reg[7:0] din;
    reg load, reset, clk;
    wire[7:0] dout;
    
    nbit_register FF1(
        .din(din),
        .load(load),
        .reset(reset),
        .clk(clk),
        .dout(dout)
    );
    
    always begin
        clk = 1'b0; #50;
        clk = 1'b1; #50; 
    end
    
    initial begin
                reset=0; din=0; load=0;
        #10     reset =1;
        #100    din = 8'b0000_1111;
        #100    load = 1;
        #100    din = 8'b1111_0000;
        #100    load = 0;
        #50     reset = 0;
    end
endmodule
