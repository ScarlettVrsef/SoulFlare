    -- load the "8bitoperator" font in size 16. (8bitoperator is the undertale font) 
    f:font("sprites/fonts/8bitoperator.ttf",16)
    -- load the default music (not very good but it's just for testing anyways)
    muspiano=f:lsfx("sound/pianoalright.mp3")

    

-- !! sprites
    -- number of sprites
    sprnum = 21
    -- table of all sprite data
    sprites = {}
    -- table of all sprite names
    sprnames = {
    "Block Selector Cursor",
    "Free Cursor",
    "Menu Selector",
    "Block Frame",
    "Hotbar",
    "Error Block",
    "Stone",
    "Dirt",
    "Grass",
    "Air (literally how)",
    "Bricks",
    "Planks",
    "Iron Ore",
    "Copper Ore",
    "Iron",
    "Glass",
    "Void",
    "None",
    "Debug Player Collision Point",
    "Background",
    "UI 2"
}
    -- table of all sprite paths relative to the "spr" folder, without extensions.
    sprpaths = {
        "/ui/block_selector_cursor",
        "/ui/free_cursor",
        "/ui/menu_selector",
        "/ui/block_frame",
        "/ui/hotbar",
        "/block/error_texture",
        "/block/stone",
        "/block/dirt",
        "/block/grass",
        "/block/air_debug",
        "/block/bricks",
        "/block/planks",
        "/block/iron_ore",
        "/block/copper_ore",
        "/block/iron",
        "/block/glass",
        "/block/void",
        "/block/none",
        "/other/debug_player_collision_point",
        "/other/bg",
        "/ui/ui2"
                   }
        -- function to initiate all sprites
        function init_sprites(specify) -- "specify" is used to specify whether to initiate everything, or just one sprite. e.g. init_sprites(11) would only load the brick texture.
            -- if the argument is "all", load every sprite.
            if(specify=="all")then
                -- for loop, loops through all sprite paths and loads each to the sprites table.
                for i=1,sprnum,1 do
                    sprites[i] = f:lspr("sprites"..sprpaths[i]..".png")
                end
                -- return a debug message.
                return "init_sprites(): loaded all sprites. ("..sprnum..")"
            -- if the argument isn't "all", then load the sprite corresponding to the given number.
            else do
                sprites[specify] = f:lspr("sprites"..sprpaths[specify]..".png")
                -- return a debug message.
                return "init_sprites(): loaded one sprite: "..specify.." - "..sprpaths[specify].."."
            end end
        end

        -- !! sound
    -- number of sounds
    sfxnum = 1
    -- table of all sound data
    sounds = {}
    -- table of all sound names
    sfxnames = {
    "Break"
}
    -- table of all sound paths relative to the "spr" folder, without extensions.
    sfxpaths = {
        "/break.wav"
                   }
        -- function to initiate all sound
        function init_sounds(specify) -- "specify" is used to specify whether to initiate everything, or just one sound. e.g. init_sound(11) would only load the brick texture.
            -- if the argument is "all", load every sound.
            if(specify=="all")then
                -- for loop, loops through all sound paths and loads each to the sounds table.
                for i=1,sfxnum,1 do
                    sounds[i] = f:lsfx("sound"..sfxpaths[i])
                end
                -- return a debug message.
                return "init_sound(): loaded all sounds. ("..sfxnum..")"
            -- if the argument isn't "all", then load the sfxite corresponding to the given number.
            else do
                sounds[specify] = f:lsfx("sound"..sfxpaths[specify]..".png")
                -- return a debug message.
                return "init_sound(): loaded one sound: "..specify.." - "..sfxpaths[specify].."."
            end end
        end