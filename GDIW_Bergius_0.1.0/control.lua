-- Start OnLoad/OnInit/OnConfig events
script.on_configuration_changed( function(data)
    if data.mod_changes ~= nil and data.mod_changes["GDIW_Bergius"] ~= nil and data.mod_changes["GDIW_Bergius"].old_version == nil then
        -- Mod added
        for _,force in pairs(game.forces) do
            force.reset_recipes()
            force.reset_technologies()

            local techs=force.technologies
            local recipes=force.recipes

            if techs["Bergius-Process"].researched then
                recipes["bergius-process-GDIW"].enabled=true
                recipes["bergius-process-GDIW-2"].enabled=true
                recipes["bergius-process-GDIW-3"].enabled=true
            end
        end

    end

    if data.mod_changes ~= nil and data.mod_changes["GDIW_Bergius"] ~= nil and data.mod_changes["GDIW_Bergius"].old_version ~= nil then
        -- Mod updated or removed
        for _,force in pairs(game.forces) do
            force.reset_recipes()
            force.reset_technologies()

            local techs=force.technologies
            local recipes=force.recipes

            if techs["Bergius-Process"].researched then
                recipes["bergius-process-GDIW"].enabled=true
                recipes["bergius-process-GDIW-2"].enabled=true
                recipes["bergius-process-GDIW-3"].enabled=true
            end
        end

    end

end)