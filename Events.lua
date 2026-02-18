-- Events.lua: Event handlers, hooks, and Blizzard frame stealing

-- Spell API shim
local GetSpellTexture = GetSpellTexture or C_Spell.GetSpellTexture

-- Localize frequently-called globals for the event hot path
local UnitHealthMax = UnitHealthMax
local UnitHealth = UnitHealth
local UnitPowerMax = UnitPowerMax
local UnitPower = UnitPower
local UnitPowerType = UnitPowerType

local blizzFrame

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
    self:RegisterEvent("PLAYER_LOGIN")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
end

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

    -- Dark backdrop with teal-tinted border
    f:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8",
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        edgeSize = 1,
        insets = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    f:SetBackdropColor(0.05, 0.05, 0.09, 0.95)
    f:SetBackdropBorderColor(0.22, 0.75, 0.82, 0.5)

    -- Top accent stripe
    local stripe = f:CreateTexture(nil, "ARTWORK")
    stripe:SetTexture("Interface\\Buttons\\WHITE8x8")
    stripe:SetPoint("TOPLEFT", 1, -1)
    stripe:SetPoint("TOPRIGHT", -1, -1)
    stripe:SetHeight(2)
    stripe:SetVertexColor(0.2, 0.82, 0.9, 1)

    -- Warning icon
    local icon = f:CreateTexture(nil, "OVERLAY")
    icon:SetTexture("Interface\\DialogFrame\\DialogAlertIcon")
    icon:SetSize(36, 36)
    icon:SetPoint("TOP", 0, -14)

    -- Title
    local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOP", icon, "BOTTOM", 0, -6)
    title:SetText("|cff40d0e0Reload Required|r")

    -- Body text
    local body = f:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    body:SetPoint("TOP", title, "BOTTOM", 0, -10)
    body:SetWidth(360)
    body:SetJustifyH("CENTER")
    body:SetText("Edit Mode causes the DR frames to error\nafter the first arena game.\n\n|cff888899Reload UI to fix.|r")

    -- Reload UI button
    local btn = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    btn:SetSize(140, 28)
    btn:SetPoint("BOTTOM", 0, 28)
    btn:SetText("Reload UI")
    btn:SetScript("OnClick", function()
        EnsureArenaFramesEnabled()
        ReloadUI()
    end)

    -- Subtle dismiss text
    local dismissText = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    dismissText:SetPoint("TOP", btn, "BOTTOM", 0, -3)
    dismissText:SetText("|cff555566dismiss|r")

    local dismissBtn = CreateFrame("Button", nil, f)
    dismissBtn:SetPoint("TOPLEFT", dismissText, "TOPLEFT", -6, 2)
    dismissBtn:SetPoint("BOTTOMRIGHT", dismissText, "BOTTOMRIGHT", 6, -2)
    dismissBtn:SetScript("OnClick", function() f:Hide() end)
    dismissBtn:SetScript("OnEnter", function() dismissText:SetText("|cff8899aadismiss|r") end)
    dismissBtn:SetScript("OnLeave", function() dismissText:SetText("|cff555566dismiss|r") end)

    -- Fade-in animation
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

function sArenaMixin:OnEvent(event, ...)
    if (event == "PLAYER_LOGIN") then
        self:Initialize()
        self:UnregisterEvent("PLAYER_LOGIN")

        -- If logging in outside arena, mark beenInArena after 3s so the
        -- very first arena entry will show the warning. If logging in
        -- inside arena (reconnect), leave it false so this arena works.
        local _, loginInstanceType = IsInInstance()
        if loginInstanceType ~= "arena" then
            C_Timer.After(3, function() beenInArena = true end)
        end
    elseif (event == "PLAYER_ENTERING_WORLD") then
        local _, instanceType = IsInInstance()
        UpdateBlizzVisibility(instanceType)
        self:SetMouseState(true)
        if (instanceType == "arena") then
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
            self:InitializeDRFrames()
            self.drFramesInitialized = true
        end
    end
end

