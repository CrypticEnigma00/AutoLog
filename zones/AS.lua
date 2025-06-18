local AL = AutoLog
AL.zones["AS"] = {}
local AS = AL.zones["AS"]

AS.name = GetString(AL_AS_NAME)
AS.tag = "AS"
AS.icon = "/esoui/art/icons/achievement_update16_029.dds"
AS.priority = 6
AS.id = 1000
AS.node = 346
AS.category = AL.ACTIVITIES.TRIALS

AS.bosses = {
    [1] = {
        name = GetString(AL_AS_OLMS),
    },
    [2] = {
        name = GetString(AL_AS_FELMS),
    },
    [3] = {
        name = GetString(AL_AS_LLOTHIS),
    },
}

function AS.Init()
    EVENT_MANAGER:UnregisterForEvent(AL.name, EVENT_BOSSES_CHANGED)
    EVENT_MANAGER:RegisterForUpdate(AL.name .. AS.tag .. "MovementLoop", 2000, AS.OnMovement)
    EVENT_MANAGER:RegisterForEvent(AL.name .. AS.tag, EVENT_PLAYER_COMBAT_STATE, AS.OnCombatChange)
end

function AS.Reset()
    EVENT_MANAGER:UnregisterForEvent(AL.name .. AS.tag, EVENT_PLAYER_COMBAT_STATE)
    EVENT_MANAGER:UnregisterForUpdate(AL.name .. AS.tag .. "MovementLoop")
    EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_BOSSES_CHANGED, AL.OnBossChange)
end

function AS.OnCombatChange(_, inCombat)
    if inCombat then
        EVENT_MANAGER:UnregisterForUpdate(AL.name .. AS.tag .. "MovementLoop")
    else
        EVENT_MANAGER:RegisterForUpdate(AL.name .. AS.tag .. "MovementLoop", 2000, AS.OnMovement)
    end
end

function AS.OnMovement()
    local _, x, y, z = GetUnitWorldPosition("player")
    local bossName = GetString(AL_AS_OLMS)
    if y > 65000 then -- upper part of AS
        bossName = GetString(AL_AS_LLOTHIS)
        if z > 100000 then
            bossName = GetString(AL_AS_FELMS)
        end
    end
    AL.OnBossChange(_, true, bossName)
end

function AS.OnBossChange(bossName)
    -- no trash setup in AS
    if #bossName == 0 then
        return
    end

    AL.conditions.OnBossChange(bossName)
end

function AS.GetCategory()
    return AS.category
end
