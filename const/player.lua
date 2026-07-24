function player:initiate()
  self.xs=0
  self.ys=0
end

function player:input(speed,left,right,up,down,jump)
  if(left)then
    self.xs=self.xs-0.5*speed
  end
  if(right)then
    self.xs=self.xs+0.5*speed
  end
  if(jump)then
    self.ys=self.ys-8*jump
  end
end

function player:physics(c,x,y)
    if(c[math.floor((y+1)/8)+math.floor((x)/8)])then
    self.ys=self.ys+0.2
  end
end

function player:update(dead,status)
  player:input(1,f:key("a"),f:key("d"),f:key("w"),f:key("s"),1)
  cosx=cosx*0.9
  cosy=cosy*0.9
  player:physics(world.mid,cosx,cosy)
end