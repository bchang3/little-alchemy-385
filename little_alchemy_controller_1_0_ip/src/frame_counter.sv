
module frame_counter(
        input logic Reset,
        input logic frame_clk,
        output logic [31:0] frame_cnt
    );
    always_ff @(posedge frame_clk)
    begin 
        if (Reset)
        begin 
            frame_cnt <= 0;
        end 
        else 
        begin
            frame_cnt <= frame_cnt + 1;
        end
    end
endmodule
