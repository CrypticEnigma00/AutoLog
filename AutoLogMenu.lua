Autolog = Autolog or {}
local AL = AutoLog

AL.Menu = {}
local ALM = AL.Menu

ALM.name = "AutoLogMenu"

local LAM = LibAddonMenu2
local logger = LibDebugLogger(ALM.name)


function ALM.Init()
    logger:Debug("Initializing AutoLog Menu...")
    ALM.InitSV()
    ALM.InitAM()
end

function ALM.InitSV()
    logger:Debug("Initializing Saved Variables for AutoLog...")
    AL.settings = ZO_SavedVars:NewAccountWide("AutoLogSV", 1, nil, {
        enabled = true,
        debugMode = false,
        logTrials = true,
        logDungeons = false,
        logWorldEvents = false,
    })
end

function ALM.InitAM()
    logger:Debug("Initializing Addon Menu for AutoLog...")

    local panelData = {
        type = "panel",
        name = AL.displayName,
        displayName = AL.displayName:upper(),
        author = AL.author,
        version = AL.version,
        registerForRefresh = true,
        registerForDefaults = true,
    }

    local optionsTable = {
        {
            type = "checkbox",
            name = "Enable AutoLog",
            tooltip = "Enable or disable AutoLog functionality.",
            getFunc = function() return AL.settings.enabled end,
            setFunc = function(value) AL.settings.enabled = value end,
            default = true,
        },
        {
            type = "checkbox",
            name = "Debug Mode",
            tooltip = "Enable debug mode for detailed logging.",
            getFunc = function() return AL.settings.debugMode end,
            setFunc = function(value) AL.settings.debugMode = value end,
            default = false,
        },
        {
            type = "checkbox",
            name = "Log Trials",
            tooltip = "Enable logging for Trials.",
            getFunc = function() return AL.settings.logTrials end,
            setFunc = function(value) AL.settings.logTrials = value end,
            default = true,
        },
        {
            type = "checkbox",
            name = "Log Dungeons",
            tooltip = "Enable logging for Dungeons.",
            getFunc = function() return AL.settings.logDungeons end,
            setFunc = function(value) AL.settings.logDungeons = value end,
            default = false,
        },
        {
            type = "checkbox",
            name = "Log World Events",
            tooltip = "Enable logging for World Events.",
            getFunc = function() return AL.settings.logWorldEvents end,
            setFunc = function(value) AL.settings.logWorldEvents = value end,
            default = false,
        },
    }

    LAM:RegisterAddonPanel(ALM.name, panelData)
    LAM:RegisterOptionControls(ALM.name, optionsTable)
end
