function collcheck (offset_x,offset_y)

    local current_chunk2 = current_chunk

    local offset_x2 = 0
    local offset_y2 = 0

    if(x+offset_x>63)then
        current_chunk2 = current_chunk2 + 1
        offset_x2=offset_x2-127
    elseif(x+offset_x<-63)then
        current_chunk2 = current_chunk2 - 1
        offset_x2=offset_x2+127
    end

    if(y+offset_y>63)then
        current_chunk2 = current_chunk2 + 8
        offset_y2=offset_y2-127
    elseif(y+offset_y<-63)then
        current_chunk2 = current_chunk2 - 8
        offset_y2=offset_y2+127
    end

    if(getsolidity(world[current_chunk2][math.floor((x+64+offset_x+offset_x2)/8)+(math.floor((y+64+offset_y+offset_y2)/8)*16)+1]))then
        return false
    else
        return true
    end

end

--[[function collision ()

    

end]

--[[function CollideAxis(axis, x, y, width, height)
    pos={x=x,y=y}
    min1={x=x+width,y=y+height}
    --max1={x=x,y=y}

    for i=1, 128, 1 do
        if(world[current_chunk][i] ~= 10)then

            min2 = {math.floor(x/8) + ((current_chunk%16)*16), math.floor(y/8) + (((current_chunk/16)-current_chunk%16) * 16)}
            max2 = {x=min2.x + 1, y=min2.y + 1}
                
            if(min1.x<max2.x and pos.x>min2.x and min1.y<max2.y and pos.y>max2.y)then 
                local collision = min1[axis]-min2[axis]
                if(collision<0)then
                    pos
                end
            end
        end
    end

end]]