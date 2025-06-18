local AL = AutoLog
AL.zones["HRC"] = {}
local HRC = AL.zones["HRC"]

HRC.name = GetString(AL_HRC_NAME)
HRC.tag = "HRC"
HRC.icon = "/esoui/art/icons/achievement_update11_dungeons_001.dds"
HRC.priority = 3
HRC.id = 636
HRC.node = 230
HRC.category = AL.ACTIVITIES.TRIALS

HRC.bosses = {
    [1] = {
        name = GetString(AL_TRASH),
    },
    [2] = {
        name = GetString(AL_HRC_RAKOTU),
    },
    [3] = {
        name = GetString(AL_HRC_LOWER),
    },
    [4] = {
        name = GetString(AL_HRC_UPPER),
    },
    [5] = {
        name = GetString(AL_HRC_WARRIOR),
    },
}

function HRC.Init()

end

function HRC.Reset()

end

function HRC.OnBossChange(bossName)
    AL.conditions.OnBossChange(bossName)
end

function HRC.GetCategory()
    return HRC.category
end
