local AL = AutoLog
AL.zones["PVP"] = {}
local PVP = AL.zones["PVP"]

PVP.name = GetString(AL_PVP_NAME)
PVP.tag = "PVP"
PVP.icon = "/esoui/art/icons/achievement_071.dds"
PVP.priority = 0
PVP.category = AL.ACTIVITIES.MISC

PVP.id = {
    [181] = true, -- Cyrodiil
    [643] = true, -- Imperial City
    [508] = true, -- Foyada Quarry
    [509] = true, -- Ald Carac
    [510] = true, -- Ularra
    [511] = true, -- Arcane University
    [512] = true, -- Deeping Drome
    [513] = true, -- Mor Khazgur Mine
    [514] = true, -- Istirus Outpost
    [515] = true, -- Istirus Outpost Arena (?)
    [517] = true, -- Eld Angavar
    [518] = true, -- Eld Angavar (?)
}
PVP.node = -1

PVP.bosses = {}

function PVP.Init()

end

function PVP.Reset()

end

function PVP.OnBossChange(bossName)

end

function PVP.GetCategory()
    return PVP.category
end
