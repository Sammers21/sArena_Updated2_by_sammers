sArenaMixin = {}
sArenaFrameMixin = {}

-- Retail-only version - no multi-version support needed
sArenaMixin.isRetail = true
sArenaMixin.isMidnight = true
sArenaMixin.isMoP = false
sArenaMixin.isWrath = false
sArenaMixin.isTBC = false

sArenaMixin.layouts = {}
sArenaMixin.defaultSettings = {
    profile = {
        currentLayout = "Gladiuish",
        classColors = true,
        showNames = true,
        hidePowerText = true,
        showDecimalsDR = true,
        showDecimalsClassIcon = true,
        decimalThreshold = 6,
        colorDRCooldownText = false,
        darkModeValue = 0.2,
        desaturateTrinketCD = true,
        desaturateDispelCD = true,
        darkModeDesaturate = true,
        statusText = {
            alwaysShow = true,
            formatNumbers = true,
        },
        castBarColors = {
            standard = { 1.0, 0.7, 0.0, 1 },
            channel = { 0.0, 1.0, 0.0, 1 },
            uninterruptable = { 0.7, 0.7, 0.7, 1 },
            interruptNotReady = { 1.0, 0.0, 0.0, 1 },
        },
        layoutSettings = {},
        invertClassIconCooldown = true,
    }
}
