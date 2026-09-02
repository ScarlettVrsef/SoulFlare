function love.load()

    require 'src.start'
    require 'lib.funktions'
    require 'src.assets'
    require 'src.world'
    require 'src.ui'
    require 'src.player'
    require 'src.controls'
    require 'src.function_dump'
    init_sprites("all")
    init_sounds("all")

    -- initiate

    love.mouse.setVisible(false)

    g_s=4
    g_x=0
    g_y=0

    sine_var = 0

    flat_worldgen()

    current_chunk=36

    mouse_chunk = current_chunk

end

function love.update(dt)
    grab_var()
    sine_var = sine_var + 0.05
    player_updates()
    world_updates()
    misc_updates()

end

function love.draw()
    
    f:rgb(32,224,224)
    f:rect2(0,0,268,201)

    f:rgb(255,255,255)
    
    --draw_chunk_blocks(world[36],-x,-y)
    draw_world(x,y)


    -- draw the block selection cursor
    f:rgb(255,math.cos(sine_var)*128+128,255)
    f:drawall(sprites[1],((mouse_x*8)+4)-x, ((mouse_y*8)+4)-y,0,4,4,math.cos(sine_var)/4+1,math.cos(sine_var)/4+1)
    
    if (!f:key("tab")) then
        render_ui()
    end

    -- draw the small spinning cursor
    f:rgb(255,math.cos(sine_var)*128+128,255)
    f:drawr(sprites[2],love.mouse.getX()/4,love.mouse.getY()/4,sine_var,4,4)

end