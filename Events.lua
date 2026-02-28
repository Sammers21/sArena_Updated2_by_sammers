-- Events.lua: Event handlers, hooks, and Blizzard frame integration

-- Spell API shim
local GetSpellTexture = GetSpellTexture or C_Spell.GetSpellTexture

-- Cache globals used in event hot-path
local UnitHealthMax    = UnitHealthMax
local UnitHealth       = UnitHealth
local UnitPowerMax     = UnitPowerMax
local UnitPower        = UnitPower
local UnitPowerType    = UnitPowerType
local UnitCastingInfo  = UnitCastingInfo
local UnitChannelInfo  = UnitChannelInfo
local mathfloor        = math.floor
local strfind          = string.find

local hiddenAnchor  -- invisible frame used to hide Blizzard's arena UI

local NUM_ARENA_FRAMES = 3

-- Color palette for castbar states (keyed by type)
local CASTBAR_COLORS = {
    casting    = { 1.0, 0.7, 0.0, 1 },
    channeling = { 0.0, 1.0, 0.0, 1 },
}

-- ============================================================
-- Hide Blizzard default arena frames
-- ============================================================
local function SuppressBlizzardArenaUI(instanceType)
    if InCombatLockdown() then return end
    if not CompactArenaFrame then return end

    if not hiddenAnchor then
        hiddenAnchor = CreateFrame("Frame")
        hiddenAnchor:Hide()
    end

    if instanceType == "arena" then
        CompactArenaFrame:SetParent(hiddenAnchor)
        if CompactArenaFrameTitle then
            CompactArenaFrameTitle:SetParent(hiddenAnchor)
        end
    end
end

-- ============================================================
-- Edit-Mode / Reload helpers
-- ============================================================
local reloadWarningFrame
local beenInArena = false

local function EnsureArenaFramesEnabled()
    local accountSettings = EditModeManagerFrame and EditModeManagerFrame.AccountSettings
    if not accountSettings then return end

    local arenaFramesEnabled = EditModeManagerFrame:GetAccountSettingValueBool(Enum.EditModeAccountSetting.ShowArenaFrames)
    if not arenaFramesEnabled then
        EditModeManagerFrame:OnAccountSettingChanged(Enum.EditModeAccountSetting.ShowArenaFrames, true)
        accountSettings:RefreshArenaFrames()
    end
end

