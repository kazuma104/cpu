`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/11 16:23:45
// Design Name: 
// Module Name: decode3to8_tb
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


module decode3to8_tb;
    reg[2:0] din;
    wire[7:0] dout;
    parameter STEP=100;
    
    decode3to8 uut( .din(din), .dout(dout) );
    
    initial begin 
        din = 0;

    #STEP din = 3'b000;
    #STEP din = 3'b001;
    #STEP din = 3'b010;
    #STEP din = 3'b011;
    #STEP din = 3'b100;
    #STEP din = 3'b101;
    #STEP din = 3'b110;
    #STEP din = 3'b111;
    
    end
endmodule
