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
end

