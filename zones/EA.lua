local AL = AutoLog
local ALZ = AL.zone
ALZ.zones["IA"] = {}
local IA = ALZ.zones["IA"]

IA.name = zo_strformat("<<t:1>>", GetZoneNameById(1436))
IA.tag = "IA"
IA.icon = "/esoui/art/icons/achievement_u40_ed2_defeat_final_boss_50.dds"
IA.priority = 14
IA.id = 1436
IA.node = 550
IA.category = ALZ.ACTIVITIES.ENDLESS

IA.bosses = {
    [1] = {
        name = GetString(AL_TRASH),
    },
    [2] = {
        name = GetString(AL_SUB_BOSS),
    },
}

function IA.Init()

end

function IA.Reset()

end

function IA.OnBossChange(bossName)
    if #bossName > 0 then
        AL.conditions.OnBossChange(GetString(AL_SUB_BOSS))
    else
        AL.conditions.OnBossChange(bossName)
    end
end

function IA.GetCategory()
    return IA.category
end
