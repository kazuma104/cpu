`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/12 01:33:53
// Design Name: 
// Module Name: mux8_tb
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


module mux8_tb;
    reg[7:0] din0,din1,din2,din3,din4,din5,din6,din7;
    reg[2:0] sel;
    wire[7:0] dout;
    
    mux8 FF1( .sel(sel), .din0(din0), .din1(din1), .din2(din2), .din3(din3), 
        .din4(din4), .din5(din5), .din6(din6), .din7(din7), .dout(dout) );
        
    initial begin
        din0 = 10; din1 = 20; din2 = 30;
        din3 = 40; din4 = 50; din5 = 60;
        din6 = 70; din7 = 80; sel = 3'b000;
    #10 sel = 3'b001;
    #10 sel = 3'b010;
    #10 sel = 3'b011;
    #10 sel = 3'b100;
    #10 sel = 3'b101;
    #10 sel = 3'b110;
    #10 sel = 3'b111;
    #10 $finish;
    end
endmodule
