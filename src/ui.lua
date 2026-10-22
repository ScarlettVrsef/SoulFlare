ui_position=-16

function render_ui()
        --draw ui background
            f:rgb(255,255,255)
            f:draw(sprites[5],0,-16+ui_position)
            --f:draw(sprites[21],130,-29+(ui_position*1.8125))
            --f:print("Hi :]   \n"..sine_var,140,-25+(ui_position*1.8125))
            f:draw(sprites[4],0,0)


            for i=1,8,1 do
                --draw the first line of the inventory
                f:rgb(255,255,255)
                if(inventory[i][2] ~= 10)then
                    f:draw(sprites[inventory[i][2]],27+(10*i),-6+ui_position)
                end
                if(i==selected_slot)then
                    f:rgb(255,math.sin(sine_var)*128+128,255)
                    f:draw(sprites[3],25+(10*i),-8+ui_position)
                end
            end
            for i=9,16,1 do
                --draw the second line of the inventory
                f:rgb(255,255,255)
                if(inventory[i][2] ~= 10)then
                    f:draw(sprites[inventory[i][2]],27+(10*i)-80,3+ui_position)
                end
                --draw a special outline around the selected block
                if(i==selected_slot)then
                    f:rgb(255,math.sin(sine_var)*128+128,255)
                    f:draw(sprites[3],25+(10*i)-80,1+ui_position)
                end
            end
            for i=1,8,1 do
                if(inventory[i][2] ~= 10)then
                    f:rgb(0,0,0)
                    love.graphics.print(inventory[i][3],(32+(10*i))*g_s,(0+ui_position)*g_s)
                    f:rgb(255,math.sin(sine_var)*128+128,255)
                    love.graphics.print(inventory[i][3],(33+(10*i))*g_s,(0+ui_position)*g_s)
                end
            end
            for i=9,16,1 do
                if(inventory[i][2] ~= 10)then
                    f:rgb(0,0,0)
                    love.graphics.print(inventory[i][3],(32+(10*i)-80)*g_s,(9+ui_position)*g_s)
                    f:rgb(255,math.sin(sine_var)*128+128,255)
                    love.graphics.print(inventory[i][3],(33+(10*i)-80)*g_s,(9+ui_position)*g_s)
                end
            end
        --do the same thing as when drawing the inventory, but with the amounts of each block

        --draw block names and amounts
        f:rgb(0,0,0)
        
        if(inventory[selected_slot][2] ~= 10)then
            love.graphics.print(inventory[selected_slot][1],(21+ui_position)*g_s,0*g_s,0,2,2)
            love.graphics.print(inventory[selected_slot][3],8*g_s,20*g_s,0,2,2)
        end

        f:rgb(255,math.sin(sine_var)*128+128,255)
        
        if(inventory[selected_slot][2] ~= 10)then
            love.graphics.print(inventory[selected_slot][1],(22+ui_position)*g_s,0*g_s,0,2,2)
            love.graphics.print(inventory[selected_slot][3],9*g_s,20*g_s,0,2,2)
        end

        --draw big rotating block 
        f:rgb(255,255,255)
        if(inventory[selected_slot][2] ~= 10)then
            f:drawr(sprites[17],16,16,sine_var/2,5,5)
            f:drawr(sprites[inventory[selected_slot][2]],16,16,sine_var/2,4,4)
        end

        f:rgb(255*((hp/200)+0.5),255*((hp/200)+0.5),255*((hp/200)+0.5))
        f:draw(sprites[26],70,2)
        f:rgb(255*((hp/200)+0.75),0,0)
        f:rect2(71,3,(hp/2),5)
        f:rgb(255*((hp/200)+0.5),255*((hp/200)+0.5),255*((hp/200)+0.5))
        f:drawall(sprites[27+fullhealth],121,5,(math.sin(sine_var/2)+(freakout*8))/16,4.5,4.5,0.75+((math.sin(sine_var)+freakout+4)/8),0.75+((math.sin(sine_var)+freakout+4)/8))
        love.graphics.print(hp,470,8,0,1.5,1.5)
        f:rgb(255,255,255)

        --f:print(xmomentum,0,0)


--f:print(mouse_x.."\n"..mouse_y.."\n"..mouse_chunk,0,0)
    --f:print(current_chunk,0,0)
    --f:print(inventory[selected_slot])
    
    --[[if(world[current_chunk][math.floor((x+64)/8)+(math.floor((y+64)/8)*16)+1] ~= 10)then
        f:rgb(255,0,0)
        f:print("touching",0,40)
    else
        f:rgb(255,255,255)
        f:print("free",0,40)
    end]]
end 