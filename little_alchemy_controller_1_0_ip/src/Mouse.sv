module mouse 
(
    input  logic        Reset,
    input  logic        frame_clk,
    input  logic  signed [7:0] Mouse_XDiff,
    input  logic  signed [7:0] Mouse_YDiff,
    input  logic [7:0]  Buttons,
    output logic [9:0]  Mouse_X,
    output logic [9:0]  Mouse_Y
);

    // Cursor bounds and initial position
    parameter signed [10:0] Mouse_X_Center = 320;
    parameter signed [10:0] Mouse_Y_Center = 240;
    parameter signed [10:0] Mouse_X_Min    = 0;
    parameter signed [10:0] Mouse_X_Max    = 639;
    parameter signed [10:0] Mouse_Y_Min    = 0;
    parameter signed [10:0] Mouse_Y_Max    = 479;

    logic signed [10:0] Mouse_X_Move;
    logic signed [10:0] Mouse_Y_Move;
    
    logic signed [10:0] Mouse_X_Next;
    logic signed [10:0] Mouse_Y_Next;

    always_comb begin
        Mouse_X_Move = (Mouse_XDiff * 16 + (Mouse_XDiff >= 0 ? 50 : -50)) / 100;
        Mouse_Y_Move = (Mouse_YDiff * 16 + (Mouse_YDiff >= 0 ? 50 : -50)) / 100;
        
        Mouse_X_Next = $signed({1'b0, Mouse_X}) + Mouse_X_Move;
        Mouse_Y_Next = $signed({1'b0, Mouse_Y}) + Mouse_Y_Move;

        if (Mouse_Y_Next + 4 >= Mouse_Y_Max)
            Mouse_Y_Next = Mouse_Y_Max - 4;
        else if (Mouse_Y_Next < Mouse_Y_Min + 4)
            Mouse_Y_Next = Mouse_Y_Min + 4;

        if (Mouse_X_Next + 4 >= Mouse_X_Max)
            Mouse_X_Next = Mouse_X_Max - 4;
        else if (Mouse_X_Next < Mouse_X_Min + 4)
            Mouse_X_Next = Mouse_X_Min + 4;
    end

    always_ff @(posedge frame_clk) begin : Move_Cursor
        if (Reset) begin
            Mouse_X <= Mouse_X_Center;
            Mouse_Y <= Mouse_Y_Center;
        end else begin
            Mouse_X <= Mouse_X_Next;
            Mouse_Y <= Mouse_Y_Next;
        end
    end

endmodule
