function block_break (table, chunk)
    -- only break the block if right clicking, and only if the block selected isn't air 

    if (love.mouse.isDown(2)) then
        
        if (table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1] ~= 10) then 
            
            for i=1, hotbar_size, 1 do
                
                if (inventory[i][2] == table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1]) then
                    
                    inventory[i][3] = inventory[i][3] + 1
                end
            end

            table[chunk][(mouse_x+mouse_offset_x) + ((mouse_y+mouse_offset_y) * 16) + 1] = 10
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
    if(f:key("w"))then
        y=y-1
    end
    if(f:key("s"))then
        y=y+1
    end
    if(f:key("a"))then
        x=x-1
    end
    if(f:key("d"))then
        x=x+1
    end

    if(x>64)then
        current_chunk=current_chunk+1
        x=-64
    end
    if(x<-64)then
        current_chunk=current_chunk-1
        x=64
    end
    if(y>64)then
        current_chunk=current_chunk+8
        y=-64
    end
    if(y<-64)then
        current_chunk=current_chunk-8
        y=64
    end
end