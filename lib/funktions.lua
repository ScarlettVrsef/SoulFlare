f={}

--graphics

function f:draw(rspr,rx,ry) -- draw function ( f:draw(sprite to draw, x, y) )
    love.graphics.draw(rspr,rx*g_s+g_x,ry*g_s+g_y,0,g_s,g_s)
end
function f:condraw(bool,rspr,rx,ry) -- conditional draw function ( f:draw(boolean, sprite to draw, x, y) )
    if(bool)then
        love.graphics.draw(rspr,rx*g_s+g_x,ry*g_s+g_y,0,g_s,g_s)
    end
end
function f:conprint(bool,rtxt,rx,ry) -- print function ( f:print(text to print, x, y) )
    if(bool)then
        love.graphics.print(rtxt,rx*g_s+g_x,ry*g_s+g_y,0,g_s,g_s)
    end
end
function f:drawwh(rspr,rx,ry,modw,modh) -- draw function with width and height parameters ( f:drawwh(sprite to draw, x, y) )
    love.graphics.draw(rspr,rx*g_s+g_x,ry*g_s+g_y,0,g_s*modw,g_s*modh)
end
function f:drawall(rspr,rx,ry,rot,ox,oy,modw,modh) -- draw function with width and height parameters ( f:drawwh(sprite to draw, x, y) )
    love.graphics.draw(rspr,rx*g_s+g_x,ry*g_s+g_y,rot,g_s*modw,g_s*modh,ox,oy)
end
function f:drawr(rspr,rx,ry,rot,ox,oy) -- draw function with width and height parameters ( f:drawwh(sprite to draw, x, y) )
    love.graphics.draw(rspr,rx*g_s+g_x,ry*g_s+g_y,rot,g_s,g_s,ox,oy)
end
function f:print(rtxt,rx,ry) -- print function ( f:print(text to print, x, y) )
    love.graphics.print(rtxt,rx*g_s+g_x,ry*g_s+g_y,0,g_s,g_s)
end
function f:rect1(rx,ry,rw,rh) -- draw rectangle function (outline) ( f:rect1(x, y, width, height) )
    love.graphics.rectangle("line",rx*g_s+g_x,ry*g_s+g_y,rw*g_s,rh*g_s)
end
function f:rect2(rx,ry,rw,rh) -- draw rectangle function (fill) ( f:rect2(x, y, width, height) )
    love.graphics.rectangle("fill",rx*g_s+g_x,ry*g_s+g_y,rw*g_s,rh*g_s)
end
function f:rgb(rr,rg,rb) -- change color function (w/o alpha) ( f:rgb(r,g,b) )
    love.graphics.setColor(rr/255,rg/255,rb/255)
end
function f:rgba(rr,rg,rb,ra) -- change color function (w/ alpha) ( f:rgba(r,g,b,a) )
    love.graphics.setColor(rr/255,rg/255,rb/255,ra/255)
end

function f:compdraw(rspr,rx,ry,rr,rg,rb,ra) -- draw function with color parameters ( f:draw(sprite to draw, x, y, r, g, b, a) )
    love.graphics.setColor(rr/255,rg/255,rb/255,ra/255)
    love.graphics.draw(rspr,rx*g_s+g_x,ry*g_s+g_y,0,g_s,g_s)
end

function f:rect1nr(rx,ry,rw,rh) -- draw rectangle function but with two coordinates (outline) ( f:rect1nr(x1, y1, x2, y2) )
    love.graphics.rectangle("line",rx*g_s+g_x,ry*g_s+g_y,rw-rx*g_s,rh-ry*g_s)
end
function f:rect2nr(rx,ry,rw,rh) -- draw rectangle function but with two coordinates (fill) ( f:rect2nr(x1, y1, x2, y2) )
    love.graphics.rectangle("fill",rx*g_s+g_x,ry*g_s+g_y,rw-rx*g_s,rh-ry*g_s)
end
--


--asset loading

function f:lspr(path) -- load sprite function ( f:lspr(path) )
    return love.graphics.newImage(path)
end

function f:lsfx(path) -- load sound function ( f:lsfx(path) )
    return love.audio.newSource(path,"static")
end

function f:font(path,sz) -- load font function ( f:font(path) )
    love.graphics.setFont(love.graphics.newFont(path,sz))
end

--sound

function f:plays(data) -- load sound function ( f:lsfx(path) )
    return love.audio.play(data)
end
function f:stops() -- load sound function ( f:lsfx(path) )
    return love.audio.stop()
end

--input

function f:key(key) -- key held down detect function ( f:key(key) )
    return love.keyboard.isDown(key)
end

function f:keyp(key) -- key held down detect function ( f:key(key) )
    love.keypressed(key2)
        if(key2==key)then
            return true
        else
            return false
        end
    end

function f:keyp(key) -- key press detect function ( f:keyp(key) )

    
    if(key=="up")then if(g_ku==false)then
        return love.keyboard.isDown(key)
    end end
    if(key=="down")then if(g_kd==false)then
        return love.keyboard.isDown(key)
    end end
    if(key=="left")then if(g_kl==false)then
        return love.keyboard.isDown(key)
    end end
    if(key=="right")then if(g_kr==false)then
        return love.keyboard.isDown(key)
    end end


end








--config
if(pixelart==true)then
    love.graphics.setDefaultFilter("nearest", "nearest")
end