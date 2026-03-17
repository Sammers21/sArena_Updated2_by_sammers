sArenaMixin = {}
sArenaFrameMixin = {}
sArenaCastingBarExtensionMixin = {}
sArenaMixin.layouts = {}
sArenaMixin.auraPriorityLabels = {
    CROWD_CONTROL = "CROWD_CONTROL",
    IMPORTANT = "IMPORTANT",
    BIG_DEFENSIVE = "BIG_DEFENSIVE",
    EXTERNAL_DEFENSIVE = "EXTERNAL_DEFENSIVE",
}
sArenaMixin.defaultAuraPriorityOrder = {
    "CROWD_CONTROL",
    "BIG_DEFENSIVE",
    "EXTERNAL_DEFENSIVE",
    "IMPORTANT",
}
sArenaMixin.auraPriorityFilters = {
    CROWD_CONTROL = { filter = "HARMFUL|CROWD_CONTROL", validateDefensive = false },
    IMPORTANT = { filter = "HELPFUL|IMPORTANT", validateDefensive = false },
    BIG_DEFENSIVE = { filter = "HELPFUL|BIG_DEFENSIVE", validateDefensive = true },
    EXTERNAL_DEFENSIVE = { filter = "HELPFUL|EXTERNAL_DEFENSIVE", validateDefensive = false },
}

-- Font shim: Game10Font_o1 was removed in Midnight
local statusTextFont = (Game10Font_o1 and "Game10Font_o1") or "SystemFont_Shadow_Small2"

sArenaMixin.defaultSettings = {
    profile = {
        currentLayout = "BlizzArena",
        classColors = true,
        showNames = true,
        statusText = {
            usePercentage = false,
            alwaysShow = true,
        },
        layoutSettings = {},
        enableCombatLogging = false,
        auraPriorityOrder = {
            "CROWD_CONTROL",
            "BIG_DEFENSIVE",
            "EXTERNAL_DEFENSIVE",
            "IMPORTANT",
        },
    },
}

local db
local emptyLayoutOptionsTable = {
    notice = {
        name = "The selected layout doesn't appear to have any settings.",
        type = "description",
    },
}

local UnitIsDeadOrGhost = UnitIsDeadOrGhost

-- FormatHP is only safe for non-secret (literal/test) numbers.
-- For live arena, UnitHealth() returns a secret value; use AbbreviateLargeNumbers() instead.
local function FormatHP(hp)
    if hp >= 1e6 then
        return string.format("%.1fm", hp / 1e6)
    elseif hp >= 1e3 then
        return string.format("%.0fk", hp / 1e3)
    else
        return tostring(hp)
    end
end

local function CopyAuraPriorityOrder(order)
    local copy = {}

    for i, value in ipairs(order) do
        copy[i] = value
    end

    return copy
end

