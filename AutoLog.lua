AutoLog = AutoLog or {}
local AL = AutoLog

AL.name = "AutoLog"
AL.author = "CrypticEnigma00"
AL.simpleName = "AL"
AL.displayName = "AutoLog"
AL.version = "0.0.1"

function AL.Init(logger)
    logger:Debug("Initializing AutoLog...")
    AL.logger.Init(logger)
    AL.settingsHandler.Init(AL.logger)
    AL.menu.Init(AL.logger, AL.settingsHandler, AL.displayName, AL.author, AL.version)
    AL.encounterlog.Init(AL.logger)
    AL.zone.Init(AL.logger, AL.settingsHandler, AL.encounterlog)
    logger:Debug("AutoLog initialized successfully.")
end

function AL.OnAddOnLoaded(_, addonName)
    if addonName ~= AL.name then return end

    local logger = LibDebugLogger(AL.name)
    logger:Debug("AutoLog AddOn loaded: " .. addonName)
    AL.Init(logger)
    logger:Debug("AutoLog Addon loading complete.")

    -- Unregister the event to prevent re-initialization
    -- This is important to avoid multiple initializations if the AddOn is reloaded
    EVENT_MANAGER:UnregisterForEvent(AL.name, EVENT_ADD_ON_LOADED)
end

EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_ADD_ON_LOADED, AL.OnAddOnLoaded)
