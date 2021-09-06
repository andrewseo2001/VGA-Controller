`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2021 07:31:11 PM
// Design Name: 
// Module Name: vertical_counter
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


module vertical_counter(
    input clk_25Mhz,
    input enable_V_Counter,
    output reg [15:0] V_Count_Value = 0
    );
     always@(posedge clk_25Mhz) begin
     
         if( enable_V_Counter == 1'b1) begin
            if(V_Count_Value < 524) //keep counting until it reaches 525 pixels
                V_Count_Value <= V_Count_Value + 1;  
                  
            else  
                V_Count_Value <= 0; //reset Horizontal counter 
        end
     end   
endmodule
