-- TestMode.lua: Test mode for previewing arena frames outside of arena

function sArenaMixin:Test()
    if (InCombatLockdown()) then return end

    local db = self.db
    local currTime = GetTime()
    local classIcons = sArenaMixin.classIcons

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
        frame.CastBar:SetStatusBarColor(1, 0.7, 0, 1)
        if frame.CastBar.Text then
            frame.CastBar.Text:SetFontObject("GameFontHighlightSmall")
            frame.CastBar.Text:SetText("Polymorph")
        end

        -- Show fake DR icons for test mode
        if not frame.fakeDRFrames then
            frame.fakeDRFrames = {}
            local drTextures = { 132298, 136071, 136183, 136100 } -- Stun, Incap, Disorient, Root
            local layoutName = db.profile.currentLayout
            local layoutSettings = db.profile.layoutSettings[layoutName]
            local drSize = (layoutSettings and layoutSettings.dr and layoutSettings.dr.size) or 22
            for n = 1, 4 do
                local fakeDR = CreateFrame("Frame", nil, frame)
                fakeDR:SetSize(drSize, drSize)
                fakeDR:SetFrameStrata("HIGH")
                fakeDR:SetFrameLevel(11)
                fakeDR.Icon = fakeDR:CreateTexture(nil, "ARTWORK")
                fakeDR.Icon:SetAllPoints()
                fakeDR.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)
                fakeDR.Icon:SetTexture(drTextures[n])
                fakeDR.Cooldown = CreateFrame("Cooldown", nil, fakeDR, "CooldownFrameTemplate")
                fakeDR.Cooldown:SetAllPoints()
                fakeDR.Cooldown:SetDrawBling(false)
                fakeDR.Cooldown:SetHideCountdownNumbers(false)
                fakeDR.Cooldown:SetSwipeColor(0, 0, 0, 0.6)
                fakeDR.Border = fakeDR:CreateTexture(nil, "OVERLAY")
                fakeDR.Border:SetTexture("Interface\\Buttons\\UI-Quickslot-Depress")
                fakeDR.Border:SetPoint("TOPLEFT", -2.5, 2.5)
                fakeDR.Border:SetPoint("BOTTOMRIGHT", 2.5, -2.5)
                local borderColors = { { 0, 1, 0, 1 }, { 1, 1, 0, 1 }, { 1, 0, 0, 1 }, { 0, 1, 0, 1 } }
                local borderColor = borderColors[n]
                fakeDR.Border:SetVertexColor(unpack(borderColor))

                -- DR severity text (½, ¼, %)
                fakeDR.DRTextFrame = CreateFrame("Frame", nil, fakeDR)
                fakeDR.DRTextFrame:SetAllPoints(fakeDR)
                fakeDR.DRTextFrame:SetFrameStrata("HIGH")
                fakeDR.DRTextFrame:SetFrameLevel(27)
                fakeDR.DRText = fakeDR.DRTextFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                fakeDR.DRText:SetPoint("BOTTOMRIGHT", 4, -4)
                fakeDR.DRText:SetFont("Fonts\\ARIALN.TTF", 14, "OUTLINE")
                local drTexts = { "½", "¼", "%", "½" }
                fakeDR.DRText:SetText(drTexts[n])
                fakeDR.DRText:SetTextColor(unpack(borderColor))

                frame.fakeDRFrames[n] = fakeDR
            end
        end
        for n = 1, 4 do
            frame.fakeDRFrames[n]:Show()
            frame.fakeDRFrames[n].Cooldown:SetCooldown(currTime, math.random(12, 25))
        end

        frame.hideStatusText = false
        frame:SetStatusText("player")
        frame:UpdateStatusTextVisible()
    end

    -- Apply layout settings (respects growth direction, castbar style, etc.)
    local layoutName = db.profile.currentLayout
    local layoutSettings = db.profile.layoutSettings[layoutName]
    if layoutSettings then
        if layoutSettings.dr then
            self:UpdateDRSettings(layoutSettings.dr)
        end
        if layoutSettings.castBar then
            self:UpdateCastBarSettings(layoutSettings.castBar)
        end
    end
end
