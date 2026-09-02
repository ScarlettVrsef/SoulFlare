function grab_var()
    mouse_x=math.floor((x/8)+(love.mouse.getX()/32))
    mouse_y=math.floor((y/8)+(love.mouse.getY()/32))

    mx=love.mouse.getX()/4
    my=love.mouse.getY()/4

    mcx=math.floor(x+math.floor(love.mouse.getX()/4))
    mcy=math.floor(y+math.floor(love.mouse.getY()/4))
end

function misc_updates()
    if(my>24)then
        if(ui_position>-16)then
            ui_position=ui_position-2
        end
    else
        if(ui_position<16)then
            ui_position=ui_position+2
        end
    end
end