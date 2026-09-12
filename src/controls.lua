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
                end

                f:stops()
                f:plays(sounds[2])
            end
        end
    end
end

function cycle_items()
    function love.keypressed(key)
        if(key=="q")then
            selected_slot=selected_slot-1
        end
        if(key=="e")then
            selected_slot=selected_slot+1 
        end
    end

    if(selected_slot<1)then 
        selected_slot=hotbar_size 
    end
    if(selected_slot>hotbar_size)then 
        selected_slot=1 
    end
end


function movement()
    if(current_chunk<18 and y<=-60)then else
        if(f:key("w"))then
            y=y-1
        end
    end

    if(current_chunk<11 and x<=-60)then else
        if(f:key("a"))then
            x=x-1
        end
    end

    if(current_chunk>47 and y>=60)then else
        if(f:key("s"))then
            y=y+1
        end
    end

    if(current_chunk>54 and x>=60)then else
        if(f:key("d"))then
            x=x+1
        end
    end
end