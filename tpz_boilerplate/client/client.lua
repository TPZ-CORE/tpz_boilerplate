-- https://tpz-core.gitbook.io/tpz-core-documentation/

local TPZ = exports.tpz_core:getCoreAPI() -- To retrieve the Core API Functions (Client).

-- @tpz_core:isPlayerReady : When a character is selected.
AddEventHandler("tpz_core:isPlayerReady", function()
    -- to-do your action.
    
    -- @param source
    -- @param identifier
    -- @param charIdentifier
    -- @param money
    -- @param cents
    -- @param gold
    -- @param blackmoney
    -- @param firstname
    -- @param lastname
    -- @param gender
    -- @param dob
    -- @param job
    -- @param jobGrade
    -- @param identityId

    -- Keep in mind, the following data will be valid ONLY if the character has been selected.
    TriggerEvent("tpz_core:ExecuteServerCallBack", "tpz_core:getPlayerData", function(data)

        if data == nil then -- We check if the player data is null. 
            return
        end 

        print(data.firstname .. " " .. data.lastname)
    end)

    -- In case you don't want to use the callback, you can also use the export to retrieve the player data:

    -- @param data.source
    -- @param data.loaded
    -- @param data.identifier
    -- @param data.charIdentifier
    -- @param data.money
    -- @param data.gold
    -- @param data.blackmoney
    -- @param data.firstname
    -- @param data.lastname
    -- @param data.gender
    -- @param data.dob
    -- @param data.job
    -- @param data.jobGrade
    -- @param data.identityId
    local data = TPZ.getPlayerClientData()

    -- If player is in session we return the rest of the code.
    if data == nil then
       return
    end

    print(data.firstname .. " " .. data.lastname)

end)


-- The following Event is triggered after a player has been re-spawned (not revived).
RegisterNetEvent("tpz_core:isPlayerRespawned")
AddEventHandler("tpz_core:isPlayerRespawned", function()
    -- do action
end)

-- @param job
-- @param jobGrade
RegisterNetEvent("tpz_core:getPlayerJob")
AddEventHandler("tpz_core:getPlayerJob", function(data)
    -- do action
end)

-- @param group - returns the current group
RegisterNetEvent("tpz_core:getPlayerGroup")
AddEventHandler("tpz_core:getPlayerGroup", function(group)
    -- to-do nothing
end)

-- @tpz_leveling : When leveling has loaded after selecting character.
AddEventHandler("tpz_leveling:isLoaded", function()
    -- to-do your action.
end)

-- @tpz_metabolism : When metabolism has loaded after selecting character.
AddEventHandler("tpz_metabolism:isLoaded", function()
    -- to-do your action.
end)

-- @tpz_metabolism : The event which is triggered when loaded a players metabolism to get its values.
AddEventHandler("tpz_metabolism:getCurrentMetabolismValues", function(hunger, thirst, stress, alcohol)
    -- to-do your action.
end)

-- @tpz_metabolism : The event which is triggered when loaded a players metabolism to get the current temperature.
AddEventHandler("tpz_metabolism:getCurrentTemperature", function(temperature)
    -- to-do your action.
end)
