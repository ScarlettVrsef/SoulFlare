function love.load()

    g_s=3
    g_x=0
    g_y=0

    pixelart=true

    require "lib/funktions"

    require "const/const"
    
    plr:initiate()
end









function love.update(dt)
    

    mx=math.floor(love.mouse.getX()/24)
    my=math.floor(love.mouse.getY()/24)


    if(my>3)then
        if(uil>-16)then
            uil=uil-2
        end
    else
        if(uil<16)then
            uil=uil+2
        end
    end


    --[[if(f:key("w"))then
        cosy=cosy-1
    end]]
    
    plr:update()

    if(f:key("m"))then
        i=1
        while(i<=(ba+1))do
            amount[i]=999
            i=i+1
        end
        i=1
    end


    if(cosx<=0)then
        cosx=127
        world.position.x=world.position.x-128
    end
    if(cosx>=128)then
        cosx=1
        world.position.x=world.position.x+128
    end
    if(cosy<=0)then
        cosy=127
        world.position.y=world.position.y-128
    end
    if(cosy>=128)then
        cosy=1
        world.position.y=world.position.y+128
    end

    if(f:key("tab"))then
        ui_draw=false
    else
        ui_draw=true
    end



    world.chunk={x=math.floor(world.position.x/128),y=math.floor(world.position.y/128)}
    world.chunk.id=world.chunk.x+(world.chunk.y*world.width)

    world.mid=world.atlas[(math.floor(world.position.y/128)*32)+math.floor(world.position.x/128)]

    if(love.mouse.isDown(1))then
        if(amount[slc+1]>0)then
            if(world.mid[mx+(my*16)+1]==0)then
                world.mid[mx+(my*16)+1]=slc
                amount[slc+1]=amount[slc+1]-1
            end
        end
        world.atlas[(math.floor(world.position.y/128)*32)+math.floor(world.position.x/128)]=world.mid
    end

    if(love.mouse.isDown(2))then
        if(world.mid[mx+(my*16)+1]~=0)then
            amount[world.mid[mx+(my*16)+1]+1]=amount[world.mid[mx+(my*16)+1]+1]+1
            world.mid[mx+(my*16)+1]=0
        end
        world.atlas[(math.floor(world.position.y/128)*32)+math.floor(world.position.x/128)]=world.mid
    end

    
    if(anim==16)then

        if(animstage==1)then 
            mga_anim=mga1 
            mgag_anim=mgag1 
            irnanim=irn2
            animstage=2
        elseif(animstage==2)then 
            mga_anim=mga2 
            mgag_anim=mgag2 
            irnanim=irn3
            animstage=3
        elseif(animstage==3)then 
            mga_anim=mga3 
            mgag_anim=mgag3 
            irnanim=irn4
            animstage=4
        elseif(animstage==4)then 
            mga_anim=mga 
            mgag_anim=mgag 
            irnanim=irn1
            animstage=1
        end
        keypjump=false

        function love.keypressed(key)
        if(key=="space")then
            keypjump=true
        end
        if(key=="q")then
            slc=slc-1
        end
        if(key=="e")then
            slc=slc+1
        end

        if(slc<1)then slc=ba end
        if(slc>ba)then slc=1 end

        if(key=="4")then
            if(airrender==false)then
                airrender=true
            else
                airrender=false
            end
        end
        if(key=="5")then
            if(musicplay==false)then
                musicplay=true
            else
                musicplay=false
            end
        end
    end


        
    anim=0
    end
    anim=anim+1

    flc=flc+.05

end









function love.draw()

    f:rgb(bgr,bgg,bgb)
    f:drawwh(bg,-128,-128,3,3)

    --set color back to default
    f:rgb(255,255,255)


    draw_world()

    f:rect2(cosx-4,cosy-12,8,12)
    f:draw(com,cosx-3.5,cosy-3.5)


        --render_chunk(world.testchunk, 0, 0)

    --draw block selection cursor (the big square one)
        f:rgb(255,math.cos(flc)*128+128,255)
        f:drawall(cur,love.mouse.getX()/3,love.mouse.getY()/3,0,4,4,math.cos( flc)/4+1,math.cos(flc)/4+1)

    --draw ui, only if not pressing tab
        render_ui()

    --draw the cursor for everything other than block selection (the little spinning one)
        f:rgb(255,math.cos(flc)*128+128,255)
        f:drawr(cur2,love.mouse.getX()/3,love.mouse.getY()/3,flc,4,4)

        f:print(world.chunk.x..", "..world.chunk.y.."    "..world.position.x..", "..world.position.y,0,114)


end