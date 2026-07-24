world={}

world.width=32
world.height=32

world.position={x=2048,y=2176}
world.chunk={x=math.floor(world.position.x/128),y=math.floor(world.position.y/128)}
world.chunk.id=world.chunk.x+(world.chunk.y*world.width)

    cosx=64
    cosy=64

require "const/worldgen"
testgen()

    world.mid=world.atlas[(math.floor(world.position.y/128)*32)+math.floor(world.position.x/128)]
    
require "const/assets"
require "const/func"
require "const/ui"

keypjump=false

ui_draw=true


    uil=-16

    love.mouse.setVisible(false)

    bgr=128
    bgg=255
    bgb=255

    version="v1.3 - ADDED THE WORLD"

    airrender=false
    musicplay=true

    g_s=3
    g_x=0
    g_y=0

    player={x=60,y=60}

    draw={l=0,c=0}

    

    mgag_anim=mga
    mga_anim=mgag
    animstage=1

    slc=1

    winsz=384

    love.window.setMode(384,384)
    love.window.setTitle("SOULFLARE "..version)
    love.window.setIcon(love.image.newImageData("spr/block/logo.png"))
    ba=10

    flc=0

    anim=0

    function no_interaction(x,y,w) --[[do nothing]] end

    world.testchunk={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                     3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                     2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
                     2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
                     1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0
                    }

    amount={0,100,50,25,10,10,50,50,50,10,20}
    
    
    
    
  