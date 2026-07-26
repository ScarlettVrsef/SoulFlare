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

    -- initiate
    g_s=3
    g_x=0
    g_y=0

    sine_var = 0

end

function love.update(dt)
    grab_var()
    sine_var = sine_var + 0.05
    world_updates()
    player_updates()
    misc_updates()

end

function love.draw()

    f:rgb(255,255,255)
    draw_chunk_blocks(test_chunk,-x,-y)

    f:rgb(255,math.cos(sine_var)*128+128,255)
    f:drawall(sprites[1],(math.floor(love.mouse.getX()/24)*8)+4,(math.floor(love.mouse.getY()/24)*8)+4,0,4,4,math.cos(sine_var)/4+1,math.cos(sine_var)/4+1)

    render_hotbar()

    f:rgb(255,math.cos(sine_var)*128+128,255)
    f:drawr(sprites[2],love.mouse.getX()/3,love.mouse.getY()/3,sine_var,4,4)

end