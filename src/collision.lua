function checkcoll(a,b,c,d)
    if a then
        if(world[current_chunk][math.floor((x+64+4)/8)+(math.floor((y+64+8)/8)*16)+1] ~= 10)then
            coll.br = true
        else
            coll.br = false
        end
    end
    if b then
        if(world[current_chunk][math.floor((x+64+4)/8)+(math.floor((y+64-8)/8)*16)+1] ~= 10)then
            coll.tr = true
        else
            coll.tr = false
        end
    end
    if c then
        if(world[current_chunk][math.floor((x+64-4)/8)+(math.floor((y+64+8)/8)*16)+1] ~= 10)then
            coll.bl = true
        else
            coll.bl = false
        end
    end
     if d then
        if(world[current_chunk][math.floor((x+64-4)/8)+(math.floor((y+64-8)/8)*16)+1] ~= 10)then
            coll.tl = true
        else
            coll.tl = false
        end
    end
end

function collision()

    --[[if(world[current_chunk][math.floor((x+64)/8)+(math.floor((y+64)/8)*16)+1] ~= 10)then
        if(math.floor((x+64)/8)+(math.floor((y+64)/8)*16)+1>=1) or (math.floor((x+64)/8)+(math.floor((y+64)/8)*16)+1<=127)then
            if(buttonspresseddir.w)then
                y=y+spd
            end
            if(buttonspresseddir.a)then
                x=x+spd
            end
            if(buttonspresseddir.s)then
                y=y-spd
            end
            if(buttonspresseddir.d)then
                x=x-spd
            end
        end
    end]]
    checkcoll(true,true,true,true)

    --[[while coll.br and coll.bl do
        y=y-1
        checkcoll(true,true,true,true)
    end
    while coll.br and coll.tr do
        x=x-1
        checkcoll(true,true,true,true)
    end
    while coll.tl and coll.tr do
        y=y+1
        checkcoll(true,true,true,true)
    end
    while coll.tl and coll.bl do
        x=x+1
        checkcoll(true,true,true,true)
    end

    while coll.br do
        y=y-1
        x=x-1
        checkcoll(true,true,true,true)
    end
    while coll.bl do
        y=y-1
        x=x+1
        checkcoll(true,true,true,true)
    end
    while coll.tr do
        x=x-1
        checkcoll(true,true,true,true)
    end
    while coll.tl do
        x=x+1
        checkcoll(true,true,true,true)
    end

    if coll.tl or coll.bl or coll.br or coll.tr then
        current_chunk=36
        x=0
        y=-8
        checkcoll(true,true,true,true)
    end]]

    if coll.br and coll.bl then
        y=y-1
        checkcoll(true,true,true,true)
    end
    if coll.br and coll.tr then
        x=x-1
        checkcoll(true,true,true,true)
    end
    if coll.tl and coll.tr then
        y=y+1
        checkcoll(true,true,true,true)
    end
    if coll.tl and coll.bl then
        x=x+1
        checkcoll(true,true,true,true)
    end

    --[[if coll.br then
        y=y-1
        x=x-1
        checkcoll(true,true,true,true)
    end
    if coll.bl then
        y=y-1
        x=x+1
        checkcoll(true,true,true,true)
    end
    if coll.tr then
        x=x-1
        checkcoll(true,true,true,true)
    end
    if coll.tl then
        x=x+1
        checkcoll(true,true,true,true)
    end]]

    if coll.br then
        y=y-1
        checkcoll(true,true,true,true)
    end
    if coll.bl then
        y=y-1
        checkcoll(true,true,true,true)
    end
    if coll.tr then
        y=y+1
        checkcoll(true,true,true,true)
    end
    if coll.tl then
        y=y+1
        checkcoll(true,true,true,true)
    end

    if coll.tl or coll.bl or coll.br or coll.tr then
        current_chunk=36
        x=0
        y=-8
        checkcoll(true,true,true,true)
    end

    

end