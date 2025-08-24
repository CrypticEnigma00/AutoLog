AutoLog = AutoLog or {}
local AL = AutoLog

AL.settingsHandler = {}
local ASH = AL.settingsHandler


ASH.settings = nil

local logger = nil


function ASH.Init(loggerInstance)
    loggerInstance.Debug("Initializing AutoLog Settings Handler...")
    logger = loggerInstance
    ASH.InitSV()
    logger.Debug("AutoLog Settings Handler initialized successfully.")
end

function ASH.InitSV()
    if logger == nil then
        error("Logger is not initialized.")
    end

    logger.Debug("Initializing Saved Variables for AutoLog...")
    ASH.settings = ZO_SavedVars:NewAccountWide("AutoLogSV", 1, nil, {
        enabled = true,
        debugMode = false,
        logTrials = true,
        logDungeons = false,
        logWorldEvents = false,
    })
end

function ASH.ResetSettings()
    if logger == nil then
        error("Logger is not initialized.")
    end

    logger.Debug("Resetting AutoLog settings to default...")
    ASH.SetEnabled(true)
    ASH.SetDebugMode(false)
    ASH.SetLoggingTrials(true)
    ASH.SetLoggingDungeons(false)
    ASH.SetLoggingWorldEvents(false)
    logger.Debug("AutoLog settings reset to default.")
end

function ASH.IsEnabled()
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Checking if AutoLog is enabled..." .. tostring(ASH.settings.enabled))
    return ASH.settings.enabled
end

function ASH.SetEnabled(enabled)
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Setting AutoLog enabled state to: " .. tostring(enabled))
    if type(enabled) ~= "boolean" then
        logger.Error("Invalid value for enabled state. Must be a boolean.")
        return
    end
    ASH.settings.enabled = enabled
    logger.Debug("AutoLog enabled state set to: " .. tostring(enabled))
    logger.Chat("AutoLog is now " .. (enabled and "enabled" or "disabled") .. ".")
end

function ASH.IsDebugMode()
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Checking if debug mode is enabled..." .. tostring(ASH.settings.debugMode))
    return ASH.settings.debugMode
end

function ASH.SetDebugMode(enabled)
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Setting debug mode to: " .. tostring(enabled))
    if type(enabled) ~= "boolean" then
        logger.Error("Invalid value for debug mode. Must be a boolean.")
        return
    end
    ASH.settings.debugMode = enabled
    logger.Debug("Debug mode set to: " .. tostring(enabled))
end

function ASH.IsLoggingTrials()
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Checking if Trials logging is enabled..." .. tostring(ASH.settings.logTrials))
    return ASH.settings.logTrials
end

function ASH.SetLoggingTrials(enabled)
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Setting Trials logging state to: " .. tostring(enabled))
    if type(enabled) ~= "boolean" then
        logger.Error("Invalid value for Trials logging state. Must be a boolean.")
        return
    end
    ASH.settings.logTrials = enabled
    logger.Debug("Trials logging state set to: " .. tostring(enabled))
    logger.Chat("AutoLog Trials is now " .. (enabled and "enabled" or "disabled") .. ".")
end

function ASH.IsLoggingDungeons()
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Checking if Dungeons logging is enabled..." .. tostring(ASH.settings.logDungeons))
    return ASH.settings.logDungeons
end

function ASH.SetLoggingDungeons(enabled)
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Setting Dungeons logging state to: " .. tostring(enabled))
    if type(enabled) ~= "boolean" then
        logger.Error("Invalid value for Dungeons logging state. Must be a boolean.")
        return
    end
    ASH.settings.logDungeons = enabled
    logger.Debug("Dungeons logging state set to: " .. tostring(enabled))
    logger.Chat("AutoLog Dungeons is now " .. (enabled and "enabled" or "disabled") .. ".")
end

function ASH.IsLoggingWorldEvents()
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Checking if World Events logging is enabled..." .. tostring(ASH.settings.logWorldEvents))
    return ASH.settings.logWorldEvents
end

function ASH.SetLoggingWorldEvents(enabled)
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Setting World Events logging state to: " .. tostring(enabled))
    if type(enabled) ~= "boolean" then
        logger.Error("Invalid value for World Events logging state. Must be a boolean.")
        return
    end
    ASH.settings.logWorldEvents = enabled
    logger.Debug("World Events logging state set to: " .. tostring(enabled))
    logger.Chat("AutoLog World Events is now " .. (enabled and "enabled" or "disabled") .. ".")
end
