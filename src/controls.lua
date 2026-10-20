buttonspresseddir={w=false,a=false,s=false,d=false}

function block_break (table, chunk)
    -- only break the block if right clicking, and only if the block selected isn't air 

    if (love.mouse.isDown(2)) then
        
        if (table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1] ~= 10) then 
            local block_slotted = false
            for i=1, hotbar_size, 1 do

                if (inventory[i][2] == table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1]) then
                    
                    inventory[i][3] = inventory[i][3] + 1
                    block_slotted=true

                elseif (inventory[i][2] == 10 and block_slotted == false) then
                    inventory[i][1] = sprnames[table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1]]
                    inventory[i][2] = table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1]
                    inventory[i][3] = 1
                    block_slotted=true
                end
                
            end

            table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1] = 10
            f:stops()
            f:plays(sounds[1])
        end
    end
end

function block_place (table, chunk)

    if (love.mouse.isDown(1)) then

        if (inventory[selected_slot][3] <= 0) then

        else

            if (table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1] == 10) then

                table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1] = inventory[selected_slot][2]

                inventory[selected_slot][3] = inventory[selected_slot][3] - 1

                if (inventory[selected_slot][3] == 0) then
                    inventory[selected_slot][1] = sprnames[10]
                    inventory[selected_slot][2] = 10
                    selected_slot = selected_slot - 1
                end

                f:stops()
                f:plays(sounds[2])
            end
        end
    end
end

function break_apart ()
    -- only break the block if right clicking, and only if the block selected isn't air 
    if (f:key("z")) then
        
        if(inventory[selected_slot][2]==22)then

            inventory[selected_slot][3]=inventory[selected_slot][3]-1

            for i=1,hotbar_size,1 do
                if(inventory[i][2]==22)then
                    inventory[i][3]=inventory[i][3]+2
                elseif(inventory[i][2]==10) then
                    inventory[i][1] = "Planks"
                    inventory[i][2] = 12
                    inventory[i][3] = 2
                end
            end
                f:stops()
                f:plays(sounds[1])
        end
    end
end

function cycle_items()
    function love.keypressed(key)
        if(key=="q")then
            if(selected_slot - 1 > 0)then
                selected_slot = selected_slot - 1
            else
                selected_slot=hotbar_size
                while(inventory[selected_slot][2] == 10)do
                    selected_slot = selected_slot - 1
                end
            end
        end
        if(key=="e")then
            if(inventory[selected_slot + 1][2] ~= 10)then
                selected_slot = selected_slot + 1 
            else
                selected_slot = 1
            end
        end

        if(key == "space")then
            if(collcheck(0,3)==false)then
                jump=3
            end
        end
    end
end


function movement()

    if(f:key("lshift"))then
        spd=2
    else
        spd=1
    end
    
    buttonspresseddir={w=false,a=false,s=false,d=false}

    
    --buttonspresseddir.s=true

    --[[function love.keypressed(key)

        if(key == "space")then
            y=y-16
        end

    end]]

    

    --[[if(f:key("lctrl"))then
        y=y+2
    end]]

    if(collcheck(0,-2))then
        --[[if(current_chunk<18 and y<=-60)then else
            if(f:key("w"))then
                y=y-spd
                buttonspresseddir.w=true
            end
        end]]

        if(jump>0)then
            if(collcheck(0,-jump-2))then
                y=y-math.ceil(jump)
                jump=jump-0.125
            else
                jump=0
                while(collcheck(0,-2))do
                    y=y-1
                end
            end
        end


    end

    if(collcheck(-2,0))then
        if(current_chunk<11 and x<=-60)then else
            if(f:key("a"))then
                x=x-spd
                buttonspresseddir.a=true
            end
        end
    end

    if(collcheck(0,2))then
        --[[if(current_chunk>47 and y>=60)then else
            if(f:key("s"))then
                y=y+spd
                buttonspresseddir.s=true
            end
        end]]
        if(fall<2 and jump<1)then
            fall=fall+0.25
        end
        if(collcheck(0,fall+2))then
            y=y+math.floor(fall)
        else
            while(collcheck(0,2))do
                y=y+1
            end
        end
    else
        fall=0
    end

    if(collcheck(2,0))then
        if(current_chunk>54 and x>=60)then else
            if(f:key("d"))then
                x=x+spd
                buttonspresseddir.d=true
            end
        end
    end

    if(collcheck(0,-1))then
        y=y-1
    end
    if(collcheck(-1,0))then
        x=x-1
    end
    if(collcheck(0,1))then
        y=y+1
    end
    if(collcheck(1,0))then
        x=x+1
    end

end