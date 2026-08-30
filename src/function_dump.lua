function grab_var()
    mouse_x=math.floor((x/8)+(love.mouse.getX()/24))
    mouse_y=math.floor((y/8)+(love.mouse.getY()/24))
end

function misc_updates()
    if(mouse_y>3)then
        if(ui_position>-16)then
            ui_position=ui_position-2
        end
    else
        if(ui_position<16)then
            ui_position=ui_position+2
        end
    end
end