AutoLog = AutoLog or {}
local AL = AutoLog

AL.name = "AutoLog"
AL.simpleName = "AutoLog"
AL.displayName = "AutoLog"
AL.version = "0.0.1"
AL.currentZoneId = 0
AL.zones = {}
AL.currentZone = {}

local logger = LibDebugLogger(AL.name)
AL.callbackManager = ZO_CallbackObject:New()


function AL.EnableEncounterLog(enable)
    if enable then
        if IsEncounterLogEnabled() then
            logger:Debug("Encounter logging is already enabled.")
            return
        end
        SetEncounterLogEnabled(true)
        logger:Debug("Encounter logging enabled.")
    else
        if not IsEncounterLogEnabled() then
            logger:Debug("Encounter logging is already disabled.")
            return
        end
        SetEncounterLogEnabled(false)
        logger:Debug("Encounter logging disabled.")
    end
end

function AL.OnZoneChange()
    -- This function is called when the player changes zones.
    -- It checks if the zone has changed and updates the current zone accordingly.
    if not AL.zones then
        logger:Error("Zones table is not initialized.")
        return
    end

    local zoneId, x, y, z = GetUnitWorldPosition("player")

    if not zoneId or zoneId == 0 then
        logger:Error("Failed to get player world position.")
        return
    end

    if zoneId == AL.currentZoneId then
        -- no zone change
        return
    end

    local zoneName = GetZoneNameById(zoneId)

    AL.currentZone = AL.zones[zoneName]
    AL.currentZoneId = zoneId
    logger:Debug("Current Zone changed to: " .. zoneName .. " (ID: " .. zoneId .. ")")

    if AL.currentZone and AL.currentZone.name == zoneName then
        if AL.currentZone.GetCategory() == AL.ACTIVITIES.TRIALS then
            logger:Debug("In Trial zone: " .. zoneName .. " (ID: " .. zoneId .. ")")
            AL.EnableEncounterLog(true)
            return
        else
            logger:Debug("In non-trial zone: " .. zoneName .. " (ID: " .. zoneId .. ")")
            AL.EnableEncounterLog(false)
        end
        return
    end

    if not AL.zones[zoneName] then
        logger:Warn("Zone not found in lookup table: " .. zoneName)
        return
    end
end

function AL.RegisterEvents()
    EVENT_MANAGER:UnregisterForEvent(AL.name, EVENT_ADD_ON_LOADED)

    EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_PLAYER_ACTIVATED, AL.OnZoneChange)
end

function AL.Init()
    AL.currentZoneId = -1
    AL.currentZone = AL.zones["GEN"] or {}
end

function AL.OnAddOnLoaded(_, addonName)
    if addonName ~= AL.name then return end
    AL.Init()
    AL.RegisterEvents()
end

EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_ADD_ON_LOADED, AL.OnAddOnLoaded)
