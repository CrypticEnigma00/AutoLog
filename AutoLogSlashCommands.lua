local AL = AutoLog
AL.SlashCommands = {}

local ALSC = AL.SlashCommands

local logger = nil
local settingsHandler = nil
local lsc = LibSlashCommander

function ALSC.Init(loggerInstance, settingsHandlerInstance)
    loggerInstance.Debug("Initializing AutoLog Slash Commands...")
    logger = loggerInstance
    settingsHandler = settingsHandlerInstance
    ALSC.RegisterEvents()
    logger.Debug("AutoLog Slash Commands initialized successfully.")
end

function ALSC.RegisterEvents()
    if logger == nil then
        error("Logger is not initialized.")
    end

    if settingsHandler == nil then
        error("SettingsHandler is not initialized.")
    end

    if lsc == nil then
        error("LibSlashCommander is not available.")
    end

    logger.Debug("Registering AutoLog Slash Commands events...")
    -- Register your events here
    local command = lsc:Register()
    command:AddAlias("/autolog")
    command:AddAlias("/al")
    command:SetDescription("AutoLog Slash Commands")

    local resetSubCommand = command:RegisterSubCommand()
    resetSubCommand:AddAlias("reset")
    resetSubCommand:SetDescription("Reset AutoLog settings")
    resetSubCommand:SetCallback(function() settingsHandler.ResetSettings() end)

    local enableSubCommand = command:RegisterSubCommand()
    enableSubCommand:AddAlias("enable")
    enableSubCommand:SetDescription("Enable AutoLog")
    enableSubCommand:SetCallback(function() settingsHandler.SetEnabled(true) end)

    local TrialsSubCommand = enableSubCommand:RegisterSubCommand()
    TrialsSubCommand:AddAlias("trials")
    TrialsSubCommand:SetDescription("Enable AutoLog for Trials")
    TrialsSubCommand:SetCallback(function() settingsHandler.SetLoggingTrials(true) end)


    local statusSubCommand = command:RegisterSubCommand()
    statusSubCommand:AddAlias("encounterLogStatus")
    statusSubCommand:SetDescription("Check the EncounterLog status")
    statusSubCommand:SetCallback(function() ALSC.EncounterLogStatus() end)

    local disableSubCommand = command:RegisterSubCommand()
    disableSubCommand:AddAlias("disable")
    disableSubCommand:SetDescription("Disable AutoLog")
    disableSubCommand:SetCallback(function() settingsHandler.SetEnabled(false) end)

    local TrialsSubCommand = disableSubCommand:RegisterSubCommand()
    TrialsSubCommand:AddAlias("trials")
    TrialsSubCommand:SetDescription("Disable AutoLog for Trials")
    TrialsSubCommand:SetCallback(function() settingsHandler.SetLoggingTrials(false) end)
end

function ALSC.EncounterLogStatus()
    if logger == nil then
        error("Logger is not initialized.")
    end

    logger.Chat("EncounterLog is currently " .. (IsEncounterLogEnabled() and "enabled" or "disabled") .. ".")
end
