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
        if not self.drFramesInitialized then
            self:InitializeDRFrames()
            self.drFramesInitialized = true
        end
    end
end

function sArenaMixin:InitializeDRFrames()
    for i = 1, 3 do
        local frame = self["arena" .. i]
        if not frame.drTray then break end

        local drChildren = { frame.drTray:GetChildren() }
        frame.drFrames = drChildren

        frame.drTray:SetFrameStrata("HIGH")
        frame.drTray:SetFrameLevel(10)

        for _, drFrame in ipairs(drChildren) do
            drFrame:EnableMouse(false)
            drFrame:SetMouseClickEnabled(false)

            -- Create border overlay for severity coloring (green/yellow/red)
            drFrame.Border = drFrame:CreateTexture(nil, "OVERLAY")
            drFrame.Border:SetTexture("Interface\\Buttons\\UI-Quickslot-Depress")
            drFrame.Border:SetVertexColor(0, 1, 0, 1)

            -- Hide Blizzard's immunity visual
            if drFrame.ImmunityIndicator then
                drFrame.ImmunityIndicator:SetAlpha(0)

                -- Hook SetShown for immune state
                hooksecurefunc(drFrame.ImmunityIndicator, "SetShown", function(_, shown)
                    if shown then
                        drFrame.Border:SetVertexColor(1, 0, 0, 1) -- red = immune
                    else
                        -- Restore stack-based color
                        local stack = drFrame._drStack or 1
                        local color = sArenaMixin.severityColor[math.min(stack, 3)]
                        if color then
                            drFrame.Border:SetVertexColor(unpack(color))
                        end
                    end
                end)
            end

            -- Track DR stacks via cooldown changes for green/yellow/red severity
            if drFrame.Cooldown then
                hooksecurefunc(drFrame.Cooldown, "SetCooldown", function(_, start, duration)
                    if start and start > 0 and duration and duration > 0 then
                        if not drFrame._lastDRStart or start ~= drFrame._lastDRStart then
                            if drFrame._lastDRStart then
                                drFrame._drStack = math.min((drFrame._drStack or 1) + 1, 3)
                            else
                                drFrame._drStack = 1
                            end
                            drFrame._lastDRStart = start
                        end
                        local color = sArenaMixin.severityColor[drFrame._drStack or 1]
                        if color then
                            drFrame.Border:SetVertexColor(unpack(color))
                        end
                    end
                end)

                drFrame.Cooldown:SetSwipeColor(0, 0, 0, 0.6)
                drFrame.Cooldown:SetDrawBling(false)
                drFrame.Cooldown:SetHideCountdownNumbers(false)
            end

            -- Reset stack tracking when DR frame hides
            drFrame:HookScript("OnHide", function()
                drFrame._drStack = nil
                drFrame._lastDRStart = nil
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
        -- Reapply layout texture after Blizzard resets it on cast events
        self.CastBar:HookScript("OnEvent", function(castBar)
            if castBar.typeInfo then
                castBar:SetStatusBarTexture(castBar.typeInfo.filling)
            end
        end)
    end

    -- Hook DebuffFrame for CC display on class icon
    if blizzArenaFrame and blizzArenaFrame.DebuffFrame then
        local debuffFrame = blizzArenaFrame.DebuffFrame
        local QUESTION_MARK_ICON = 134400
        local QUESTION_MARK_PATH = "INTERFACE\\ICONS\\INV_MISC_QUESTIONMARK.BLP"

        hooksecurefunc(debuffFrame.Icon, "SetTexture", function(_, tex)
            if tex and tex ~= QUESTION_MARK_PATH and tex ~= QUESTION_MARK_ICON then
                self.ClassIcon:SetTexture(tex)
            else
                self.ClassIconCooldown:Clear()
                self:UpdateClassIcon()
            end
        end)
        hooksecurefunc(debuffFrame.Cooldown, "SetCooldown", function(_, start, duration)
            if start and start > 0 and duration and duration > 0 then
                self.ClassIconCooldown:SetCooldown(start, duration)
            else
                self.ClassIconCooldown:Clear()
                self:UpdateClassIcon()
            end
        end)
        hooksecurefunc(debuffFrame.Cooldown, "Clear", function()
            self.ClassIconCooldown:Clear()
            self:UpdateClassIcon()
        end)
        debuffFrame:HookScript("OnHide", function()
            self.ClassIconCooldown:Clear()
            self:UpdateClassIcon()
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
    elseif (event == "PLAYER_ENTERING_WORLD") then
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
