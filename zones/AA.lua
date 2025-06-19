local AL = AutoLog
local ALZ = AL.zone
ALZ.zones["AA"] = {}

local AA = ALZ.zones["AA"]

AA.name = GetString(AL_AA_NAME)
AA.tag = "AA"
AA.icon = "/esoui/art/icons/achievement_update11_dungeons_002.dds"
AA.priority = 1
AA.id = 638
AA.node = 231
AA.category = ALZ.ACTIVITIES.TRIALS

function AA.Init()

end

function AA.Reset()

end

function AA.OnBossChange(bossName)
end

function AA.GetCategory()
    return AA.category
end
