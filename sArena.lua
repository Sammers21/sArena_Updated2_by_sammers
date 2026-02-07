sArenaMixin = {}
sArenaFrameMixin = {}
sArenaCastingBarExtensionMixin = {}
sArenaMixin.layouts = {}

-- Spell API shim
local GetSpellTexture = GetSpellTexture or C_Spell.GetSpellTexture

-- Font shim: Game10Font_o1 was removed in Midnight
local statusTextFont = (Game10Font_o1 and "Game10Font_o1") or "SystemFont_Shadow_Small2"

sArenaMixin.defaultSettings = {
    profile = {
        currentLayout = "BlizzArena",
        classColors = true,
        showNames = true,
        hideOverabsorbs = false,
        statusText = {
            usePercentage = false,
            alwaysShow = true,
        },
        layoutSettings = {},
    },
}

local db
local auraList
local interruptList
local classIcons = {
    ["DRUID"] = 625999,
    ["HUNTER"] = 135495, -- 626000
    ["MAGE"] = 135150, -- 626001
    ["MONK"] = 626002,
    ["PALADIN"] = 626003,
    ["PRIEST"] = 626004,
    ["ROGUE"] = 626005,
    ["SHAMAN"] = 626006,
    ["WARLOCK"] = 626007,
    ["WARRIOR"] = 135328, -- 626008
    ["DEATHKNIGHT"] = 135771,
    ["DEMONHUNTER"] = 1260827,
	["EVOKER"] = 4574311,
}
local emptyLayoutOptionsTable = {
    notice = {
        name = "The selected layout doesn't appear to have any settings.",
        type = "description",
    },
}
local blizzFrame

-- make local vars of globals that are used with high frequency
local CombatLogGetCurrentEventInfo = CombatLogGetCurrentEventInfo
local UnitGUID = UnitGUID
local UnitChannelInfo = UnitChannelInfo
local GetTime = GetTime
local After = C_Timer.After
local UnitHealthMax = UnitHealthMax
local UnitHealth = UnitHealth
local UnitPowerMax = UnitPowerMax
local UnitPower = UnitPower
local UnitPowerType = UnitPowerType
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local ceil = ceil
local AbbreviateLargeNumbers = AbbreviateLargeNumbers
local UnitFrameHealPredictionBars_Update = UnitFrameHealPredictionBars_Update_Sarena

local function UpdateBlizzVisibility(instanceType)
    -- hide blizz arena frames while in arena
    if (InCombatLockdown()) then return end

    if CompactArenaFrame then
        if (not blizzFrame) then
            blizzFrame = CreateFrame("Frame")
            blizzFrame:Hide()
        end
        if (instanceType == "arena") then
            CompactArenaFrame:SetParent(blizzFrame)
            if CompactArenaFrameTitle then
                CompactArenaFrameTitle:SetParent(blizzFrame)
            end
        end
    end
end

-- Parent Frame

function sArenaMixin:OnLoad()
    auraList = self.auraList
    interruptList = self.interruptList

    self:RegisterEvent("PLAYER_LOGIN")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")

    -- COMBAT_LOG_EVENT_UNFILTERED is protected on Midnight (12.x)
    -- Racials, interrupts, and DRs via CLEU are not available
end

function sArenaMixin:OnEvent(event, ...)
    if (event == "PLAYER_LOGIN") then
        self:Initialize()
        self:UnregisterEvent("PLAYER_LOGIN")
    elseif (event == "PLAYER_ENTERING_WORLD") then
        local _, instanceType = IsInInstance()
        UpdateBlizzVisibility(instanceType)
        self:SetMouseState(true)
        if (instanceType == "arena") then
            self.inArena = true
        else
            self.inArena = false
        end
    end
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
    self:SetLayout(nil, db.profile.currentLayout)
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

