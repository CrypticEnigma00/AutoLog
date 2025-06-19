local AL = AutoLog
local ALZ = AL.zone
ALZ.zones["GEN"] = {}
local GEN = ALZ.zones["GEN"]

GEN.name = GetString(AL_GENERAL)
GEN.tag = "GEN"
GEN.icon = "/esoui/art/icons/achievement_u26_skyrim_trial_flavor_2.dds"
GEN.priority = -2
GEN.id = -1
GEN.node = -1
GEN.category = ALZ.ACTIVITIES.GENERAL
GEN.bosses = {}

function GEN.Init()

end

function GEN.Reset()

end

function GEN.OnBossChange(bossName)
end

function GEN.GetCategory()
    return GEN.category
end
