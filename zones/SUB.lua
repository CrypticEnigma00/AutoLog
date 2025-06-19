local AL = AutoLog
local ALZ = AL.zone
ALZ.zones["SUB"] = {}
local SUB = ALZ.zones["SUB"]

SUB.name = GetString(AL_SUB_NAME)
SUB.tag = "SUB"
SUB.icon = "/esoui/art/icons/achievement_u23_skillmaster_darkbrotherhood.dds"
SUB.priority = -1
SUB.id = -1
SUB.node = -1
SUB.category = ALZ.ACTIVITIES.MISC

SUB.bosses = {
    [1] = {
        name = GetString(AL_SUB_TRASH),
    },
    [2] = {
        name = GetString(AL_SUB_BOSS),
    },
}

function SUB.Init()

end

function SUB.Reset()

end

function SUB.OnBossChange(bossName)
    AL.conditions.OnBossChange(bossName)
end

function SUB.GetCategory()
    return SUB.category
end