function sArenaMixin:SetupDrag(frameToClick, frameToMove, settingsTable, updateMethod)
    frameToClick:HookScript("OnMouseDown", function()
        if (InCombatLockdown()) then return end

        if (IsShiftKeyDown() and IsControlKeyDown() and not frameToMove.isMoving) then
            frameToMove:StartMoving()
            frameToMove.isMoving = true
        end
    end)

    frameToClick:HookScript("OnMouseUp", function()
        if (InCombatLockdown()) then return end

        if (frameToMove.isMoving) then
            frameToMove:StopMovingOrSizing()
            frameToMove.isMoving = false

            local settings = db.profile.layoutSettings[db.profile.currentLayout]

            if (settingsTable) then
                settings = settings[settingsTable]
            end

            local parentX, parentY = frameToMove:GetParent():GetCenter()
            local frameX, frameY = frameToMove:GetCenter()
            local scale = frameToMove:GetScale()

            frameX = ((frameX * scale) - parentX) / scale
            frameY = ((frameY * scale) - parentY) / scale

            -- round to 1 decimal place
            frameX = floor(frameX * 10 + 0.5) / 10
            frameY = floor(frameY * 10 + 0.5) / 10

            settings.posX, settings.posY = frameX, frameY
            self[updateMethod](self, settings)
            LibStub("AceConfigRegistry-3.0"):NotifyChange("sArena")
        end
    end)
end

function sArenaMixin:SetMouseState(state)
    for i = 1, 3 do
        local frame = self["arena" .. i]
        frame.CastBar:EnableMouse(state)
        frame.Stun:EnableMouse(state)
        frame.SpecIcon:EnableMouse(state)
        frame.Trinket:EnableMouse(state)
        frame.Racial:EnableMouse(state)
    end
end

-- Arena Frames

local function ResetTexture(texturePool, t)
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

function sArenaFrameMixin:OnLoad()
    local unit = "arena" .. self:GetID()
    self.parent = self:GetParent()

    self:RegisterEvent("PLAYER_LOGIN")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("UNIT_NAME_UPDATE")
    self:RegisterEvent("ARENA_OPPONENT_UPDATE")
    self:RegisterEvent("ARENA_COOLDOWNS_UPDATE")
    self:RegisterEvent("ARENA_CROWD_CONTROL_SPELL_UPDATE")
    self:RegisterUnitEvent("UNIT_HEALTH", unit)
    self:RegisterUnitEvent("UNIT_MAXHEALTH", unit)
    self:RegisterUnitEvent("UNIT_POWER_UPDATE", unit)
    self:RegisterUnitEvent("UNIT_MAXPOWER", unit)
    self:RegisterUnitEvent("UNIT_DISPLAYPOWER", unit)

    self:RegisterForClicks("AnyDown", "AnyUp") -- this is for WOW10, if sArena to support previous versions there would need to be a check to still catch only AnyUp
    self:SetAttribute("*type1", "target")
    self:SetAttribute("*type2", "focus")
    self:SetAttribute("*typerelease1", "target") -- I do not know why this is treated as a typerelease, don't know how to remove it.
    self:SetAttribute("*typerelease2", "focus")
    self:SetAttribute("unit", unit)
    self.unit = unit

    -- Steal castbar from Blizzard's CompactArenaFrame
    local blizzArenaFrame = _G["CompactArenaFrameMember" .. self:GetID()]
    if blizzArenaFrame and blizzArenaFrame.CastingBarFrame then
        self.CastBar = blizzArenaFrame.CastingBarFrame
        self.CastBar:SetFrameStrata("HIGH")
    end

    -- Hook DebuffFrame for CC display on class icon
    if blizzArenaFrame and blizzArenaFrame.DebuffFrame then
        local debuffFrame = blizzArenaFrame.DebuffFrame
        hooksecurefunc(debuffFrame.Icon, "SetTexture", function(_, tex)
            if tex and tex ~= "INTERFACE\\ICONS\\INV_MISC_QUESTIONMARK.BLP" then
                self.ClassIcon:SetTexture(tex)
            else
                self:UpdateClassIcon()
            end
        end)
        hooksecurefunc(debuffFrame.Cooldown, "SetCooldown", function(_, start, duration)
            self.ClassIconCooldown:SetCooldown(start, duration)
        end)
    end

    -- Hook CcRemoverFrame for trinket cooldowns
    if blizzArenaFrame and blizzArenaFrame.CcRemoverFrame then
        local trinketFrame = blizzArenaFrame.CcRemoverFrame
        trinketFrame:SetParent(self)
        trinketFrame:SetAlpha(0)
        hooksecurefunc(trinketFrame.Cooldown, "SetCooldown", function(_, start, duration)
            self.Trinket.Cooldown:SetCooldown(start, duration)
        end)
    end

    -- Hide heal prediction / absorb elements (not available for arena in 12.0)
    self.myHealPredictionBar:Hide()
    self.otherHealPredictionBar:Hide()
    self.totalAbsorbBar:Hide()
    self.overAbsorbGlow:Hide()
    self.overHealAbsorbGlow:Hide()
    if self.totalAbsorbBarOverlay then self.totalAbsorbBarOverlay:Hide() end

    self.healthbar = self.HealthBar
    self.myHealPredictionBar:ClearAllPoints()
    self.otherHealPredictionBar:ClearAllPoints()

    self.TexturePool = CreateTexturePool(self, "ARTWORK", nil, nil, ResetTexture)
