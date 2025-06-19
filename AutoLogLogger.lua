local AL = AutoLog
AL.logger = {}
local ALL = AL.logger
local logger = nil

function ALL.Init(loggerInstance)
    logger = loggerInstance
    logger:Debug("Logger initialized successfully.")
end

function ALL.Debug(message)
    if ALL.verifyMessage(message) == false then
        return
    end

    if logger then
        logger:Debug(message)
    end
end

function ALL.Info(message)
    if ALL.verifyMessage(message) == false then
        return
    end

    if logger then
        logger:Info(message)
    end
end

function ALL.Warning(message)
    if ALL.verifyMessage(message) == false then
        return
    end

    if logger then
        logger:Warning(message)
    end
end

function ALL.Error(message)
    if ALL.verifyMessage(message) == false then
        return
    end

    if logger then
        logger:Error(message)
    end
end

function ALL.Chat(message)
    ALL.verifyMessage(message)
    if not CHAT_ROUTER then
        ALL.Error("CHAT_ROUTER is not available. Cannot log chat message.")
        return
    end

    local formattedMessage = string.format("[%s] %s", AL.displayName, message)

    CHAT_ROUTER:AddSystemMessage(formattedMessage)
end

function ALL.verifyMessage(message)
    if not message or type(message) ~= "string" or message == "" then
        ALL.LogError("Invalid message provided for logging.")
        return false
    end
    return true
end
