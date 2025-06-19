local AL = AutoLog
local ALZ = AL.zone
ALZ.zones["SO"] = {}
local SO = ALZ.zones["SO"]

SO.name = GetString(AL_SO_NAME)
SO.tag = "SO"
SO.icon = "/esoui/art/icons/achievement_darkbrotherhood_038.dds"
SO.priority = 2
SO.id = 639
SO.node = 232
SO.category = ALZ.ACTIVITIES.TRIALS

SO.bosses = {
    [1] = {
        name = GetString(AL_TRASH),
    },
    [2] = {
        name = GetString(AL_SO_MANTIKORA),
    },
    [3] = {
        name = GetString(AL_SO_TROLL),
    },
    [4] = {
        name = GetString(AL_SO_OZARA),
    },
    [5] = {
        name = GetString(AL_SO_SERPENT),
    },
}

function SO.Init()

end

function SO.Reset()

end

function SO.OnBossChange(bossName)
    AL.conditions.OnBossChange(bossName)
end

function SO.GetCategory()
    return SO.category
end