local function ShowReloadWarning()
    if sArenaSkipReloadWarning then return end
    if reloadWarningFrame then
        reloadWarningFrame:Show()
        return
    end

    local f = CreateFrame("Frame", "sArenaReloadWarning", UIParent, "BackdropTemplate")
    f:SetSize(400, 220)
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 150)
    f:SetFrameStrata("DIALOG")
    f:EnableMouse(true)

    f:SetBackdrop({
        bgFile   = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 1,
        insets   = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    f:SetBackdropColor(0.05, 0.05, 0.09, 0.95)
    f:SetBackdropBorderColor(0.22, 0.75, 0.82, 0.5)

    local stripe = f:CreateTexture(nil, "ARTWORK")
    stripe:SetTexture("Interface\\Buttons\\WHITE8x8")
    stripe:SetPoint("TOPLEFT", 1, -1)
    stripe:SetPoint("TOPRIGHT", -1, -1)
    stripe:SetHeight(2)
    stripe:SetVertexColor(0.2, 0.82, 0.9, 1)

    local icon = f:CreateTexture(nil, "OVERLAY")
    icon:SetTexture("Interface\\DialogFrame\\DialogAlertIcon")
    icon:SetSize(36, 36)
    icon:SetPoint("TOP", 0, -14)

    local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOP", icon, "BOTTOM", 0, -6)
    title:SetText("|cff40d0e0Reload Required|r")

    local body = f:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    body:SetPoint("TOP", title, "BOTTOM", 0, -10)
    body:SetWidth(360)
    body:SetJustifyH("CENTER")
    body:SetText("Edit Mode causes the DR frames to error\nafter the first arena game.\n\n|cff888899Reload UI to fix.|r")

    local btn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    btn:SetSize(140, 28)
    btn:SetPoint("BOTTOM", 0, 28)
    btn:SetText("Reload UI")
    btn:SetScript("OnClick", function()
        EnsureArenaFramesEnabled()
        ReloadUI()
    end)

    local dismissText = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    dismissText:SetPoint("TOP", btn, "BOTTOM", 0, -3)
    dismissText:SetText("|cff555566dismiss|r")

    local dismissBtn = CreateFrame("Button", nil, f)
    dismissBtn:SetPoint("TOPLEFT", dismissText, "TOPLEFT", -6, 2)
    dismissBtn:SetPoint("BOTTOMRIGHT", dismissText, "BOTTOMRIGHT", 6, -2)
    dismissBtn:SetScript("OnClick", function() f:Hide() end)
    dismissBtn:SetScript("OnEnter", function() dismissText:SetText("|cff8899aadismiss|r") end)
    dismissBtn:SetScript("OnLeave", function() dismissText:SetText("|cff555566dismiss|r") end)

    f:SetAlpha(0)
    local ag = f:CreateAnimationGroup()
    local anim = ag:CreateAnimation("Alpha")
    anim:SetFromAlpha(0)
    anim:SetToAlpha(1)
    anim:SetDuration(0.4)
    anim:SetSmoothing("OUT")
    ag:SetScript("OnFinished", function() f:SetAlpha(1) end)
    ag:Play()

    reloadWarningFrame = f
end

-- ============================================================
-- Parent Frame Events
-- ============================================================
function sArenaMixin:OnLoad()
    self:RegisterEvent("PLAYER_LOGIN")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

function sArenaMixin:OnEvent(event, ...)
    if event == "PLAYER_LOGIN" then
        self:Initialize()
        self:UnregisterEvent("PLAYER_LOGIN")

        local _, loginInstanceType = IsInInstance()
        if loginInstanceType ~= "arena" then
            C_Timer.After(3, function() beenInArena = true end)
        end
    elseif event == "PLAYER_ENTERING_WORLD" then
        local _, instanceType = IsInInstance()
        SuppressBlizzardArenaUI(instanceType)
        self:SetMouseState(true)

        if self.db and self.db.profile.enableCombatLogging then
            if instanceType == "arena" or instanceType == "pvp" then
                LoggingCombat(true)
                self:Print("Combat logging enabled. Good luck!")
            end
        end

        if instanceType == "arena" then
            self.inArena = true
            if beenInArena then
                ShowReloadWarning()
            else
                beenInArena = true
            end
        else
            self.inArena = false
        end

        if not self.drFramesInitialized then
            self:SetupDiminishingReturns()
            self.drFramesInitialized = true
        end
    end
end

-- ============================================================
-- DR Frame Customization
-- ============================================================

-- Decorate a single Blizzard DR pool frame with colored border & severity text.
-- Uses a flat overlay approach: one overlay hosts both the border and the label.
local function CustomizeDRIcon(drIcon)
    if drIcon._customized then return end
    drIcon._customized = true

    drIcon:EnableMouse(false)
    drIcon:SetMouseClickEnabled(false)

    -- Colored border — sits at BORDER layer behind the icon (ARTWORK),
    -- extends beyond icon edges so it's visible as a colored rim.
    local borderSize = 2
    drIcon.SeverityBorder = drIcon:CreateTexture(nil, "BORDER", nil, -1)
    drIcon.SeverityBorder:SetPoint("TOPLEFT", drIcon, "TOPLEFT", -borderSize, borderSize)
    drIcon.SeverityBorder:SetPoint("BOTTOMRIGHT", drIcon, "BOTTOMRIGHT", borderSize, -borderSize)
    drIcon.SeverityBorder:SetColorTexture(0, 1, 0, 1)
    drIcon.SeverityBorder:Show()

    -- DR severity label — drawn on top of everything
    drIcon.SeverityLabel = drIcon:CreateFontString(nil, "OVERLAY", "NumberFontNormal")
    drIcon.SeverityLabel:SetPoint("BOTTOMRIGHT", drIcon, "BOTTOMRIGHT", 3, -3)
    drIcon.SeverityLabel:SetFont("Fonts\\ARIALN.TTF", 13, "OUTLINE")
    drIcon.SeverityLabel:SetTextColor(0, 1, 0, 1)
    drIcon.SeverityLabel:SetText("\194\189") -- ½

    -- Immune indicator: detect via hooksecurefunc on Show/Hide methods
    -- (HookScript "OnShow"/"OnHide" is blocked on frames with secret aspects)
    if drIcon.ImmunityIndicator then
        -- Suppress Blizzard's shield graphic
        drIcon.ImmunityIndicator:SetAlpha(0)
        local guardAlpha = false
        hooksecurefunc(drIcon.ImmunityIndicator, "SetAlpha", function(self, a)
            if not guardAlpha and a ~= 0 then
                guardAlpha = true
                self:SetAlpha(0)
                guardAlpha = false
            end
        end)

        -- When immune state begins: swap to red
        hooksecurefunc(drIcon.ImmunityIndicator, "Show", function()
            drIcon.SeverityBorder:SetColorTexture(1, 0, 0, 1)
            drIcon.SeverityLabel:SetTextColor(1, 0, 0, 1)
            drIcon.SeverityLabel:SetText("X")
        end)

        -- When immune state ends: revert to green
        hooksecurefunc(drIcon.ImmunityIndicator, "Hide", function()
            drIcon.SeverityBorder:SetColorTexture(0, 1, 0, 1)
            drIcon.SeverityLabel:SetTextColor(0, 1, 0, 1)
            drIcon.SeverityLabel:SetText("\194\189") -- ½
        end)
    end

    -- Cooldown sweep styling
    if drIcon.Cooldown then
        drIcon.Cooldown:SetSwipeColor(0, 0, 0, 0.6)
        drIcon.Cooldown:SetDrawBling(false)
        drIcon.Cooldown:SetHideCountdownNumbers(false)
    end

    -- Restore default visuals when the DR expires / frame returns to pool
    drIcon:HookScript("OnHide", function()
        drIcon.SeverityBorder:SetColorTexture(0, 1, 0, 1)
        drIcon.SeverityLabel:SetTextColor(0, 1, 0, 1)
        drIcon.SeverityLabel:SetText("\194\189") -- ½
    end)
end

-- Walk all trays and customise any unclaimed DR children.
local function ScanTrayChildren(addonSelf, arenaFrame)
    local tray = arenaFrame.drTray
    if not tray then return end

    local childCount = tray:GetNumChildren()
    for idx = 1, childCount do
        local child = select(idx, tray:GetChildren())
        if child and not child._customized then
            CustomizeDRIcon(child)
            arenaFrame.drFrames[child] = true -- keyed set, not array

            if addonSelf.db then
                local curLayout = addonSelf.db.profile.currentLayout
                local ls = addonSelf.db.profile.layoutSettings[curLayout]
                if ls and ls.dr then
                    addonSelf:UpdateDRSettings(ls.dr)
                end
            end
        end
    end
end

function sArenaMixin:SetupDiminishingReturns()
    for idx = 1, NUM_ARENA_FRAMES do
        local arenaFrame = self["arena" .. idx]
        if not arenaFrame.drTray then break end

        local tray = arenaFrame.drTray
        tray:SetFrameStrata("HIGH")
        tray:SetFrameLevel(10)
        if not arenaFrame.drFrames then
            arenaFrame.drFrames = {}
        end

        -- Process any children already present (e.g. EditMode preview)
        ScanTrayChildren(self, arenaFrame)

        -- Listen for new pool frames when Blizzard fires DR updates
        local parentAddon = self
        tray:HookScript("OnEvent", function(_, evt)
            if evt == "UNIT_SPELL_DIMINISH_CATEGORY_STATE_UPDATED" then
                ScanTrayChildren(parentAddon, arenaFrame)
            end
        end)
    end

    -- Refresh with saved settings
    if self.db then
        local curLayout = self.db.profile.currentLayout
        local ls = self.db.profile.layoutSettings[curLayout]
        if ls and ls.dr then
            self:UpdateDRSettings(ls.dr)
        end
    end
end

-- ============================================================
-- Ctrl+Shift Drag-to-reposition
-- ============================================================
function sArenaMixin:EnableFrameDragging(clickTarget, moveTarget, settingsKey, refreshMethod)
    local dragging = false

    clickTarget:HookScript("OnMouseDown", function()
        if InCombatLockdown() then return end
        if IsShiftKeyDown() and IsControlKeyDown() and not dragging then
            moveTarget:StartMoving()
            dragging = true
        end
    end)

    clickTarget:HookScript("OnMouseUp", function()
        if InCombatLockdown() then return end
        if not dragging then return end

        moveTarget:StopMovingOrSizing()
        dragging = false

        local cfg = self.db.profile.layoutSettings[self.db.profile.currentLayout]
        if settingsKey then
            cfg = cfg[settingsKey]
        end

        -- Compute offset relative to parent centre using GetRect
        local pLeft, pBottom, pWidth, pHeight = moveTarget:GetParent():GetRect()
        local mLeft, mBottom, mWidth, mHeight = moveTarget:GetRect()
        local scale = moveTarget:GetScale()

        local parentCX = pLeft + pWidth * 0.5
        local parentCY = pBottom + pHeight * 0.5
        local frameCX  = (mLeft + mWidth * 0.5) * scale
        local frameCY  = (mBottom + mHeight * 0.5) * scale

        local offX = (frameCX - parentCX) / scale
        local offY = (frameCY - parentCY) / scale

        -- Snap to single decimal
        offX = mathfloor(offX * 10 + 0.5) * 0.1
        offY = mathfloor(offY * 10 + 0.5) * 0.1

        cfg.posX, cfg.posY = offX, offY
        self[refreshMethod](self, cfg)
        LibStub("AceConfigRegistry-3.0"):NotifyChange("sArena")
    end)
end

-- ============================================================
-- Arena Frame helpers — hook Blizzard castbar, debuffs, trinket
-- ============================================================

-- Redirect the Blizzard castbar into our frame and keep our texture applied.
local function AttachBlizzardCastBar(arenaFrame, blizzMember, unitID)
    local castBar = blizzMember.CastingBarFrame
    if not castBar then return end

    arenaFrame.CastBar = castBar
    arenaFrame._blizzardCastBar = true
    castBar:SetParent(arenaFrame)
    castBar:SetFrameStrata("HIGH")

    -- Store fill data so layouts can swap textures later
    castBar.barFillData = sArenaCastingBarExtensionMixin.barFillData

    -- After Blizzard resets the bar on cast events, re-apply our color
    hooksecurefunc(castBar, "SetStatusBarTexture", function(self)
        if not self.barFillData then return end
        local castName = UnitCastingInfo(unitID)
        if castName then
            local c = CASTBAR_COLORS.casting
            self:SetStatusBarColor(c[1], c[2], c[3], c[4])
        else
            local chanName = UnitChannelInfo(unitID)
            if chanName then
                local c = CASTBAR_COLORS.channeling
                self:SetStatusBarColor(c[1], c[2], c[3], c[4])
            end
        end
    end)
end

-- Mirror debuff icon+cooldown from Blizzard's DebuffFrame onto our class icon.
local function BridgeDebuffsToClassIcon(arenaFrame, blizzMember)
    local debuff = blizzMember.DebuffFrame
    if not debuff then return end

    local function ResetToClassIcon()
        arenaFrame.ClassIconCooldown:Clear()
        arenaFrame:UpdateClassIcon(true)
    end

    hooksecurefunc(debuff.Icon, "SetTexture", function(_, tex)
        if not tex then return end
        -- Secret texture = real debuff icon from arena; pass straight to C API
        if issecretvalue(tex) then
            arenaFrame.ClassIcon:SetTexture(tex)
        elseif strfind(tex, "QUESTIONMARK", 1, true) then
            -- Question-mark means no active CC — restore class icon
            ResetToClassIcon()
        else
            arenaFrame.ClassIcon:SetTexture(tex)
        end
    end)

    hooksecurefunc(debuff.Cooldown, "SetCooldown", function(_, start, dur)
        arenaFrame.ClassIconCooldown:SetCooldown(start, dur)
    end)

    -- Both Clear and frame hiding should restore the real class icon
    hooksecurefunc(debuff.Cooldown, "Clear", ResetToClassIcon)
    debuff:HookScript("OnHide", ResetToClassIcon)
end

-- Relay PvP trinket cooldowns from Blizzard's CcRemoverFrame.
local function RelayTrinketCooldown(arenaFrame, blizzMember)
    local ccRemover = blizzMember.CcRemoverFrame
    if not ccRemover then return end

    ccRemover:SetParent(arenaFrame)
    ccRemover:SetAlpha(0) -- visually hidden; still fires events

    hooksecurefunc(ccRemover.Cooldown, "SetCooldown", function(_, start, dur)
        arenaFrame.Trinket.Cooldown:SetCooldown(start, dur)
    end)
end

-- ============================================================
-- Arena Frame Events
-- ============================================================

-- Events every arena frame listens to
local FRAME_EVENTS = {
    "PLAYER_LOGIN",
    "PLAYER_ENTERING_WORLD",
    "ARENA_OPPONENT_UPDATE",
    "ARENA_PREP_OPPONENT_SPECIALIZATIONS",
    "ARENA_COOLDOWNS_UPDATE",
    "ARENA_CROWD_CONTROL_SPELL_UPDATE",
    "UNIT_NAME_UPDATE",
}

local UNIT_EVENTS = {
    "UNIT_HEALTH",
    "UNIT_MAXHEALTH",
    "UNIT_POWER_UPDATE",
    "UNIT_MAXPOWER",
    "UNIT_DISPLAYPOWER",
}

function sArenaFrameMixin:OnLoad()
    local unitID = "arena" .. self:GetID()
    self.parent = self:GetParent()

    -- Register general events
    for _, evt in ipairs(FRAME_EVENTS) do
        self:RegisterEvent(evt)
    end

    -- Register per-unit events
    for _, evt in ipairs(UNIT_EVENTS) do
        self:RegisterUnitEvent(evt, unitID)
    end

    self:RegisterForClicks("AnyDown", "AnyUp")
    self:SetAttribute("*type1", "target")
    self:SetAttribute("*type2", "focus")
    self:SetAttribute("*typerelease1", "target")
    self:SetAttribute("*typerelease2", "focus")
    self:SetAttribute("unit", unitID)
    self.unit = unitID

    -- Integrate Blizzard's CompactArenaFrame sub-elements into our frame
    local blizzMember = _G["CompactArenaFrameMember" .. self:GetID()]
    if blizzMember then
        AttachBlizzardCastBar(self, blizzMember, unitID)
        BridgeDebuffsToClassIcon(self, blizzMember)
        RelayTrinketCooldown(self, blizzMember)
    end

    self.TexturePool = CreateTexturePool(self, "ARTWORK", nil, nil, sArenaFrameMixin.ResetTexture)
end

function sArenaFrameMixin:OnEvent(event, eventUnit, arg1)
    local unit = self.unit

    if eventUnit and eventUnit == unit then
        if event == "UNIT_NAME_UPDATE" then
            self.Name:SetText(UnitName(unit) or "")
        elseif event == "ARENA_OPPONENT_UPDATE" then
            self:UpdateVisible()
            self:UpdatePlayer(arg1)
        elseif event == "ARENA_COOLDOWNS_UPDATE" then
            -- handled via CcRemoverFrame relay
        elseif event == "ARENA_CROWD_CONTROL_SPELL_UPDATE" then
            if not issecretvalue(arg1) and arg1 ~= self.Trinket.spellID then
                local _, spellTex = GetSpellTexture(arg1)
                self.Trinket.spellID = arg1
                self.Trinket.Texture:SetTexture(spellTex)
            end
        elseif event == "UNIT_HEALTH" then
            self:SetLifeState()
            self:SetStatusText()
            self.HealthBar:SetValue(UnitHealth(unit))
        elseif event == "UNIT_MAXHEALTH" then
            self.HealthBar:SetMinMaxValues(0, UnitHealthMax(unit))
            self.HealthBar:SetValue(UnitHealth(unit))
        elseif event == "UNIT_POWER_UPDATE" then
            self:SetStatusText()
            self.PowerBar:SetValue(UnitPower(unit))
        elseif event == "UNIT_MAXPOWER" then
            self.PowerBar:SetMinMaxValues(0, UnitPowerMax(unit))
            self.PowerBar:SetValue(UnitPower(unit))
        elseif event == "UNIT_DISPLAYPOWER" then
            local _, powerType = UnitPowerType(unit)
            self:SetPowerType(powerType)
            self.PowerBar:SetMinMaxValues(0, UnitPowerMax(unit))
            self.PowerBar:SetValue(UnitPower(unit))
        end
    elseif event == "PLAYER_LOGIN" then
        self:UnregisterEvent("PLAYER_LOGIN")
        if not self.parent.db then
            self.parent:Initialize()
        end
        self:Initialize()
    elseif event == "PLAYER_ENTERING_WORLD" or event == "ARENA_PREP_OPPONENT_SPECIALIZATIONS" then
        self.Name:SetText("")
        self.CastBar:Hide()
        self.specTexture = nil
        self.class = nil
        self.currentClassIconTexture = nil
        self:UpdateVisible()
        self:UpdatePlayer()
        self:ResetTrinket()
    elseif event == "PLAYER_REGEN_ENABLED" then
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")
        self:UpdateVisible()
    end
end

function sArenaFrameMixin:Initialize()
    self:SetMysteryPlayer()
    self.parent:EnableFrameDragging(self, self.parent, nil, "UpdateFrameSettings")
    self.parent:EnableFrameDragging(self.CastBar, self.CastBar, "castBar", "UpdateCastBarSettings")

    -- Claim the DR tray from Blizzard's CompactArenaFrame
    local blizzMember = _G["CompactArenaFrameMember" .. self:GetID()]
    if blizzMember and blizzMember.SpellDiminishStatusTray then
        local tray = blizzMember.SpellDiminishStatusTray
        tray:SetParent(self)
        tray:EnableMouse(false)
        tray:SetMouseClickEnabled(false)
        self.drTray = tray
    end
    self.drFrames = {}

    self.parent:EnableFrameDragging(self.SpecIcon, self.SpecIcon, "specIcon", "UpdateSpecIconSettings")
    self.parent:EnableFrameDragging(self.Trinket, self.Trinket, "trinket", "UpdateTrinketSettings")
end

function sArenaFrameMixin:OnEnter()
    self.HealthText:Show()
    self.PowerText:Show()
end

function sArenaFrameMixin:OnLeave()
    self:UpdateStatusTextVisible()
end
