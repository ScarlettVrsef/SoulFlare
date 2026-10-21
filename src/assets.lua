    -- load the "8bitoperator" font in size 16. (8bitoperator is the undertale font) 
    f:font("sprites/fonts/8bitoperator.ttf",16)
    -- load the default music (not very good but it's just for testing anyways)
    --muspiano=f:lsfx("sound/pianoalright.mp3")

    

-- !! sprites
    -- number of sprites
    sprnum = 28
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
    "UI 2",
    "Log",
    "Leaves",
    "Water"
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
        "/ui/ui2",
        "/block/log",
        "/block/leaves",
        "/block/wotr",
        "/block/copper",
        "/ui/healthbar",
        "/ui/heart_empty",
        "/ui/heart_full"
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
    sfxnum = 5
    -- table of all sound data
    sounds = {}
    -- table of all sound names
    sfxnames = {
    "Broke hard block",
    "Placed hard block",
    "Broke soft block",
    "Placed soft block",
    "Something got hurt"
}
    -- table of all sound paths relative to the "spr" folder, without extensions.
    sfxpaths = {
        "/break.wav",
        "/place.wav",
        "/breakdirt.mp3",
        "/placedirt.mp3",
        "/hit.mp3"
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



        -- !! music
    -- number of music
    musnum = 1
    -- table of all music data
    music = {}
    -- table of all music names
    musnames = {
    "Rain - Comical Dragon"
}
    -- table of all music paths relative to the "spr" folder, without extensions.
    muspaths = {
        "/Rain.mp3"
                   }
        -- function to initiate all music
        function init_music(specify) -- "specify" is used to specify whether to initiate everything, or just one music. e.g. init_music(11) would only load the brick texture.
            -- if the argument is "all", load every music.
            if(specify=="all")then
                -- for loop, loops through all music paths and loads each to the music table.
                for i=1,musnum,1 do
                    music[i] = f:lmus("music"..muspaths[i])
                end
                -- return a debug message.
                return "init_music(): loaded all music. ("..musnum..")"
            -- if the argument isn't "all", then load the musite corresponding to the given number.
            else do
                music[specify] = f:lmus("music"..muspaths[specify]..".png")
                -- return a debug message.
                return "init_music(): loaded one music: "..specify.." - "..muspaths[specify].."."
            end end
        end