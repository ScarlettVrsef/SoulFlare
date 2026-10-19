x=0
y=-8
px=0
py=-8
spd=1
coll={br=false,tr=false,bl=false,tl=false}

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
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0}
}

mouse_offset_x = 0
mouse_offset_y = 0

function player_updates()
    px=x
    py=y
    coll={br=false,tr=false,bl=false,tl=false}
    cycle_items()
    movement()
    break_apart()
    collision()
end

