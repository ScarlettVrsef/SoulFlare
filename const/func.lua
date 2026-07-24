function bc(num)

        if(num==0)then     return {0,255,0,"air",none,none,false, --[[no_interaction()]]} 
        elseif(num==1)then return {141,141,141,"Stone",stn,out,false, --[[no_interaction()]]} 
        elseif(num==2)then return {151,105,73,"Dirt",drt,outd,false, --[[no_interaction()]]} 
        elseif(num==3)then return {60,126,31,"Grass",grs,outg,false, --[[no_interaction()]]} 
        elseif(num==4)then return {248,87,0,"Magma stone",mga_anim,outm,false, --[[no_interaction()]]} 
        elseif(num==5)then return {255,89,0,"Fire grass",mgag_anim,outmg,false, --[[no_interaction()]]} 
        elseif(num==6)then return {255,89,0,"Planks",plk,plku,false, --[[no_interaction()]]} 
        elseif(num==7)then return {255,89,0,"Bricks",brk,brku,false, --[[no_interaction()]]} 
        elseif(num==8)then return {255,89,0,"Glass",gls,none,false, --[[no_interaction()]]} 
        elseif(num==9)then return {255,89,0,"Iron",irn1,irnu,false, --[[no_interaction()]]}
        elseif(num==10)then return {255,89,0,"Magma dirt",mgad,mgadu,false, --[[no_interaction()]]} 


        else return {255,0,255,"error",ukn,outu} end

  end

function draw_chunk(chunk,x,y)

    i=1
    draw={l=0,c=0}

    while(i<257)do
        f:draw(bc(chunk[i])[5],(draw.l*8)+x,(draw.c*8)+y) draw.l=draw.l+1 if(draw.l==16)then draw.l=0 draw.c=draw.c+1 end

        i=i+1
    end

end

function draw_world()

    draw_chunk(world.mid,0,0)

end




plr={}
function plr:initiate()
  plr.xs=0
  plr.ys=0

  l_l=-999
  l_r=999
end

function plr:input(speed,left,right,up,down,jump)
  if(left)then
    plr.xs=plr.xs-0.5*speed
  end
  if(right)then
    plr.xs=plr.xs+0.5*speed
  end
  if(jump)then
    plr.ys=plr.ys-3
    cosy=cosy-1
  end
end

function plr:physics(c,x,y)
  if(c[math.floor(((y)*16)/8)+math.floor(x/8)]==0)then
    plr.ys=plr.ys+0.2
  else
    plr.ys=0
  end
  iii=0
  while(iii<=16)do
    if(c[math.floor(x+l_l/8)*8]~=0)then
      l_l=l_l-8
    end
    iii=iii+1
  end

  cosx=cosx+plr.xs
  cosy=cosy+plr.ys
end



function plr:update(dead,status)
  plr:input(1,f:key("a"),f:key("d"),f:key("w"),f:key("s"),keypjump)
  plr:physics(world.mid,cosx,cosy)
  plr.xs=plr.xs*0.7
  plr.ys=plr.ys*0.9
end
