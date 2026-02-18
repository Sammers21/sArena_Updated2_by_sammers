-- Data.lua: Static data tables for sArena

-- Class icon texture IDs (used by sArena.lua and TestMode.lua)
sArenaMixin.classIcons = {
    ["DRUID"] = 625999,
    ["HUNTER"] = 135495,
    ["MAGE"] = 135150,
    ["MONK"] = 626002,
    ["PALADIN"] = 626003,
    ["PRIEST"] = 626004,
    ["ROGUE"] = 626005,
    ["SHAMAN"] = 626006,
    ["WARLOCK"] = 626007,
    ["WARRIOR"] = 135328,
    ["DEATHKNIGHT"] = 135771,
    ["DEMONHUNTER"] = 1260827,
    ["EVOKER"] = 4574311,
}

-- DR severity border colors
-- Used by InitializeDRFrames() for border color on stolen Blizzard DR tray
sArenaMixin.severityColor = {
    [1] = { 0, 1, 0, 1},    -- green (first application)
    [2] = { 1, 1, 0, 1},    -- yellow (half duration)
    [3] = { 1, 0, 0, 1},    -- red (immune)
}
