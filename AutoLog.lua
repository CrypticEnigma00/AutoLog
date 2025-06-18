AutoLog = AutoLog or {}
local AL = AutoLog

AL.name = "AutoLog"
AL.author = "CrypticEnigma00"
AL.simpleName = "AL"
AL.displayName = "AutoLog"
AL.version = "0.0.1"
AL.currentZoneId = 0
AL.zones = {}
AL.currentZone = {}

local logger = LibDebugLogger(AL.name)

AL.callbackManager = ZO_CallbackObject:New()

function AL.log(message)
    if not message or message == "" then
        logger:Error("Attempted to log an empty message.")
        return
    end
    local formattedMessage = string.format("[%s] %s", AL.displayName, message)
    CHAT_ROUTER:AddSystemMessage(formattedMessage)
end

function AL.LookupZoneTag(zoneId)
    for _, zone in pairs(AL.zones) do
        if zone.id == zoneId then
            return zone.tag
        end
    end
    --return a default tag if not found
    return "GEN"
end

function AL.EnableEncounterLog(enable)
    if enable then
        if IsEncounterLogEnabled() then
            logger:Debug("Encounter logging is already enabled.")
            AL.log("Encounter logging is already enabled.")
            return
        end
        SetEncounterLogEnabled(true)
        logger:Debug("Encounter logging enabled.")
        AL.log("Encounter logging enabled.")
    else
        if not IsEncounterLogEnabled() then
            logger:Debug("Encounter logging is already disabled.")
            AL.log("Encounter logging is already disabled.")
            return
        end
        SetEncounterLogEnabled(false)
        logger:Debug("Encounter logging disabled.")
        AL.log("Encounter logging disabled.")
    end
end

function AL.OnZoneChange()
    logger:Debug("OnZoneChange called.")
    -- This function is called when the player changes zones.
    -- It checks if the zone has changed and updates the current zone accordingly.
    if not AL.settings then
        logger:Error("Settings table is not initialized.")
        return
    end
    if not AL.settings.enabled then
        logger:Debug("AutoLog is disabled in settings. Skipping zone change handling.")
        return
    end

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

    local zoneTag = AL.LookupZoneTag(zoneId)
    if not zoneTag then
        logger:Error("Zone tag not found for zone ID: " .. zoneId)
        return
    end

    AL.currentZone = AL.zones[zoneTag]
    AL.currentZoneId = zoneId
    logger:Debug("Current Zone changed to: " .. AL.currentZone.name .. " (ID: " .. zoneId .. ")")

    -- Check if the current zone is a trial and handle logging accordingly
    if AL.currentZone then
        if AL.settings.logTrials then
            if AL.currentZone.GetCategory() == AL.ACTIVITIES.TRIALS then
                logger:Debug("In Trial zone: " .. AL.currentZone.name .. " (ID: " .. zoneId .. ")")
                AL.EnableEncounterLog(true)
                return
            else
                logger:Debug("In non-trial zone: " .. AL.currentZone.name .. " (ID: " .. zoneId .. ")")
                AL.EnableEncounterLog(false)
                return
            end
        end
    end

    if not AL.zones[zoneTag] then
        logger:Warn("Zone not found in lookup table: " .. GetZoneNameById(zoneId))
        return
    end
end

function AL.RegisterEvents()
    logger:Debug("Registering events for AutoLog...")
    EVENT_MANAGER:UnregisterForEvent(AL.name, EVENT_ADD_ON_LOADED)

    EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_PLAYER_ACTIVATED, AL.OnZoneChange)
end

function AL.Init()
    logger:Debug("Initializing AutoLog...")



    AL.currentZoneId = -1
    AL.currentZone = AL.zones["GEN"] or {}
end

function AL.OnAddOnLoaded(_, addonName)
    if addonName ~= AL.name then return end

    --Component initialization
    AL.Init()
    AL.Menu.Init()

    -- Register events after initialization
    AL.RegisterEvents()
end

EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_ADD_ON_LOADED, AL.OnAddOnLoaded)