function sArenaMixin:InitializeDRFrames()
    -- Hook UpdateState globally for reliable DR stack tracking.
    -- Blizzard calls UpdateState on each UNIT_SPELL_DIMINISH_CATEGORY_STATE_UPDATED event,
    -- which fires for every DR application. The old SetCooldown hook failed because
    -- Blizzard can pass the same startTime for subsequent DR increments.
    if not sArenaMixin._drUpdateStateHooked and SpellDiminishStatusTrayItemMixin then
        local sevText = { "½", "¼", "%" }
        hooksecurefunc(SpellDiminishStatusTrayItemMixin, "UpdateState", function(self, state)
            if not self._isSArenaTracked then return end
            if state.isImmune then return end
            -- Each non-immune UpdateState call = one DR application
            self._drStack = math.min((self._drStack or 0) + 1, 3)
            local stack = self._drStack
            local color = sArenaMixin.severityColor[stack]
            if color then
                if self.Border then
                    self.Border:SetVertexColor(unpack(color))
                end
                if self.DRText then
                    self.DRText:SetTextColor(unpack(color))
                    self.DRText:SetText(sevText[stack] or "½")
                end
            end
        end)
        sArenaMixin._drUpdateStateHooked = true
    end

    for i = 1, 3 do
        local frame = self["arena" .. i]
        if not frame.drTray then break end

        local drChildren = { frame.drTray:GetChildren() }
        frame.drFrames = drChildren

        frame.drTray:SetFrameStrata("HIGH")
        frame.drTray:SetFrameLevel(10)

        for _, drFrame in ipairs(drChildren) do
            drFrame._isSArenaTracked = true
            drFrame:EnableMouse(false)
            drFrame:SetMouseClickEnabled(false)

            -- Create overlay frame at high level so border renders above Blizzard textures
            drFrame.Boverlay = CreateFrame("Frame", nil, drFrame)
            drFrame.Boverlay:SetAllPoints(drFrame)
            drFrame.Boverlay:SetFrameStrata("MEDIUM")
            drFrame.Boverlay:SetFrameLevel(26)
            drFrame.Boverlay:Show()

            -- Create border on the overlay for severity coloring (green/yellow/red)
            drFrame.Border = drFrame.Boverlay:CreateTexture(nil, "OVERLAY", nil, 6)
            drFrame.Border:SetTexture("Interface\\Buttons\\UI-Quickslot-Depress")
            drFrame.Border:SetAllPoints(drFrame)
            drFrame.Border:SetVertexColor(0, 1, 0, 1)
            drFrame.Border:Show()

            -- Create immune border (red) - parented to ImmunityIndicator, ignores parent alpha
            if drFrame.ImmunityIndicator then
                drFrame.ImmunityIndicator:SetFrameStrata("MEDIUM")
                drFrame.ImmunityIndicator:SetFrameLevel(27)

                drFrame.BorderImmune = drFrame:CreateTexture(nil, "OVERLAY", nil, 7)
                drFrame.BorderImmune:SetTexture("Interface\\Buttons\\UI-Quickslot-Depress")
                drFrame.BorderImmune:SetAllPoints(drFrame)
                drFrame.BorderImmune:SetVertexColor(1, 0, 0, 1)
                drFrame.BorderImmune:SetParent(drFrame.ImmunityIndicator)
                drFrame.BorderImmune:SetIgnoreParentAlpha(true)

                -- Keep Blizzard shield hidden - hook SetAlpha to prevent Blizzard from restoring it
                drFrame.ImmunityIndicator:SetAlpha(0)
                local forcingAlpha = false
                hooksecurefunc(drFrame.ImmunityIndicator, "SetAlpha", function(self, alpha)
                    if not forcingAlpha and alpha ~= 0 then
                        forcingAlpha = true
                        self:SetAlpha(0)
                        forcingAlpha = false
                    end
                end)
            end

            -- Create DR severity text overlay (½, ¼, %)
            drFrame.DRTextFrame = CreateFrame("Frame", nil, drFrame)
            drFrame.DRTextFrame:SetAllPoints(drFrame)
            drFrame.DRTextFrame:SetFrameStrata("MEDIUM")
            drFrame.DRTextFrame:SetFrameLevel(28)

            drFrame.DRText = drFrame.DRTextFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
            drFrame.DRText:SetPoint("BOTTOMRIGHT", 4, -4)
            drFrame.DRText:SetFont("Fonts\\ARIALN.TTF", 14, "OUTLINE")
            drFrame.DRText:SetTextColor(0, 1, 0, 1)
            drFrame.DRText:SetText("½")

            -- Immune-state text (parented to ImmunityIndicator so it shows when immune)
            if drFrame.ImmunityIndicator then
                drFrame.DRText2 = drFrame.DRTextFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                drFrame.DRText2:SetPoint("BOTTOMRIGHT", 4, -4)
                drFrame.DRText2:SetFont("Fonts\\ARIALN.TTF", 14, "OUTLINE")
                drFrame.DRText2:SetTextColor(1, 0, 0, 1)
                drFrame.DRText2:SetText("%")
                drFrame.DRText2:SetParent(drFrame.ImmunityIndicator)
                drFrame.DRText2:SetIgnoreParentAlpha(true)

                -- Hook SetShown to toggle between normal border and immune border.
                -- Color/text is handled by the global UpdateState hook above.
                hooksecurefunc(drFrame.ImmunityIndicator, "SetShown", function(_, shown)
                    if shown then
                        drFrame.Border:SetAlpha(0)
                        drFrame.DRText:SetAlpha(0)
                    else
                        drFrame.Border:SetAlpha(1)
                        drFrame.DRText:SetAlpha(1)
                    end
                end)
            end

            -- Cooldown cosmetic settings
            if drFrame.Cooldown then
                drFrame.Cooldown:SetSwipeColor(0, 0, 0, 0.6)
                drFrame.Cooldown:SetDrawBling(false)
                drFrame.Cooldown:SetHideCountdownNumbers(false)
            end

            -- Reset stack tracking when DR frame hides (DR timer expired)
            drFrame:HookScript("OnHide", function()
                drFrame._drStack = nil
                drFrame.Border:SetAlpha(1)
                drFrame.Border:SetVertexColor(0, 1, 0, 1)
                drFrame.DRText:SetAlpha(1)
                drFrame.DRText:SetText("½")
                drFrame.DRText:SetTextColor(0, 1, 0, 1)
            end)
        end
    end

    -- Apply current settings
    if self.db then
        local layoutName = self.db.profile.currentLayout
        local layoutSettings = self.db.profile.layoutSettings[layoutName]
        if layoutSettings and layoutSettings.dr then
            self:UpdateDRSettings(layoutSettings.dr)
        end
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

            local settings = self.db.profile.layoutSettings[self.db.profile.currentLayout]

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

