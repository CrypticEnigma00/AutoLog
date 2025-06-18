local AL = AutoLog
AL.zones["KA"] = {}
local KA = AL.zones["KA"]

KA.name = GetString(AL_KA_NAME)
KA.tag = "KA"
KA.icon = "/esoui/art/icons/achievement_u26_skyrim_vtrial_meta.dds"
KA.priority = 9
KA.id = 1196
KA.node = 434
KA.category = AL.ACTIVITIES.TRIALS

KA.bosses = {
    [1] = {
        name = GetString(AL_TRASH),
    },
    [2] = {
        name = GetString(AL_KA_YANDIR),
    },
    [3] = {
        name = GetString(AL_KA_VROL),
    },
    [4] = {
        name = GetString(AL_KA_FALGRAVN),
    },
}

KA.LOCATIONS = {
    YANDIR = {
        x1 = 63200,
        x2 = 68900,
        y1 = 24300,
        y2 = 26300,
        z1 = 90500,
        z2 = 99600,
    },
    VROL = {
        x1 = 110200,
        x2 = 118500,
        y1 = 24500,
        y2 = 29000,
        z1 = 65000,
        z2 = 78800,
    },
    FALGRAVN = {
        x1 = 73700,
        x2 = 84500,
        y1 = 6000,
        y2 = 22500,
        z1 = 50200,
        z2 = 61900,
    },
}

function KA.Init()
    EVENT_MANAGER:UnregisterForEvent(AL.name, EVENT_BOSSES_CHANGED)
    EVENT_MANAGER:RegisterForUpdate(AL.name .. KA.tag .. "MovementLoop", 2000, KA.OnMovement)
    EVENT_MANAGER:RegisterForEvent(AL.name .. KA.tag, EVENT_PLAYER_COMBAT_STATE, KA.OnCombatChange)
end

function KA.Reset()
    EVENT_MANAGER:UnregisterForEvent(AL.name .. KA.tag, EVENT_PLAYER_COMBAT_STATE)
    EVENT_MANAGER:UnregisterForUpdate(AL.name .. KA.tag .. "MovementLoop")
    EVENT_MANAGER:RegisterForEvent(AL.name, EVENT_BOSSES_CHANGED, AL.OnBossChange)
end

function KA.OnCombatChange(_, inCombat)
    if inCombat then
        EVENT_MANAGER:UnregisterForUpdate(AL.name .. KA.tag .. "MovementLoop")
    else
        EVENT_MANAGER:RegisterForUpdate(AL.name .. KA.tag .. "MovementLoop", 2000, KA.OnMovement)
    end
end

function KA.OnMovement()
    local bossName = KA.GetBossByLocation()
    if not bossName then return end
    AL.OnBossChange(_, true, bossName)
end

function KA.GetBossByLocation()
    local zone, x, y, z = GetUnitWorldPosition("player")

    if zone ~= KA.id then return nil end

    if x > KA.LOCATIONS.YANDIR.x1 and x < KA.LOCATIONS.YANDIR.x2
        and y > KA.LOCATIONS.YANDIR.y1 and y < KA.LOCATIONS.YANDIR.y2
        and z > KA.LOCATIONS.YANDIR.z1 and z < KA.LOCATIONS.YANDIR.z2 then
        return GetString(AL_KA_YANDIR)
    elseif x > KA.LOCATIONS.VROL.x1 and x < KA.LOCATIONS.VROL.x2
        and y > KA.LOCATIONS.VROL.y1 and y < KA.LOCATIONS.VROL.y2
        and z > KA.LOCATIONS.VROL.z1 and z < KA.LOCATIONS.VROL.z2 then
        return GetString(AL_KA_VROL)
    elseif x > KA.LOCATIONS.FALGRAVN.x1 and x < KA.LOCATIONS.FALGRAVN.x2
        and y > KA.LOCATIONS.FALGRAVN.y1 and y < KA.LOCATIONS.FALGRAVN.y2
        and z > KA.LOCATIONS.FALGRAVN.z1 and z < KA.LOCATIONS.FALGRAVN.z2 then
        return GetString(AL_KA_FALGRAVN)
    else
        return GetString(AL_TRASH)
    end
end

function KA.OnBossChange(bossName)
    AL.conditions.OnBossChange(bossName)
end

function KA.GetCategory()
    return KA.category
end
