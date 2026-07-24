function render_ui()

    --only draw ui if not holding TAB (../key_detection.lua)
    if(ui_draw)then

        --draw ui background
            f:rgb(255,255,255)
            f:draw(ui2,0,-16+uil)
            f:draw(ui1,0,0)

        --set i to 1 and draw inventory, only if i is less than ba (the amount of blocks in the game), to avoid drawing invalid sprites
            i=1
            while(i<=ba)do

                --draw the first line of the inventory
                f:draw(bc(i)[5],27+(10*i),-6+uil)

                --draw a special outline around the selected block
                if(i==slc)then
                    f:draw(slcspr,25+(10*i),-8+uil)
                end

                --increment i by one, to draw all blocks in order
                i=i+1
                if(i>=9)then
                    --set i to 999, to keep ui from drawing offscreen
                    i=999
                end
            end

            --set i back to 9, to start drawing from where it left off
            i=9

            --draw the remaining blocks on the second line
            while(i<=ba)do

                --draw the second line of the inventory
                f:draw(bc(i)[5],27+(10*i)-80,3+uil)

                --draw a special outline around the selected block
                if(i==slc)then
                    f:draw(slcspr,25+(10*i)-80,1+uil)
                end

                --increment i by one, to draw the remaining blocks in order
                i=i+1
            end

        --reset i
        i=1

        --do the same thing as when drawing the inventory, but with the amounts of each block
        while(i<=ba)do

            --draw the amounts in black, to give depth
                f:rgb(0,0,0)
                love.graphics.print(amount[i+1],(32+(10*i))*g_s,(0+uil)*g_s)
            --draw the amounts again
                f:rgb(255,math.sin(flc)*128+128,255)
                love.graphics.print(amount[i+1],(33+(10*i))*g_s,(0+uil)*g_s)
            
            i=i+1
            if(i==9)then
                i=10
            end
        end

        i=9

        while(i<=ba)do

                f:rgb(0,0,0)
                love.graphics.print(amount[i+1],(32+(10*i)-80)*g_s,(9+uil)*g_s)
                f:rgb(255,math.sin(flc)*128+128,255)
                love.graphics.print(amount[i+1],(33+(10*i)-80)*g_s,(9+uil)*g_s)
            
            i=i+1
        end

        --draw block names and amounts
        f:rgb(0,0,0)
        
            love.graphics.print(bc(slc)[4],(21+uil)*g_s,0*g_s,0,2,2)
            love.graphics.print(amount[slc+1],8*g_s,20*g_s,0,2,2)
        
        f:rgb(255,math.sin(flc)*128+128,255)
        
            love.graphics.print(bc(slc)[4],(22+uil)*g_s,0*g_s,0,2,2)
            love.graphics.print(amount[slc+1],9*g_s,20*g_s,0,2,2)


        --draw big rotating block 
        f:rgb(255,255,255)
        
        f:drawr(void,16,16,flc/2,5,5)
        f:drawr(bc(slc)[5],16,16,flc/2,4,4)
    end
end 