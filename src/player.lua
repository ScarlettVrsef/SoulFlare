x=0
y=0

hotbar_size = 16
selected_slot = 1
inventory = {
    {"Stone", 7, 999},
    {"Dirt", 8, 10},
    {"Grass", 9, 10},
    {"Planks", 12, 10},
    {"Bricks", 11, 10},
    {"Glass", 16, 10},
    {"Iron", 15, 10},
    {"Iron Ore", 13, 10},
    {"Copper Ore", 14, 10},
    {"Air (literally how)", 10, 10},
    {"Error Block", 6, 10},
    {"Menu Selector", 3, 10},
    {"Block Frame", 4, 10},
    {"Block Selector Cursor", 1, 10},
    {"Hotbar", 5, 10},
    {"Debug Player Collision Point", 19, 10}
}

mouse_offset_x = 0
mouse_offset_y = 0

function player_updates()
    cycle_items()
    movement()


    if (mouse_x>15) then
        mouse_offset_x = -16
        if (mouse_y>15) then
            mouse_chunk = current_chunk + 9
            mouse_offset_y = -16
        elseif (mouse_y<0) then
            mouse_chunk = current_chunk + -7
            mouse_offset_y = 16
        else
            mouse_chunk = current_chunk + 1
            mouse_offset_y = 0
        end
    elseif (mouse_x<0) then
        mouse_offset_x = 16
        if (mouse_y>15) then
            mouse_chunk = current_chunk + 7
            mouse_offset_y = -16
        elseif (mouse_y<0) then
            mouse_chunk = current_chunk + -9
            mouse_offset_y = 16
        else
            mouse_chunk = current_chunk + -1
            mouse_offset_y = 0
        end
    else
        mouse_offset_x = 0
        if (mouse_y>15) then
            mouse_chunk = current_chunk + 8
            mouse_offset_y = -16
        elseif (mouse_y<0) then
            mouse_chunk = current_chunk + -8
            mouse_offset_y = 16
        else
            mouse_chunk = current_chunk
            mouse_offset_y = 0
        end
    end

end

