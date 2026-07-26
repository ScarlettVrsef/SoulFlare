function block_break(chunk)
    if(love.mouse.isDown(2))then
        for i=1,hotbar_size,1 do
            if(inventory[i][2]==chunk[(mouse_x-math.floor(x/16))+((mouse_y-math.floor(y/16))*16)+1])then
                inventory[i][3] = inventory[i][3] + 1
            end
        end
        chunk[(mouse_x-math.floor(x/16))+((mouse_y-math.floor(y/16))*16)+1]=10
    end
end
function block_place(chunk)
    if(love.mouse.isDown(1))then
        if(chunk[(mouse_x-math.floor(x/16))+((mouse_y-math.floor(y/16))*16)+1]==10)then
            chunk[(mouse_x-math.floor(x/16))+((mouse_y-math.floor(y/16))*16)+1] = inventory[selected_slot][2]
            inventory[selected_slot][3] = inventory[selected_slot][3] - 1
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
end