end

function sArenaFrameMixin:OnEvent(event, eventUnit, arg1, arg2 )
    local unit = self.unit

    if (eventUnit and eventUnit == unit) then
        if (event == "UNIT_NAME_UPDATE") then
            -- Name may be secret; SetText can accept secret values
            self.Name:SetText(UnitName(unit) or "")
        elseif (event == "ARENA_OPPONENT_UPDATE") then
            self:UpdateVisible()
            self:UpdatePlayer(arg1)
        elseif (event == "ARENA_COOLDOWNS_UPDATE") then
            -- handled via combat log
        elseif (event == "ARENA_CROWD_CONTROL_SPELL_UPDATE") then
            -- arg1 (spellID) may be secret; guard with issecretvalue
            if not issecretvalue(arg1) and (arg1 ~= self.Trinket.spellID) then
                local _, spellTextureNoOverride = GetSpellTexture(arg1)
                self.Trinket.spellID = arg1
                self.Trinket.Texture:SetTexture(spellTextureNoOverride)
            end
        elseif (event == "UNIT_HEALTH") then
            self:SetLifeState()
            self:SetStatusText()
            -- UnitHealth returns secret for arena units; pass directly to SetValue (accepts secrets)
            self.HealthBar:SetValue(UnitHealth(unit))
        elseif (event == "UNIT_MAXHEALTH") then
            self.HealthBar:SetMinMaxValues(0, UnitHealthMax(unit))
            self.HealthBar:SetValue(UnitHealth(unit))
        elseif (event == "UNIT_POWER_UPDATE") then
            self:SetStatusText()
            self.PowerBar:SetValue(UnitPower(unit))
        elseif (event == "UNIT_MAXPOWER") then
            self.PowerBar:SetMinMaxValues(0, UnitPowerMax(unit))
            self.PowerBar:SetValue(UnitPower(unit))
        elseif (event == "UNIT_DISPLAYPOWER") then
            local _, powerType = UnitPowerType(unit)
            self:SetPowerType(powerType)
            self.PowerBar:SetMinMaxValues(0, UnitPowerMax(unit))
            self.PowerBar:SetValue(UnitPower(unit))
        end
    elseif (event == "PLAYER_LOGIN") then
        self:UnregisterEvent("PLAYER_LOGIN")

        if (not db) then
            self.parent:Initialize()
        end

        self:Initialize()
    elseif (event == "PLAYER_ENTERING_WORLD") then
        self.Name:SetText("")
        self.CastBar:Hide()
        self.specTexture = nil
        self.class = nil
        self.currentClassIconTexture = nil
        self.currentClassIconStartTime = 0
        self:UpdateVisible()
        self:UpdatePlayer()
        self:ResetTrinket()
        self:ResetRacial()
        UnitFrameHealPredictionBars_Update_Sarena(self)
        self:UpdateAbsorb(unit)
    elseif (event == "PLAYER_REGEN_ENABLED") then
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")

        self:UpdateVisible()
    end
end

function sArenaFrameMixin:Initialize()
    self:SetMysteryPlayer()
    self.parent:SetupDrag(self, self.parent, nil, "UpdateFrameSettings")
    self.parent:SetupDrag(self.CastBar, self.CastBar, "castBar", "UpdateCastBarSettings")
    local blizzArenaFrame = _G["CompactArenaFrameMember" .. self:GetID()]
    if blizzArenaFrame and blizzArenaFrame.SpellDiminishStatusTray then
        self.drTray = blizzArenaFrame.SpellDiminishStatusTray
        self.drTray:SetParent(self)
        self.drTray:EnableMouse(false)
        self.drTray:SetMouseClickEnabled(false)
    end
    self.parent:SetupDrag(self.SpecIcon, self.SpecIcon, "specIcon", "UpdateSpecIconSettings")
    self.parent:SetupDrag(self.Trinket, self.Trinket, "trinket", "UpdateTrinketSettings")
    self.parent:SetupDrag(self.Racial, self.Racial, "racial", "UpdateRacialSettings")
    if not self.totalAbsorbBar then
        self.totalAbsorbBar:SetTexture("Interface\\RaidFrame\\Shield-Fill")
        self.totalAbsorbBar:SetVertexColor(1, 1, 1, 1)
        self.totalAbsorbBarOverlay:SetTexture("Interface\\RaidFrame\\Shield-Overlay", true, true)
        self.totalAbsorbBarOverlay:SetVertexColor(1, 1, 1, 1)
        self.totalAbsorbBarOverlay.tileSize = 32
    end
