Autolog = Autolog or {}
local AL = AutoLog

AL.menu = {}
local ALM = AL.menu

ALM.name = "AutoLogMenu"

local LAM = LibAddonMenu2
local logger = nil


function ALM.Init(loggerInstance, settingsHandler, displayName, author, version)
    logger = loggerInstance
    logger.Debug("Initializing AutoLog Menu...")
    ALM.InitAM(settingsHandler, displayName, author, version)
    logger.Debug("AutoLog Menu initialized successfully.")
end

function ALM.InitAM(settingsHandler, displayName, author, version)
    if logger == nil then
        error("Logger is not initialized.")
    end
    logger.Debug("Initializing Addon Menu for AutoLog...")

    local panelData = {
        type = "panel",
        name = displayName,
        displayName = displayName:upper(),
        author = author,
        version = version,
        registerForRefresh = true,
        registerForDefaults = true,
    }

    local optionsTable = {
        {
            type = "checkbox",
            name = "Enable AutoLog",
            tooltip = "Enable or disable AutoLog functionality.",
            getFunc = settingsHandler.IsEnabled,
            setFunc = settingsHandler.SetEnabled,
            default = true,
        },
        {
            type = "divider",
            height = 15,
            alpha = 0,
        },
        {
            type = "checkbox",
            name = "Debug Mode",
            tooltip = "Enable debug mode for detailed logging.",
            getFunc = settingsHandler.IsDebugMode,
            setFunc = settingsHandler.SetDebugMode,
            default = false,
        },
        {
            type = "divider",
            height = 15,
            alpha = 0,
        },
        {
            type = "checkbox",
            name = "Log Trials",
            tooltip = "Enable logging for Trials.",
            getFunc = settingsHandler.IsLoggingTrials,
            setFunc = settingsHandler.SetLoggingTrials,
            default = true,
        },
        {
            type = "checkbox",
            name = "Log Dungeons",
            tooltip = "Enable logging for Dungeons.",
            getFunc = settingsHandler.IsLoggingDungeons,
            setFunc = settingsHandler.SetLoggingDungeons,
            default = false,
        },
        {
            type = "checkbox",
            name = "Log World Events",
            tooltip = "Enable logging for World Events.",
            getFunc = settingsHandler.IsLoggingWorldEvents,
            setFunc = settingsHandler.SetLoggingWorldEvents,
            default = false,
        },
    }

    LAM:RegisterAddonPanel(ALM.name, panelData)
    LAM:RegisterOptionControls(ALM.name, optionsTable)
end
