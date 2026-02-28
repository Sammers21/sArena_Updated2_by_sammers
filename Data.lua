-- Data.lua: Static data tables for sArena

-- Build class-icon lookup from a flat list (class, textureID pairs).
-- These are standard Blizzard texture FileData IDs — they must match the game files.
local CLASS_ICON_LIST = {
    "DEATHKNIGHT", 135771,
    "DEMONHUNTER", 1260827,
    "DRUID",       625999,
    "EVOKER",      4574311,
    "HUNTER",      135495,
    "MAGE",        135150,
    "MONK",        626002,
    "PALADIN",     626003,
    "PRIEST",      626004,
    "ROGUE",       626005,
    "SHAMAN",      626006,
    "WARLOCK",     626007,
    "WARRIOR",     135328,
}

sArenaMixin.classIcons = {}
for i = 1, #CLASS_ICON_LIST, 2 do
    sArenaMixin.classIcons[CLASS_ICON_LIST[i]] = CLASS_ICON_LIST[i + 1]
end

-- DR severity border colors (indexed by stack count)
sArenaMixin.severityColor = {
    [1] = { 0, 1, 0, 1 },   -- green  (diminished)
    [2] = { 1, 0, 0, 1 },   -- red    (immune next)
}
