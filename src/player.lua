x=0
y=0
spd=1

hotbar_size = 16
selected_slot = 1
inventory = {
    {"Stone", 7, 999},
    {"Dirt", 8, 999},
    {"Grass", 9, 999},
    {"Planks", 12, 999},
    {"Bricks", 11, 999},
    {"Glass", 16, 999},
    {"Iron", 15, 999},
    {"Iron Ore", 13, 999},
    {"Copper Ore", 14, 999},
    {"Water", 24, 999},
    {"Air (literally how)", 10, 10},
    {"Air (literally how)", 10, 10},
    {"Air (literally how)", 10, 10},
    {"Air (literally how)", 10, 10},
    {"Air (literally how)", 10, 10},
    {"Air (literally how)", 10, 10}
}

mouse_offset_x = 0
mouse_offset_y = 0

function player_updates()
    cycle_items()
    movement()
end

