ui_position=-16

function render_hotbar()

        --draw ui background
            f:rgb(255,255,255)
            f:draw(sprites[5],0,-16+ui_position)
            f:draw(sprites[4],0,0)


            for i=1,8,1 do
                --draw the first line of the inventory
                f:rgb(255,255,255)
                f:draw(sprites[inventory[i][2]],27+(10*i),-6+ui_position)

                if(i==selected_slot)then
                    f:rgb(255,math.sin(sine_var)*128+128,255)
                    f:draw(sprites[3],25+(10*i),-8+ui_position)
                end
            end
            for i=9,16,1 do
                --draw the second line of the inventory
                f:rgb(255,255,255)
                f:draw(sprites[inventory[i][2]],27+(10*i)-80,3+ui_position)

                --draw a special outline around the selected block
                if(i==selected_slot)then
                    f:rgb(255,math.sin(sine_var)*128+128,255)
                    f:draw(sprites[3],25+(10*i)-80,1+ui_position)
                end
            end
            for i=1,8,1 do
                f:rgb(0,0,0)
                love.graphics.print(inventory[i][3],(32+(10*i))*g_s,(0+ui_position)*g_s)
                f:rgb(255,math.sin(sine_var)*128+128,255)
                love.graphics.print(inventory[i][3],(33+(10*i))*g_s,(0+ui_position)*g_s)
            end
            for i=9,16,1 do
                f:rgb(0,0,0)
                love.graphics.print(inventory[i][3],(32+(10*i)-80)*g_s,(9+ui_position)*g_s)
                f:rgb(255,math.sin(sine_var)*128+128,255)
                love.graphics.print(inventory[i][3],(33+(10*i)-80)*g_s,(9+ui_position)*g_s)
            end
        --do the same thing as when drawing the inventory, but with the amounts of each block

        --draw block names and amounts
        f:rgb(0,0,0)
        
            love.graphics.print(inventory[selected_slot][1],(21+ui_position)*g_s,0*g_s,0,2,2)
            love.graphics.print(inventory[selected_slot][3],8*g_s,20*g_s,0,2,2)
        
        f:rgb(255,math.sin(sine_var)*128+128,255)
        
            love.graphics.print(inventory[selected_slot][1],(22+ui_position)*g_s,0*g_s,0,2,2)
            love.graphics.print(inventory[selected_slot][3],9*g_s,20*g_s,0,2,2)


        --draw big rotating block 
        f:rgb(255,255,255)
    
        f:drawr(sprites[17],16,16,sine_var/2,5,5)
        f:drawr(sprites[inventory[selected_slot][2]],16,16,sine_var/2,4,4)

f:print((mouse_x + math.floor(x/8 + x%8)) + ((mouse_y + math.floor(y/8 + y%8)) * 16) + 1,0,0)
end 