end

function sArenaFrameMixin:OnEnter()
    self.HealthText:Show()
    self.PowerText:Show()
end

function sArenaFrameMixin:OnLeave()
    self:UpdateStatusTextVisible()
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
    self:UpdateClassIcon()

    if ((unitEvent and unitEvent ~= "seen") or not UnitExists(unit)) then
        self:SetMysteryPlayer()
        return
    end

    C_PvP.RequestCrowdControlSpell(unit)

    self:UpdateRacial()

    -- prevent castbar and other frames from intercepting mouse clicks during a match
    if (unitEvent == "seen") then
        self.parent:SetMouseState(false)
    end

    self.hideStatusText = false

    -- UnitName returns secret for arena units; SetText accepts secrets
    self.Name:SetText(UnitName(unit) or "")
    self.Name:SetShown(db.profile.showNames)

    self:UpdateStatusTextVisible()
    self:SetStatusText()

    self:OnEvent("UNIT_MAXHEALTH", unit)
    self:OnEvent("UNIT_HEALTH", unit)
    self:OnEvent("UNIT_MAXPOWER", unit)
    self:OnEvent("UNIT_POWER_UPDATE", unit)
    self:OnEvent("UNIT_DISPLAYPOWER", unit)
    self:UpdateAbsorb(unit)
    UnitFrameHealPredictionBars_Update_Sarena(self)

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


function sArenaFrameMixin:UpdateAbsorb(unit)
    -- Absorb data is not available for arena units in 12.0 (secret values)
end

function UnitFrameHealPredictionBars_Update_Sarena(frame)
    -- Heal prediction data is not available for arena units in 12.0 (secret values)
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

function sArenaFrameMixin:UpdateClassIcon()
    if (
        self.currentAuraSpellID and self.currentAuraDuration > 0 and
            self.currentClassIconStartTime ~= self.currentAuraStartTime) then
        self.ClassIconCooldown:SetCooldown(self.currentAuraStartTime, self.currentAuraDuration)
        self.currentClassIconStartTime = self.currentAuraStartTime
    elseif (self.currentAuraDuration == 0) then
        self.ClassIconCooldown:Clear()
        self.currentClassIconStartTime = 0
    end

    local texture = self.currentAuraSpellID and self.currentAuraTexture or self.class and "class" or 134400

    if (self.currentClassIconTexture == texture) then return end

    self.currentClassIconTexture = texture
    if (texture == "class") then
        texture = classIcons[self.class]
    end
    self.ClassIcon:SetTexture(texture)
end

function sArenaFrameMixin:IsHealer(unit)
	local id = string.match(unit, "arena(%d)")
	local specID = GetArenaOpponentSpec and GetArenaOpponentSpec(id)
	if(specID) then
		local id, name, description, icon, role, class = GetSpecializationInfoByID(specID)
		if(	
			id == 65 or 	-- Holy Paladin
			id == 105 or 	-- Restoration Druid
			id == 256 or	-- Discipline Priest
			id == 257 or	-- Holy Priest
			id == 264 or 	-- Restoration Shaman
			id == 270 or 	-- Mistweaver Monk
			id == 1468)		-- Preservation Evoker
			then return true
		end
		return false
	end
	return false
end

function sArenaFrameMixin:UpdateTrinketSammers(unit, spellId)
    trinket = self.Trinket
    -- if DLAPI then DLAPI.DebugLog("UpdateTrinket", "UpdateTrinket spellID: " .. spellId) end
    -- Normal Trinket
    if (spellId == 336126) then
        trinket.Cooldown:SetCooldown(GetTime(), 120)
        if (self:IsHealer(unit)) then
            trinket.Cooldown:SetCooldown(GetTime(), 90)
        end
        -- Dwarf Racial 20594(normal) and 265221(iron dwarf)
    elseif (spellId == 265221 or spellId == 20594) then
        if (trinket.Cooldown:GetCooldownDuration() > 30) then
            -- if DLAPI then DLAPI.DebugLog("UpdateTrinket", "Dwarf trinket current time left:" .. trinket.Cooldown:GetCooldownDuration()) end
        else
            trinket.Cooldown:SetCooldown(GetTime(), 30)
        end
    end
