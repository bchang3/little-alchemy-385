
module  color_mapper ( input logic  ScreenMode,
                       input  logic [9:0]  DrawX, DrawY,
                       input  logic [7:0]  PaletteIdx,
                       input  logic [7:0]  CharIdx,
                       input  logic [9:0]  MouseX,
                       input logic  [9:0]  MouseY,
                       input logic  [9:0]  MouseElementIdx,
                       input logic  [9:0]  WorkspaceElementIdx,
                       input logic  [9:0]  MenuElementIdx,
                       input logic  [9:0]  NewElement,
                       output logic [7:0]  Red, Green, Blue,
                       output logic [17:0] PixelAddress,
                       output logic [13:0] CharAddress,
                       output logic [4:0]  MenuSlotIdx,
                       output logic [9:0]  WorkspaceSlotIdx);
                       

    logic [7:0] palette_red, palette_blue, palette_green;
    logic [4:0] char_num, row_offset_x, row_offset_y;
    logic [3:0] PixelX, PixelY;
    logic [4:0] SlotX, SlotY;
    
    logic [7:0] cursor_bitmap [0:7];
    
    logic [3:0] cx, cy;
    logic [10:0] font_rom_addr;
    logic [7:0] pixel_row;
    logic pixel;

    initial begin
        cursor_bitmap[0] = 8'b10000000; // *
        cursor_bitmap[1] = 8'b11000000; // **
        cursor_bitmap[2] = 8'b11100000; // ***
        cursor_bitmap[3] = 8'b11110000; // ****
        cursor_bitmap[4] = 8'b11111000; // *****
        cursor_bitmap[5] = 8'b11001100; // **  **
        cursor_bitmap[6] = 8'b11001110; // **  ***
        cursor_bitmap[7] = 8'b10000011; // *     **
   end
    
    // Font rom data
    palette palette_inst (.index(PaletteIdx),.red(palette_red), .blue(palette_blue), .green(palette_green));
    font_rom font_rom_inst (.addr(font_rom_addr), .data(pixel_row));
    
    always_comb
    begin:RGB_Display
        row_offset_x = 0;
        row_offset_y = 0;
        PixelAddress = 0;
        PixelX = 0;
        PixelY = 0;
        char_num = 0;
        cx = DrawX - (MouseX - 4);  
        cy = DrawY - (MouseY - 4); 
        SlotX = 0;
        SlotY = 0;
        if (ScreenMode == 1'b0) begin
            if (MouseElementIdx > 0) begin
                if (DrawX >= MouseX - 4 && DrawX < MouseX + 12 && DrawY >= MouseY - 4 && DrawY < MouseY + 12) begin
                    PixelY = DrawY - (MouseY - 4);
                    PixelX = DrawX - (MouseX - 4);
                    
                    PixelAddress = 256 * (MouseElementIdx - 1) + (PixelY * 16 + PixelX);
                    if ((cx < 8 && cy < 8) && cursor_bitmap[cy][7-cx]) begin
                        Red   = 8'hFF;
                        Green = 8'hFF;
                        Blue  = 8'hFF;
                        disable RGB_Display;
                    end else begin
                        if (PaletteIdx > 0) begin
                            Red = palette_red;
                            Green = palette_green;
                            Blue = palette_blue;
                            disable RGB_Display;
                        end
                    end
                    
                end
            end else begin 
                if (DrawX >= MouseX - 4 && DrawX < MouseX + 4 && DrawY >= MouseY - 4 && DrawY < MouseY + 4) begin
                    if (cx < 8 && cy < 8) begin
                        if (cursor_bitmap[cy][7-cx]) begin
                            Red   = 8'hFF;
                            Green = 8'hFF;
                            Blue  = 8'hFF;
                            disable RGB_Display;
                        end
                    end
                end
            end
            
            if (DrawX >= 535) begin
                MenuSlotIdx = DrawY /32;
                char_num = (DrawX - 535) / 8;
                row_offset_y = DrawY % 32;
                PixelY = row_offset_y - 8;
                if (row_offset_y > 7 && row_offset_y < 24 && char_num < 12 && MenuElementIdx > 0) begin
                    CharAddress = 12 * (MenuElementIdx - 1) + char_num;
                    font_rom_addr = CharIdx[6:0] * 16 + PixelY % 16;
                    pixel = pixel_row[7-(DrawX % 8)];
                    if (pixel) begin
                        Red = 8'hFF;
                        Green = 8'hFF;
                        Blue = 8'hFF;
                    end else begin 
                        Red = 8'h39;
                        Green = 8'h00;
                        Blue = 8'h28;
                    end
                end else begin
                    Red = 8'h39;
                    Green = 8'h00;
                    Blue = 8'h28;
                end
                
            end 
            else if (DrawX >= 512 && DrawX < 528) begin
                MenuSlotIdx = DrawY / 32;
                row_offset_y = DrawY % 32;
                PixelX = DrawX - 512;
                PixelY = row_offset_y - 8;
                if (row_offset_y > 7 && row_offset_y < 24 && MenuElementIdx > 0) begin
                    PixelAddress = 256 * (MenuElementIdx - 1) + (PixelY * 16 + PixelX); 
                    if (PaletteIdx == 0) begin
                        Red = 8'h39;
                        Green = 8'h00;
                        Blue = 8'h28;
                    end else begin
                        Red = palette_red;
                        Green = palette_green;
                        Blue = palette_blue;
                    end
                end
                else begin
                    Red = 8'h39;
                    Green = 8'h00;
                    Blue = 8'h28;
                end
            end 
            else if (DrawX > 502) begin 
                Red = 8'h39;
                Green = 8'h00;
                Blue = 8'h28;
            end 
            else if (DrawX > 500) begin
                Red = 8'h0;
                Green = 8'h0;
                Blue <= 8'h0;
                
            end 
            else if (DrawX > 496) begin
                Red = 8'h26;
                Green = 8'h00;
                Blue = 8'h26;
            end
            else begin 
                SlotX = DrawX / 16;
                SlotY = DrawY / 16;
                WorkspaceSlotIdx = SlotY * 31 + SlotX;
                if (WorkspaceElementIdx > 0 && WorkspaceElementIdx <= 720) begin
                    PixelY = DrawY[3:0];
                    PixelX = DrawX[3:0];
                    PixelAddress = (256 * (WorkspaceElementIdx - 1)) + (PixelY * 16 + PixelX);
                    if (PaletteIdx == 0) begin
                        Red = 8'h26;
                        Green = 8'h00;
                        Blue = 8'h26;
                    end else begin
                        Red = palette_red;
                        Green = palette_green;
                        Blue = palette_blue;
                    end
                    
                end else begin
                    Red = 8'h26;
                    Green = 8'h00;
                    Blue = 8'h26;
                end
            end
        end else begin
            Red = 8'h39;
            Green = 8'h00;
            Blue = 8'h28;
            // new element unlocked
            if (DrawX >= 256 && DrawX < 384 && DrawY >= 176 && DrawY < 304) begin
                PixelY = (DrawY - 176) / 8;
                PixelX = (DrawX - 256) / 8;
                PixelAddress = 256 * (NewElement - 1) + (PixelY * 16 + PixelX);
                if (PaletteIdx > 0) begin
                    Red = palette_red;
                    Green = palette_green;
                    Blue = palette_blue;
                 end
            // draw new element
            end else if (DrawX >= 224 && DrawX < 416 && DrawY >= 320 && DrawY < 352) begin
                char_num = (DrawX - 224) / 16;
                CharAddress = 12 * (NewElement - 1) + char_num;
                PixelY = (DrawY / 2);
                PixelX = (DrawX / 2);
                font_rom_addr = CharIdx[6:0] * 16 + PixelY % 16;
                pixel = pixel_row[7-(PixelX % 8)];
                if (pixel) begin
                    Red = 8'hFF;
                    Green = 8'hFF;
                    Blue = 8'hFF;
                end
            end
        end
        
    end 
    
endmodule
