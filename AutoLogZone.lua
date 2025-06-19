local AL = AutoLog
AL.zone = {}

local ALZ = AL.zone

local logger = nil
local settingsHandler = nil
local encounterLog = nil

ALZ.currentZoneId = 0
ALZ.name = "AutoLogZone"
ALZ.zones = {}
ALZ.currentZone = {}

ALZ.ACTIVITIES = {
    GENERAL = 1,
    TRIALS = 2,
    DUNGEONS = 3,
    DLC_DUNGEONS = 4,
    ARENAS = 5,
    ENDLESS = 6,
    MISC = 7,
}

function ALZ.Init(loggerInstance, settingsHandlerInstance, encounterLogInstance)
    loggerInstance.Debug("Initializing AutoLog Zone Handler...")
    logger = loggerInstance
    settingsHandler = settingsHandlerInstance
    encounterLog = encounterLogInstance
    ALZ.RegisterEvents()
    logger.Debug("AutoLog Zone Handler initialized successfully.")
end

function ALZ.lookupZoneTag(zoneId)
    for _, zone in pairs(ALZ.zones) do
        if zone.id == zoneId then
            return zone.tag
        end
    end
    --return a default tag if not found
    return "GEN"
end

function ALZ.OnZoneChange()
    -- This function is called when the player changes zones.
    -- It checks if the zone has changed and updates the current zone accordingly.
    if logger == nil then
        error("Logger is not initialized.")
    end

    logger.Debug("OnZoneChange called.")


    if not settingsHandler then
        logger.Error("Settings table is not initialized.")
        return
    end

    if not encounterLog then
        logger.Error("EncounterLog is not initialized.")
        return
    end

    if not settingsHandler.IsEnabled() then
        logger.Debug("AutoLog is disabled in settings. Skipping zone change handling.")
        return
    end

    if not ALZ.zones then
        logger.Error("Zones table is not initialized.")
        return
    end

    local zoneId, x, y, z = GetUnitWorldPosition("player")
    logger.Debug("zoneId: " .. tostring(zoneId))

    if not zoneId or zoneId == 0 then
        logger.Error("Failed to get player world position.")
        return
    end

    if zoneId == ALZ.currentZoneId then
        -- no zone change nothing to do
        return
    end

    local zoneTag = ALZ.lookupZoneTag(zoneId)
    if not zoneTag then
        logger.Error("Zone tag not found for zone ID: " .. zoneId)
        return
    end

    ALZ.currentZone = ALZ.zones[zoneTag]
    ALZ.currentZoneId = zoneId
    logger.Debug("Current Zone changed to: " .. ALZ.currentZone.name .. " (ID: " .. zoneId .. ")")

    -- Check if the current zone is a trial and handle logging accordingly
    if ALZ.currentZone then
        if settingsHandler.IsLoggingTrials() then
            if ALZ.currentZone.GetCategory() == ALZ.ACTIVITIES.TRIALS then
                logger.Debug("In Trial zone: " .. ALZ.currentZone.name .. " (ID: " .. zoneId .. ")")
                encounterLog.SetEnable(true)
                return
            else
                logger.Debug("In non-trial zone: " .. ALZ.currentZone.name .. " (ID: " .. zoneId .. ")")
                encounterLog.SetEnable(false)
                return
            end
        end
    end

    if not ALZ.zones[zoneTag] then
        logger.Warn("Zone not found in lookup table: " .. ALZ.currentZone.name .. " (ID: " .. zoneId .. ")")
        return
    end
end

function ALZ.RegisterEvents()
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Registering zone change event...")
    --EVENT_MANAGER:RegisterForEvent(ALZ.name, EVENT_ZONE_CHANGED, ALZ.OnZoneChange)
    EVENT_MANAGER:RegisterForEvent(ALZ.name, EVENT_PLAYER_ACTIVATED, ALZ.OnZoneChange)
    logger.Debug("Events registered successfully.")
end
