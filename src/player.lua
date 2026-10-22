x=0
xmomentum=0
ymomentum=0
y=-8
jump=0
falltime=0
fall=0
plr_x_dir=0
plr_y_dir=0
time_falling = 0
player_width = 8
player_height = 12
spd=1
coll = false
hp=100
fullhealth=1
freakout=0


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
    {"Copper", 25, 999},
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0},
    {"Air", 10, 0}
}

mouse_offset_x = 0
mouse_offset_y = 0

function dealdamage(amount)
    freakout=freakout+math.random(-amount,amount)
    hp=hp-amount
    f:stops(sounds[5])
    f:plays(sounds[5])
end

function player_updates()
    cycle_items()
    movement()
    break_apart()

    freakout=freakout*0.9
    if(hp>92)then
        fullhealth=1
    else
        fullhealth=0
    end
    if(hp<1)then
        current_chunk=36
        x=0
        y=-8
        hp=100
        fullhealth=1
    end
end

