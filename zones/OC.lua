local AL = AutoLog
AL.zones["OC"] = {}
local OC = AL.zones["OC"]

OC.name = GetString(AL_OC_NAME)
OC.tag = "OC"
OC.icon = "/esoui/art/icons/achievement_u46_vtrial_meta.dds"
OC.priority = 14
OC.id = 1548
OC.node = 589
OC.category = AL.ACTIVITIES.TRIALS

OC.bosses = {
    [1] = {
        name = GetString(AL_TRASH),
    },
    [2] = {
        name = GetString(AL_OC_RED_WITCH_GEDNA_RELVEL),
    },
    [3] = {
        name = GetString(AL_OC_HALL_OF_FLESHCRAFT),
    },
    [4] = {
        name = GetString(AL_OC_TORTURED_RANYU),
    },
    [5] = {
        name = GetString(AL_OC_JYNORAH_AND_SKORKHIF),
    },
    [6] = {
        name = GetString(AL_OC_BLOOD_DRINKER_THISA),
    },
    [7] = {
        name = GetString(AL_OC_OVERFIEND_KAZPIAN),
    },
}

function OC.Init()

end

function OC.Reset()

end

function OC.OnBossChange(bossName)
    AL.conditions.OnBossChange(bossName)
end

function OC.GetCategory()
    return OC.category
end
