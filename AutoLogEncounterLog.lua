AutoLog = AutoLog
local AL = AutoLog

AL.encounterlog = {}
local ALE = AL.encounterlog
local logger = nil

function ALE.Init(loggerInstance)
    logger = loggerInstance
    logger.Debug("EncounterLog initialized successfully.")
end

function ALE.IsEnabled()
    if logger == nil then
        error("Logger is not initialized.")
    end
    return IsEncounterLogEnabled()
end

function ALE.SetEnable(enable)
    if logger == nil then
        error("Logger is not initialized.")
    end
    if enable then
        if IsEncounterLogEnabled() then
            logger.Debug("Encounter logging is already enabled.")
            logger.Chat("Encounter logging is already enabled.")
            return
        end
        SetEncounterLogEnabled(true)
        logger.Debug("Encounter logging enabled.")
        logger.Chat("Encounter logging enabled.")
    else
        if not IsEncounterLogEnabled() then
            logger.Debug("Encounter logging is already disabled.")
            logger.Chat("Encounter logging is already disabled.")
            return
        end
        SetEncounterLogEnabled(false)
        logger.Debug("Encounter logging disabled.")
        logger.Chat("Encounter logging disabled.")
    end
end