end

function sArenaFrameMixin:UpdateTrinket()
    local spellID, startTime, duration = C_PvP.GetArenaCrowdControlInfo(self.unit)
    local trinket = self.Trinket
    if DLAPI then DLAPI.DebugLog("UpdateTrinket", "UpdateTrinket spellID: " .. spellID .. " startTime: " .. startTime .. " duration: " .. duration) end
    if (spellID) then
        if (spellID ~= trinket.spellID) then
            local _, spellTextureNoOverride = GetSpellTexture(spellID)
            trinket.spellID = spellID
            trinket.Texture:SetTexture(spellTextureNoOverride)
        end
        if (startTime ~= 0 and duration ~= 0 and trinket.Texture:GetTexture()) then
            trinket.Cooldown:SetCooldown(startTime / 1000.0, duration / 1000.0)
        else
            trinket.Cooldown:Clear()
        end
    end
end

function sArenaFrameMixin:ResetTrinket()
    self.Trinket.spellID = nil
    self.Trinket.Texture:SetTexture(nil)
    self.Trinket.Cooldown:Clear()
    -- self:UpdateTrinket()
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
    self.currentClassIconStartTime = 0

    ResetTexture(nil, self.ClassIcon)
    ResetStatusBar(self.HealthBar)
    ResetStatusBar(self.PowerBar)
    ResetStatusBar(self.CastBar)
    self.CastBar:SetHeight(16)
    self.ClassIcon:RemoveMaskTexture(self.ClassIconMask)

    self.ClassIconCooldown:SetSwipeTexture(1)
    self.ClassIconCooldown:SetUseCircularEdge(false)

    local f = self.Trinket
    f:ClearAllPoints()
    f:SetSize(0, 0)
    f.Texture:SetTexCoord(0, 1, 0, 1)

    f = self.Racial
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
    f:SetDrawLayer("ARTWORK", 2)
    f:SetFontObject("SystemFont_Shadow_Small2")

    f = self.HealthText
    ResetFontString(f)
    f:SetDrawLayer("ARTWORK", 2)
    f:SetFontObject(statusTextFont)
    f:SetTextColor(1, 1, 1, 1)

    f = self.PowerText
    ResetFontString(f)
    f:SetDrawLayer("ARTWORK", 2)
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

function sArenaFrameMixin:FindAura()
    -- Aura data is secret for arena units in 12.0; CC display is handled via Blizzard frame hooks
    self:UpdateClassIcon()
end

function sArenaFrameMixin:FindInterrupt(event, spellID)
    local interruptDuration = interruptList[spellID]

    if (not interruptDuration) then return end
    if (event ~= "SPELL_INTERRUPT" and event ~= "SPELL_CAST_SUCCESS") then return end

    local unit = self.unit
    local _, _, _, _, _, _, notInterruptable = UnitChannelInfo(unit)

    if (event == "SPELL_INTERRUPT" or notInterruptable == false) then
        self.currentInterruptSpellID = spellID
        self.currentInterruptDuration = interruptDuration
        self.currentInterruptExpirationTime = GetTime() + interruptDuration
        self.currentInterruptTexture = GetSpellTexture(spellID)
        self:FindAura()
        After(interruptDuration, function()
            self.currentInterruptSpellID = nil
            self.currentInterruptDuration = 0
            self.currentInterruptExpirationTime = 0
            self.currentInterruptTexture = nil
            self:FindAura()
        end)
    end
end

function sArenaFrameMixin:SetLifeState()
    local unit = self.unit
    local isDead = UnitIsDeadOrGhost(unit)

    self.DeathIcon:SetShown(isDead)
    self.hideStatusText = isDead
    if isDead then
        self:ResetDR()
    end
end

