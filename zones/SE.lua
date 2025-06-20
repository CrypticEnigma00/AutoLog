local AL = AutoLog
local ALZ = AL.zone
ALZ.zones["SE"] = {}
local SE = ALZ.zones["SE"]

SE.name = GetString(AL_SE_NAME)
SE.tag = "SE"
SE.icon = "/esoui/art/icons/achievement_u38_vtrial_meta.dds"
SE.priority = 12
SE.id = 1427
SE.node = 534
SE.category = ALZ.ACTIVITIES.TRIALS

SE.bosses = {
    [1] = {
        name = GetString(AL_TRASH),
    },
    [2] = {
        name = GetString(AL_SE_DESCENDER), -- Appears randomly, therefore no postition saved
    },
    [3] = {
        name = GetString(AL_SE_YASEYLA),
    },
    [4] = {
        name = GetString(AL_SE_TWELVANE), --
    },
    [5] = {
        name = GetString(AL_SE_ANSUUL),
    },

}

SE.LOCATIONS = {
    YASEYLA = {
        x1 = 81000,
        x2 = 88000,
        y1 = 14000,
        y2 = 18000,
        z1 = 30000,
        z2 = 38000,
    },
    TWELVANE = {
        x1 = 181951,
        x2 = 187951,
        y1 = 39840,
        y2 = 40840,
        z1 = 216024,
        z2 = 225224,
    },
    ANSUUL = {
        x1 = 196953,
        x2 = 202953,
        y1 = 29699,
        y2 = 30699,
        z1 = 33632,
        z2 = 42832,
    },
}

function SE.Init()
    EVENT_MANAGER:UnregisterForEvent(AL.name, EVENT_BOSSES_CHANGED)
    EVENT_MANAGER:RegisterForUpdate(AL.name .. SE.tag .. "MovementLoop", 2000, SE.OnMovement)
    EVENT_MANAGER:RegisterForEvent(AL.name .. SE.tag, EVENT_PLAYER_COMBAT_STATE, SE.OnCombatChange)
end

function SE.Reset()
    EVENT_MANAGER:UnregisterForEvent(AL.name .. SE.tag, EVENT_PLAYER_COMBAT_STATE)
    EVENT_MANAGER:UnregisterForUpdate(AL.name .. SE.tag .. "MovementLoop")
    EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_BOSSES_CHANGED, AL.OnBossChange)
end

function SE.OnCombatChange(_, inCombat)
    if inCombat then
        EVENT_MANAGER:UnregisterForUpdate(AL.name .. SE.tag .. "MovementLoop")
    else
        EVENT_MANAGER:RegisterForUpdate(AL.name .. SE.tag .. "MovementLoop", 2000, SE.OnMovement)
    end
end

function SE.OnMovement()
    local bossName = SE.GetBossByLocation()
    if not bossName then return end
    AL.OnBossChange(_, true, bossName)
end

function SE.GetBossByLocation()
    local zone, x, y, z = GetUnitWorldPosition("player")

    if zone ~= SE.id then return nil end

    if x > SE.LOCATIONS.YASEYLA.x1 and x < SE.LOCATIONS.YASEYLA.x2
        and y > SE.LOCATIONS.YASEYLA.y1 and y < SE.LOCATIONS.YASEYLA.y2
        and z > SE.LOCATIONS.YASEYLA.z1 and z < SE.LOCATIONS.YASEYLA.z2 then
        if DoesUnitExist('boss1') and not IsUnitDead('boss1') then
            return GetString(AL_SE_YASEYLA)
        end
    elseif x > SE.LOCATIONS.TWELVANE.x1 and x < SE.LOCATIONS.TWELVANE.x2
        and y > SE.LOCATIONS.TWELVANE.y1 and y < SE.LOCATIONS.TWELVANE.y2
        and z > SE.LOCATIONS.TWELVANE.z1 and z < SE.LOCATIONS.TWELVANE.z2 then
        if DoesUnitExist('boss1') and not IsUnitDead('boss1') then
            return GetString(AL_SE_TWELVANE)
        end
    elseif x > SE.LOCATIONS.ANSUUL.x1 and x < SE.LOCATIONS.ANSUUL.x2
        and y > SE.LOCATIONS.ANSUUL.y1 and y < SE.LOCATIONS.ANSUUL.y2
        and z > SE.LOCATIONS.ANSUUL.z1 and z < SE.LOCATIONS.ANSUUL.z2 then
        if DoesUnitExist('boss1') and not IsUnitDead('boss1') then
            return GetString(AL_SE_ANSUUL)
        end
    else
        return GetString(AL_TRASH)
    end
end

function SE.OnBossChange(bossName)
    AL.conditions.OnBossChange(bossName)
end

function SE.GetCategory()
    return SE.category
end