-- Arena Frames

function sArenaFrameMixin:OnLoad()
    local unit = "arena" .. self:GetID()
    self.parent = self:GetParent()

    self:RegisterEvent("PLAYER_LOGIN")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("UNIT_NAME_UPDATE")
    self:RegisterEvent("ARENA_OPPONENT_UPDATE")
    self:RegisterEvent("ARENA_PREP_OPPONENT_SPECIALIZATIONS")
    self:RegisterEvent("ARENA_COOLDOWNS_UPDATE")
    self:RegisterEvent("ARENA_CROWD_CONTROL_SPELL_UPDATE")
    self:RegisterUnitEvent("UNIT_HEALTH", unit)
    self:RegisterUnitEvent("UNIT_MAXHEALTH", unit)
    self:RegisterUnitEvent("UNIT_POWER_UPDATE", unit)
    self:RegisterUnitEvent("UNIT_MAXPOWER", unit)
    self:RegisterUnitEvent("UNIT_DISPLAYPOWER", unit)

    self:RegisterForClicks("AnyDown", "AnyUp")
    self:SetAttribute("*type1", "target")
    self:SetAttribute("*type2", "focus")
    self:SetAttribute("*typerelease1", "target")
    self:SetAttribute("*typerelease2", "focus")
    self:SetAttribute("unit", unit)
    self.unit = unit

    -- Steal castbar from Blizzard's CompactArenaFrame
    local blizzArenaFrame = _G["CompactArenaFrameMember" .. self:GetID()]
    if blizzArenaFrame and blizzArenaFrame.CastingBarFrame then
        self.CastBar = blizzArenaFrame.CastingBarFrame
        self.CastBar:SetParent(self)
        self.CastBar:SetFrameStrata("HIGH")
        -- Override Blizzard's GetTypeInfo so we control colors and textures
        Mixin(self.CastBar, sArenaCastingBarExtensionMixin)
        -- Reapply layout texture after Blizzard resets it on cast events
        self.CastBar:HookScript("OnEvent", function(castBar)
            if castBar.typeInfo then
                castBar:SetStatusBarTexture(castBar.typeInfo.filling)
            end
        end)
    end

    -- Hook DebuffFrame for CC display on class icon (mirrors sArena_Reloaded approach)
    local debuffFrame = blizzArenaFrame and blizzArenaFrame.DebuffFrame
    if debuffFrame then
        hooksecurefunc(debuffFrame.Icon, "SetTexture", function(_, tex)
            if tex == "INTERFACE\\ICONS\\INV_MISC_QUESTIONMARK.BLP" then
                self:UpdateClassIcon(true)
            else
                self.ClassIcon:SetTexture(tex)
            end
        end)
        hooksecurefunc(debuffFrame.Cooldown, "SetCooldown", function(_, start, duration)
            self.ClassIconCooldown:SetCooldown(start, duration)
        end)
        hooksecurefunc(debuffFrame.Cooldown, "Clear", function()
            self.ClassIconCooldown:Clear()
            self:UpdateClassIcon(true)
        end)
        debuffFrame:HookScript("OnHide", function()
            self.ClassIconCooldown:Clear()
            self:UpdateClassIcon(true)
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

    self.TexturePool = CreateTexturePool(self, "ARTWORK", nil, nil, sArenaFrameMixin.ResetTexture)
end

function sArenaFrameMixin:OnEvent(event, eventUnit, arg1)
    local unit = self.unit

    if (eventUnit and eventUnit == unit) then
        if (event == "UNIT_NAME_UPDATE") then
            self.Name:SetText(UnitName(unit) or "")
        elseif (event == "ARENA_OPPONENT_UPDATE") then
            self:UpdateVisible()
            self:UpdatePlayer(arg1)
        elseif (event == "ARENA_COOLDOWNS_UPDATE") then
            -- trinket cooldowns handled via CcRemoverFrame hook
        elseif (event == "ARENA_CROWD_CONTROL_SPELL_UPDATE") then
            if not issecretvalue(arg1) and (arg1 ~= self.Trinket.spellID) then
                local _, spellTextureNoOverride = GetSpellTexture(arg1)
                self.Trinket.spellID = arg1
                self.Trinket.Texture:SetTexture(spellTextureNoOverride)
            end
        elseif (event == "UNIT_HEALTH") then
            self:SetLifeState()
            self:SetStatusText()
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

        if (not self.parent.db) then
            self.parent:Initialize()
        end

        self:Initialize()
    elseif (event == "PLAYER_ENTERING_WORLD") or (event == "ARENA_PREP_OPPONENT_SPECIALIZATIONS") then
        self.Name:SetText("")
        self.CastBar:Hide()
        self.specTexture = nil
        self.class = nil
        self.currentClassIconTexture = nil
        self:UpdateVisible()
        self:UpdatePlayer()
        self:ResetTrinket()
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
end

function sArenaFrameMixin:OnEnter()
    self.HealthText:Show()
    self.PowerText:Show()
end

function sArenaFrameMixin:OnLeave()
    self:UpdateStatusTextVisible()
end