function sArenaFrameMixin:SetStatusText(unit)
    if (self.hideStatusText) then
        self.HealthText:SetText("")
        self.PowerText:SetText("")
        return
    end

    if (not unit) then
        unit = self.unit
    end

    -- In 12.0, health/power values are secret for arena units
    -- Use UnitHealthPercent/UnitPowerPercent which work with secret values
    self.HealthText:SetFormattedText("%0.f%%", UnitHealthPercent(unit, nil, CurveConstants.ScaleTo100))
    self.PowerText:SetFormattedText("%0.f%%", UnitPowerPercent(unit, nil, CurveConstants.ScaleTo100))
end

function sArenaFrameMixin:UpdateStatusTextVisible()
    self.HealthText:SetShown(db.profile.statusText.alwaysShow)
    self.PowerText:SetShown(db.profile.statusText.alwaysShow)
end


function sArenaMixin:Test()
    if (InCombatLockdown()) then return end

    local currTime = GetTime()

    -- Different HP and absorb values for each arena frame
    local testData = {
        [1] = { hp = 60, absorb = 20 },
        [2] = { hp = 80, absorb = 30 },
        [3] = { hp = 100, absorb = 30 },
    }

    for i = 1, 3 do
        local frame = self["arena" .. i]
        frame:Show()

        local data = testData[i]
        frame.HealthBar:SetMinMaxValues(0, 100)
        frame.HealthBar:SetValue(data.hp)

        frame.PowerBar:SetMinMaxValues(0, 100)
        frame.PowerBar:SetValue(100)

        frame.ClassIcon:SetTexture(classIcons["MAGE"])

        frame.SpecIcon:Show()

        frame.SpecIcon.Texture:SetTexture(135846)

        frame.ClassIconCooldown:SetCooldown(GetTime(), math.random(20, 60))

        frame.Name:SetText("arena" .. i)
        frame.Name:SetShown(db.profile.showNames)

        frame.Trinket.Texture:SetTexture(1322720)
        frame.Trinket.Cooldown:SetCooldown(currTime, math.random(20, 60))

        frame.Racial.Texture:SetTexture(136129)
        frame.Racial.Cooldown:SetCooldown(currTime, math.random(20, 60))

        local color = RAID_CLASS_COLORS["MAGE"]
        if (db.profile.classColors) then
            frame.HealthBar:SetStatusBarColor(color.r, color.g, color.b, 1)
        else
            frame.HealthBar:SetStatusBarColor(0, 1, 0, 1)
        end
        frame.PowerBar:SetStatusBarColor(0, 0, 1, 1)

        frame.CastBar.fadeOut = nil
        frame.CastBar:Show()
        frame.CastBar:SetAlpha(1)
        frame.CastBar.Icon:SetTexture(136071)
        frame.CastBar.Text:SetText("Polymorph")
        frame.CastBar:SetStatusBarColor(1, 0.7, 0, 1)

        frame.hideStatusText = false
        frame:SetStatusText("player")
        frame:UpdateStatusTextVisible()
        
        -- Hide absorb shields in test mode
        if frame.totalAbsorbBar then
            frame.totalAbsorbBar:Hide()
        end
        if frame.totalAbsorbBarOverlay then
            frame.totalAbsorbBarOverlay:Hide()
        end
        if frame.overAbsorbGlow then
            frame.overAbsorbGlow:Hide()
        end
    end
end

-- default bars, will get overwritten from layouts
local typeInfoTexture = "Interface\\RaidFrame\\Raid-Bar-Hp-Fill";
if sArenaCastingBarExtensionMixin then
    sArenaCastingBarExtensionMixin.typeInfo = {
        filling = typeInfoTexture,
        full = typeInfoTexture,
        glow = typeInfoTexture
    }
end

local actionColors = {
    applyingcrafting = { 1.0, 0.7, 0.0, 1 },
    applyingtalents = { 1.0, 0.7, 0.0, 1 },
    filling = { 1.0, 0.7, 0.0, 1 },
    full = { 0.0, 1.0, 0.0, 1 },
    standard = { 1.0, 0.7, 0.0, 1 },
    empowered = { 1.0, 0.7, 0.0, 1 },
    channel = { 0.0, 1.0, 0.0, 1 },
    uninterruptable = { 0.7, 0.7, 0.7, 1 },
    interrupted = { 1.0, 0.0, 0.0, 1 }
}



function sArenaCastingBarExtensionMixin:GetTypeInfo(barType)
    barType = barType or "standard";
    self:SetStatusBarColor(unpack(actionColors[barType]));
    return self.typeInfo
end