local function AurasChanged(updateInfo)
    if not updateInfo then return true end
    if updateInfo.isFullUpdate then return true end
    if (updateInfo.addedAuras and #updateInfo.addedAuras > 0)
        or (updateInfo.updatedAuras and #updateInfo.updatedAuras > 0)
        or (updateInfo.removedAuraInstanceIDs and #updateInfo.removedAuraInstanceIDs > 0)
    then
        return true
    end

    return false
end

local function IterateAuras(filter, validateDefensive, unit)
    local spellID, startTime, duration, texture

    for i = 1, 40 do
        local auraData = C_UnitAuras.GetAuraDataByIndex(unit, i, filter)
        if not auraData then break end

        local durationInfo = C_UnitAuras.GetAuraDuration(unit, auraData.auraInstanceID)
        local auraStart = durationInfo and durationInfo:GetStartTime()
        local auraDuration = durationInfo and durationInfo:GetTotalDuration()

        if auraStart and auraDuration then
            local garbageAuraData = false

            if validateDefensive then
                local isDefensive = C_UnitAuras.AuraIsBigDefensive(auraData.spellId)
                if not (issecretvalue(isDefensive) or isDefensive) then
                    garbageAuraData = true
                end
            end

            if not garbageAuraData then
                spellID = auraData.spellId
                startTime = auraStart
                duration = auraDuration
                texture = auraData.icon
            end
        end
    end

    return spellID, startTime, duration, texture
end

local function ChatCommand(input)
    if not input or input:trim() == "" then
        LibStub("AceConfigDialog-3.0"):Open("sArena")
    else
        LibStub("AceConfigCmd-3.0").HandleCommand("sArena", "sarena", "sArena", input)
    end
end

function sArenaMixin:Initialize()
    if (db) then return end

    self.db = LibStub("AceDB-3.0"):New("sArena3DB", self.defaultSettings, true)
    db = self.db
    self:NormalizeAuraPriorityOrder(db.profile)

    db.RegisterCallback(self, "OnProfileChanged", "RefreshConfig")
    db.RegisterCallback(self, "OnProfileCopied", "RefreshConfig")
    db.RegisterCallback(self, "OnProfileReset", "RefreshConfig")
    self.optionsTable.handler = self
    self.optionsTable.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(db)
    LibStub("AceConfig-3.0"):RegisterOptionsTable("sArena", self.optionsTable)
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions("sArena")
    LibStub("AceConfigDialog-3.0"):SetDefaultSize("sArena", 700, 620)
    LibStub("AceConsole-3.0"):RegisterChatCommand("sarena", ChatCommand)
    LibStub("AceConsole-3.0"):RegisterChatCommand("sa", ChatCommand)

    C_CVar.SetCVar("spellDiminishPVPEnemiesEnabled", "1")

    self:SetLayout(nil, db.profile.currentLayout)
end

function sArenaMixin:RefreshConfig()
    self:NormalizeAuraPriorityOrder(db.profile)
    self:SetLayout(nil, db.profile.currentLayout)
end

function sArenaMixin:NormalizeAuraPriorityOrder(profile)
    if not profile then return end

    local fallbackOrder
    if profile.prioImportantOverDefensives then
        fallbackOrder = {
            "CROWD_CONTROL",
            "IMPORTANT",
            "BIG_DEFENSIVE",
            "EXTERNAL_DEFENSIVE",
        }
    else
        fallbackOrder = CopyAuraPriorityOrder(self.defaultAuraPriorityOrder)
    end

    local order = {}
    local seen = {}
    local source = profile.auraPriorityOrder

    if type(source) == "table" then
        for i = 1, #self.defaultAuraPriorityOrder do
            local auraType = source[i]
            if self.auraPriorityFilters[auraType] and not seen[auraType] then
                order[#order + 1] = auraType
                seen[auraType] = true
            end
        end
    end

    for _, auraType in ipairs(fallbackOrder) do
        if not seen[auraType] then
            order[#order + 1] = auraType
            seen[auraType] = true
        end
    end

    profile.auraPriorityOrder = order
    profile.prioImportantOverDefensives = nil
end

function sArenaMixin:layoutReload(layout)
    if self.reloadPopup then
        self.reloadPopup:Hide()
        self.reloadPopup:SetParent(nil)
        self.reloadPopup = nil
    end
    local template = "BackdropTemplate"
    local frame = CreateFrame("Frame", "ReloadPopup", UIParent, template)
    frame:SetSize(350, 150)
    frame:SetPoint("CENTER", 0, 100)
    frame:SetFrameStrata("DIALOG")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetFrameStrata("TOOLTIP")

    frame.TitleText:SetText("sArena")

    local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    text:SetPoint("TOP", 0, -30)
    text:SetWidth(300)
    text:SetJustifyH("CENTER")
    text:SetText("Layout switched to " .. layout .. ". Switching layout requires a reload. Reload now to avoid issues?")

    local reloadButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    reloadButton:SetSize(100, 25)
    reloadButton:SetPoint("BOTTOMLEFT", 20, 20)
    reloadButton:SetText("Reload")
    reloadButton:SetScript("OnClick", function()
        ReloadUI()
    end)

    local cancelButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    cancelButton:SetSize(100, 25)
    cancelButton:SetPoint("BOTTOMRIGHT", -20, 20)
    cancelButton:SetText("Cancel")
    cancelButton:SetScript("OnClick", function()
        frame:Hide()
    end)
    self.reloadPopup = frame
    frame:Show()
end

function sArenaMixin:SetLayout(_, layout)
    if (InCombatLockdown()) then return end

    layout = sArenaMixin.layouts[layout] and layout or "BlizzArena"
    local oldLayout = self.db.profile.currentLayout

    db.profile.currentLayout = layout
    self.layoutdb = self.db.profile.layoutSettings[layout]

    for i = 1, 3 do
        local frame = self["arena" .. i]
        frame:ResetLayout()
        self.layouts[layout]:Initialize(frame)
        frame:UpdatePlayer()
    end

    self.optionsTable.args.layoutSettingsGroup.args = self.layouts[layout].optionsTable and
        self.layouts[layout].optionsTable or emptyLayoutOptionsTable
    LibStub("AceConfigRegistry-3.0"):NotifyChange("sArena")

    local _, instanceType = IsInInstance()
    if (instanceType ~= "arena" and self.arena1:IsShown()) then
        self:Test()
    end
    if oldLayout ~= layout then
        self:layoutReload(layout)
    end
end

function sArenaMixin:SetMouseState(state)
    for i = 1, 3 do
        local frame = self["arena" .. i]
        frame.CastBar:EnableMouse(state)
        frame.SpecIcon:EnableMouse(state)
        frame.Trinket:EnableMouse(state)
    end
end

-- Arena Frames

-- Exposed on mixin so Events.lua can use it in CreateTexturePool
function sArenaFrameMixin.ResetTexture(texturePool, t)
    if texturePool and texturePool.parent then
        t:SetParent(texturePool.parent)
    end

    t:SetTexture(nil)
    t:SetColorTexture(0, 0, 0, 0)
    t:SetVertexColor(1, 1, 1, 1)
    t:SetDesaturated()
    t:SetTexCoord(0, 1, 0, 1)
    t:ClearAllPoints()
    t:SetSize(0, 0)
    t:Hide()
end

function sArenaFrameMixin:UpdateVisible()
    if (InCombatLockdown()) then
        self:RegisterEvent("PLAYER_REGEN_ENABLED")
        return
    end

    local _, instanceType = IsInInstance()
    local id = self:GetID()
    if (instanceType == "arena" and (GetNumArenaOpponentSpecs() >= id or GetNumArenaOpponents() >= id)) then
        self:Show()
    else
        self:Hide()
    end
end

function sArenaFrameMixin:UpdatePlayer(unitEvent)
    local unit = self.unit

    self:GetClassAndSpec()
    self:FindAura()

    if ((unitEvent and unitEvent ~= "seen") or not UnitExists(unit)) then
        self:SetMysteryPlayer()
        return
    end

    C_PvP.RequestCrowdControlSpell(unit)

    -- prevent castbar and other frames from intercepting mouse clicks during a match
    if (unitEvent == "seen") then
        self.parent:SetMouseState(false)
    end

    self.hideStatusText = false

    self.Name:SetText(UnitName(unit) or "")
    self.Name:SetShown(db.profile.showNames)

    self:UpdateStatusTextVisible()
    self:SetStatusText()

    self:OnEvent("UNIT_MAXHEALTH", unit)
    self:OnEvent("UNIT_HEALTH", unit)
    self:OnEvent("UNIT_MAXPOWER", unit)
    self:OnEvent("UNIT_POWER_UPDATE", unit)
    self:OnEvent("UNIT_DISPLAYPOWER", unit)
    local color = RAID_CLASS_COLORS[select(2, UnitClass(unit))]

    if (color and db.profile.classColors) then
        self.HealthBar:SetStatusBarColor(color.r, color.g, color.b, 1.0)
    else
        self.HealthBar:SetStatusBarColor(0, 1.0, 0, 1.0)
    end
end

function sArenaFrameMixin:SetMysteryPlayer()
    local f = self.HealthBar
    f:SetMinMaxValues(0, 100)
    f:SetValue(100)
    f:SetStatusBarColor(0.5, 0.5, 0.5)

    f = self.PowerBar
    f:SetMinMaxValues(0, 100)
    f:SetValue(100)
    f:SetStatusBarColor(0.5, 0.5, 0.5)

    self.hideStatusText = true
    self:SetStatusText()

    self.DeathIcon:Hide()
end

function sArenaFrameMixin:GetClassAndSpec()
    local _, instanceType = IsInInstance()

    if (instanceType ~= "arena") then
        self.specTexture = nil
        self.class = nil
        self.SpecIcon:Hide()
    elseif (not self.specTexture or not self.class) then
        local id = self:GetID()
        if (GetNumArenaOpponentSpecs() >= id) then
            local specID = GetArenaOpponentSpec(id)
            if (specID > 0) then
                self.SpecIcon:Show()
                self.specTexture = select(4, GetSpecializationInfoByID(specID))
                self.SpecIcon.Texture:SetTexture(self.specTexture)

                self.class = select(6, GetSpecializationInfoByID(specID))
            end
        end

        if (not self.class and UnitExists(self.unit)) then
            _, self.class = UnitClass(self.unit)
        end
    end

    if (not self.specTexture) then
        self.SpecIcon:Hide()
    end
end

function sArenaFrameMixin:FindAura(updateInfo)
    if updateInfo and not AurasChanged(updateInfo) then return end

    local unit = self.unit
    local spellID, startTime, duration, texture
    local priorityOrder = db and db.profile and db.profile.auraPriorityOrder or sArenaMixin.defaultAuraPriorityOrder

    for _, auraType in ipairs(priorityOrder) do
        local filterInfo = sArenaMixin.auraPriorityFilters[auraType]
        if filterInfo then
            spellID, startTime, duration, texture = IterateAuras(filterInfo.filter, filterInfo.validateDefensive, unit)
            if spellID then
                break
            end
        end
    end

    self.currentAuraSpellID = spellID
    self.currentAuraStartTime = startTime
    self.currentAuraDuration = duration
    self.currentAuraTexture = texture

    self:UpdateClassIcon()
end

function sArenaFrameMixin:UpdateClassIcon(force)
    if self.currentAuraSpellID and self.currentAuraStartTime and self.currentAuraDuration then
        self.ClassIconCooldown:SetCooldown(self.currentAuraStartTime, self.currentAuraDuration)
    elseif not self.currentAuraSpellID then
        self.ClassIconCooldown:Clear()
    end

    local texture = self.currentAuraSpellID and self.currentAuraTexture or self.class and sArenaMixin.classIcons[self.class] or 134400

    self.currentClassIconTexture = texture
    self.ClassIcon:SetTexture(texture)
end

function sArenaFrameMixin:ResetTrinket()
    self.Trinket.spellID = nil
    self.Trinket.Texture:SetTexture(nil)
    self.Trinket.Cooldown:Clear()
end

local function ResetStatusBar(f)
    f:ClearAllPoints()
    f:SetSize(0, 0)
    f:SetScale(1)
end

local function ResetFontString(f)
    f:SetDrawLayer("OVERLAY", 1)
    f:SetJustifyH("CENTER")
    f:SetJustifyV("MIDDLE")
    f:SetTextColor(1, 0.82, 0, 1)
    f:SetShadowColor(0, 0, 0, 1)
    f:SetShadowOffset(1, -1)
    f:ClearAllPoints()
    f:Hide()
end

function sArenaFrameMixin:ResetLayout()
    self.currentClassIconTexture = nil
    self.currentAuraSpellID = nil
    self.currentAuraStartTime = nil
    self.currentAuraDuration = nil
    self.currentAuraTexture = nil

    sArenaFrameMixin.ResetTexture(nil, self.ClassIcon)
    ResetStatusBar(self.HealthBar)
    ResetStatusBar(self.PowerBar)
    if not self._blizzardCastBar then
        ResetStatusBar(self.CastBar)
        self.CastBar:SetHeight(16)
    end
    self.ClassIcon:RemoveMaskTexture(self.ClassIconMask)

    self.ClassIconCooldown:SetSwipeTexture(1)
    self.ClassIconCooldown:SetUseCircularEdge(false)
    self.ClassIconCooldown:Clear()

    local f = self.Trinket
    f:ClearAllPoints()
    f:SetSize(0, 0)
    f.Texture:SetTexCoord(0, 1, 0, 1)

    f = self.SpecIcon
    f:ClearAllPoints()
    f:SetSize(0, 0)
    f:SetScale(1)
    f.Texture:RemoveMaskTexture(f.Mask)
    f.Texture:SetTexCoord(0, 1, 0, 1)

    f = self.Name
    ResetFontString(f)
    f:SetDrawLayer("ARTWORK", 3)
    f:SetFontObject("SystemFont_Shadow_Small2")

    f = self.HealthText
    ResetFontString(f)
    f:SetDrawLayer("OVERLAY", 2)
    f:SetFontObject(statusTextFont)
    f:SetTextColor(1, 1, 1, 1)

    f = self.PowerText
    ResetFontString(f)
    f:SetDrawLayer("OVERLAY", 2)
    f:SetFontObject(statusTextFont)
    f:SetTextColor(1, 1, 1, 1)

    f = self.CastBar
    f.Icon:SetTexCoord(0, 1, 0, 1)

    self.TexturePool:ReleaseAll()
end

function sArenaFrameMixin:SetPowerType(powerType)
    local color = PowerBarColor[powerType]
    if color then
        self.PowerBar:SetStatusBarColor(color.r, color.g, color.b)
    end
end

function sArenaFrameMixin:SetLifeState()
    local unit = self.unit
    local isDead = UnitIsDeadOrGhost(unit)

    self.DeathIcon:SetShown(isDead)
    self.hideStatusText = isDead
end

function sArenaFrameMixin:SetStatusText(unit, fakeHP)
    if (self.hideStatusText) then
        self.HealthText:SetText("")
        self.PowerText:SetText("")
        return
    end

    if (not unit) then
        unit = self.unit
    end

    if db.profile.statusText.usePercentage then
        self.HealthText:SetFormattedText("%0.f%%", UnitHealthPercent(unit, nil, CurveConstants.ScaleTo100))
    else
        -- fakeHP is a non-secret literal (test mode only) so FormatHP is safe.
        -- UnitHealth() returns a secret; AbbreviateLargeNumbers() accepts secrets.
        self.HealthText:SetText(fakeHP and FormatHP(fakeHP) or AbbreviateLargeNumbers(UnitHealth(unit)))
    end
    self.PowerText:SetText("")
end

function sArenaFrameMixin:UpdateStatusTextVisible()
    self.HealthText:SetShown(db.profile.statusText.alwaysShow)
    self.PowerText:SetShown(db.profile.statusText.alwaysShow)
end

-- Default bar fill — layouts override via barFillData on each castbar
local defaultBarFill = "Interface\\RaidFrame\\Raid-Bar-Hp-Fill"
if sArenaCastingBarExtensionMixin then
    sArenaCastingBarExtensionMixin.barFillData = {
        filling = defaultBarFill,
        full    = defaultBarFill,
        glow    = defaultBarFill,
    }
end

local NUM_ARENA_FRAMES = 3

-- Shared layout accessor factory — avoids duplicate getSetting/setSetting in every layout file
function sArenaMixin:CreateLayoutAccessors(layoutObj, onChangeCallback)
    local function readValue(info)
        return layoutObj.db[info[#info]]
    end

    local function writeValue(info, val)
        layoutObj.db[info[#info]] = val
        for idx = 1, NUM_ARENA_FRAMES do
            local arenaFrame = info.handler["arena" .. idx]
            if onChangeCallback then
                onChangeCallback(layoutObj, arenaFrame)
            end
        end
    end

    return readValue, writeValue
end

