local function getLayoutTable()
    local t = {}

    for k, _ in pairs(sArenaMixin.layouts) do
        t[k] = sArenaMixin.layouts[k].name and sArenaMixin.layouts[k].name or k
    end

    return t
end

local function validateCombat()
    if ( InCombatLockdown() ) then
        return "Must leave combat first."
    end

    return true
end

local exclamation = "|TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:0:0:0:-1|t"

local growthValues = { "Down", "Up", "Right", "Left" }

function sArenaMixin:GetLayoutOptionsTable(layoutName)
    local optionsTable = {
        arenaFrames = {
            order = 1,
            name = "Arena Frames",
            type = "group",
            get = function(info) return info.handler.db.profile.layoutSettings[layoutName][info[#info]] end,
            set = function(info, val) self:UpdateFrameSettings(info.handler.db.profile.layoutSettings[layoutName], info, val) end,
            args = {
                positioning = {
                    order = 1,
                    name = "Positioning",
                    type = "group",
                    inline = true,
                    args = {
                        posX = {
                            order = 1,
                            name = "Horizontal",
                            type = "range",
                            min = -1000,
                            max = 1000,
                            step = 0.1,
                            bigStep = 1,
                        },
                        posY = {
                            order = 2,
                            name = "Vertical",
                            type = "range",
                            min = -1000,
                            max = 1000,
                            step = 0.1,
                            bigStep = 1,
                        },
                        spacing = {
                            order = 3,
                            name = "Spacing",
                            desc = "Spacing between each arena frame",
                            type = "range",
                            min = 0,
                            max = 100,
                            step = 1,
                        },
                        growthDirection = {
                            order = 4,
                            name = "Growth Direction",
                            type = "select",
                            style = "dropdown",
                            values = growthValues,
                        },
                    },
                },
                sizing = {
                    order = 2,
                    name = "Sizing",
                    type = "group",
                    inline = true,
                    args = {
                        scale = {
                            order = 1,
                            name = "Scale",
                            type = "range",
                            min = 0.1,
                            max = 5.0,
                            softMin = 0.5,
                            softMax = 3.0,
                            step = 0.01,
                            bigStep = 0.1,
                            isPercent = true,
                        },
                        classIconFontSize = {
                            order = 2,
                            name = "Class Icon CD Font Size",
                            desc = "Only works with Blizzard cooldown count (not OmniCC)",
                            type = "range",
                            min = 2,
                            max = 48,
                            softMin = 4,
                            softMax = 32,
                            step = 1,
                        },
                    },
                },
            },
        },
        specIcon = {
            order = 2,
            name = "Spec Icons",
            type = "group",
            get = function(info) return info.handler.db.profile.layoutSettings[layoutName].specIcon[info[#info]] end,
            set = function(info, val) self:UpdateSpecIconSettings(info.handler.db.profile.layoutSettings[layoutName].specIcon, info, val) end,
            args = {
                positioning = {
                    order = 1,
                    name = "Positioning",
                    type = "group",
                    inline = true,
                    args = {
                        posX = {
                            order = 1,
                            name = "Horizontal",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                        posY = {
                            order = 2,
                            name = "Vertical",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                    },
                },
                sizing = {
                    order = 2,
                    name = "Sizing",
                    type = "group",
                    inline = true,
                    args = {
                        scale = {
                            order = 1,
                            name = "Scale",
                            type = "range",
                            min = 0.1,
                            max = 5.0,
                            softMin = 0.5,
                            softMax = 3.0,
                            step = 0.01,
                            bigStep = 0.1,
                            isPercent = true,
                        },
                    },
                },
            },
        },
        trinket = {
            order = 3,
            name = "Trinkets",
            type = "group",
            get = function(info) return info.handler.db.profile.layoutSettings[layoutName].trinket[info[#info]] end,
            set = function(info, val) self:UpdateTrinketSettings(info.handler.db.profile.layoutSettings[layoutName].trinket, info, val) end,
            args = {
                positioning = {
                    order = 1,
                    name = "Positioning",
                    type = "group",
                    inline = true,
                    args = {
                        posX = {
                            order = 1,
                            name = "Horizontal",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                        posY = {
                            order = 2,
                            name = "Vertical",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                    },
                },
                sizing = {
                    order = 2,
                    name = "Sizing",
                    type = "group",
                    inline = true,
                    args = {
                        scale = {
                            order = 1,
                            name = "Scale",
                            type = "range",
                            min = 0.1,
                            max = 5.0,
                            softMin = 0.5,
                            softMax = 3.0,
                            step = 0.01,
                            bigStep = 0.1,
                            isPercent = true,
                        },
                        fontSize = {
                            order = 3,
                            name = "Font Size",
                            desc = "Only works with Blizzard cooldown count (not OmniCC)",
                            type = "range",
                            min = 2,
                            max = 48,
                            softMin = 4,
                            softMax = 32,
                            step = 1,
                        },
                    },
                },
            },
        },
        castBar = {
            order = 5,
            name = "Cast Bars",
            type = "group",
            get = function(info) return info.handler.db.profile.layoutSettings[layoutName].castBar[info[#info]] end,
            set = function(info, val) self:UpdateCastBarSettings(info.handler.db.profile.layoutSettings[layoutName].castBar, info, val) end,
            args = {
                castbarLayout = {
                    order = 0,
                    name = "Castbar Style",
                    type = "select",
                    width = "full",
                    values = { "Modern", "Old" },
                },
                positioning = {
                    order = 1,
                    name = "Positioning",
                    type = "group",
                    inline = true,
                    args = {
                        posX = {
                            order = 1,
                            name = "Horizontal",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                        posY = {
                            order = 2,
                            name = "Vertical",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                    },
                },
                sizing = {
                    order = 2,
                    name = "Sizing",
                    type = "group",
                    inline = true,
                    args = {
                        scale = {
                            order = 1,
                            name = "Scale",
                            type = "range",
                            min = 0.1,
                            max = 5.0,
                            softMin = 0.5,
                            softMax = 3.0,
                            step = 0.01,
                            bigStep = 0.1,
                            isPercent = true,
                        },
                        width = {
                            order = 2,
                            name = "Width",
                            type = "range",
                            min = 10,
                            max = 400,
                            step = 1,
                        },
                    },
                },
            },
        },
        dr = {
            order = 6,
            name = "Diminishing Returns",
            type = "group",
            get = function(info) return info.handler.db.profile.layoutSettings[layoutName].dr[info[#info]] end,
            set = function(info, val) self:UpdateDRSettings(info.handler.db.profile.layoutSettings[layoutName].dr, info, val) end,
            args = {
                positioning = {
                    order = 1,
                    name = "Positioning",
                    type = "group",
                    inline = true,
                    args = {
                        posX = {
                            order = 1,
                            name = "Horizontal",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                        posY = {
                            order = 2,
                            name = "Vertical",
                            type = "range",
                            min = -500,
                            max = 500,
                            softMin = -200,
                            softMax = 200,
                            step = 0.1,
                            bigStep = 1,
                        },
                        spacing = {
                            order = 3,
                            name = "Spacing",
                            type = "range",
                            min = 0,
                            max = 32,
                            softMin = 0,
                            softMax = 32,
                            step = 1,
                        },
                        growthDirection = {
                            order = 4,
                            name = "Growth Direction",
                            type = "select",
                            style = "dropdown",
                            values = growthValues,
                        },
                    },
                },
                sizing = {
                    order = 2,
                    name = "Sizing",
                    type = "group",
                    inline = true,
                    args = {
                        size = {
                            order = 1,
                            name = "Size",
                            type = "range",
                            min = 2,
                            max = 128,
                            softMin = 8,
                            softMax = 64,
                            step = 1,
                        },
                        borderSize = {
                            order = 2,
                            name = "Border Size",
                            type = "range",
                            min = 0,
                            max = 24,
                            softMin = 1,
                            softMax = 16,
                            step = 0.1,
                            bigStep = 1,
                        },
                        fontSize = {
                            order = 3,
                            name = "Font Size",
                            desc = "Only works with Blizzard cooldown count (not OmniCC)",
                            type = "range",
                            min = 2,
                            max = 48,
                            softMin = 4,
                            softMax = 32,
                            step = 1,
                        },
                    },
                },
            },
        },
    }

    return optionsTable
end

function sArenaMixin:UpdateFrameSettings(db, info, val)
    if ( val ) then
        db[info[#info]] = val
    end

    self:ClearAllPoints()
    self:SetPoint("CENTER", UIParent, "CENTER", db.posX, db.posY)
    self:SetScale(db.scale)

    local growthDirection = db.growthDirection
    local spacing = db.spacing

    for i = 1, 3 do
        local text = self["arena"..i].ClassIconCooldown.Text
        text:SetFont(text.fontFile, db.classIconFontSize, "OUTLINE")
    end

    for i = 2, 3 do
        local frame = self["arena"..i]
        local prevFrame = self["arena"..i-1]

        frame:ClearAllPoints()
        if ( growthDirection == 1 ) then frame:SetPoint("TOP", prevFrame, "BOTTOM", 0, -spacing)
        elseif ( growthDirection == 2 ) then frame:SetPoint("BOTTOM", prevFrame, "TOP", 0, spacing)
        elseif ( growthDirection == 3 ) then frame:SetPoint("LEFT", prevFrame, "RIGHT", spacing, 0)
        elseif ( growthDirection == 4 ) then frame:SetPoint("RIGHT", prevFrame, "LEFT", -spacing, 0)
        end
    end
end

function sArenaMixin:UpdateCastBarSettings(db, info, val)
    if ( val ) then
        db[info[#info]] = val
    end

    local isModern = (db.castbarLayout or 1) == 1

    for i = 1, 3 do
        local frame = self["arena"..i]
        local castBar = frame.CastBar

        castBar:ClearAllPoints()
        castBar:SetPoint("CENTER", frame, "CENTER", db.posX, db.posY)
        castBar:SetScale(db.scale)
        castBar:SetWidth(db.width)

        -- Create background for old/classic style if needed
        if not castBar.sArenaBackground then
            castBar.sArenaBackground = castBar:CreateTexture(nil, "BACKGROUND")
            castBar.sArenaBackground:SetAllPoints()
            castBar.sArenaBackground:SetColorTexture(0, 0, 0, 0.5)
            castBar.sArenaBackground:Hide()
        end

        -- Save original height on first call
        if not castBar._originalHeight then
            castBar._originalHeight = castBar:GetHeight()
        end

        -- Apply castbar style
        if isModern then
            -- Modern: thin bar, spell name below via Blizzard's TextBorder
            castBar:SetHeight(castBar._originalHeight or 10)
            castBar.sArenaBackground:Hide()
            if castBar.TextBorder then
                castBar.TextBorder:SetAlpha(1)
                castBar.TextBorder:ClearAllPoints()
                castBar.TextBorder:SetPoint("TOPLEFT", castBar, "TOPLEFT", 0, 0)
                castBar.TextBorder:SetPoint("BOTTOMRIGHT", castBar, "BOTTOMRIGHT", 0, -12)
            end
            if castBar.Border then
                castBar.Border:SetAlpha(1)
            end
            if castBar.MaskTexture then
                castBar.MaskTexture:Show()
            end
            if castBar.Text then
                castBar.Text:ClearAllPoints()
                castBar.Text:SetPoint("BOTTOM", castBar, "BOTTOM", 0, -14)
            end
        else
            -- Old/Classic: thick bar, background, spell name centered inside
            castBar:SetHeight(16)
            castBar.sArenaBackground:Show()
            if castBar.TextBorder then
                castBar.TextBorder:SetAlpha(0)
                castBar.TextBorder:ClearAllPoints()
            end
            if castBar.Border then
                castBar.Border:SetAlpha(0)
            end
            if castBar.MaskTexture then
                castBar.MaskTexture:Hide()
            end
            if castBar.Text then
                castBar.Text:ClearAllPoints()
                castBar.Text:SetPoint("TOPLEFT", castBar, "TOPLEFT", 2, 0)
                castBar.Text:SetPoint("BOTTOMRIGHT", castBar, "BOTTOMRIGHT", -2, 0)
                castBar.Text:SetWordWrap(false)
            end
        end
    end
end

function sArenaMixin:UpdateDRSettings(db, info, val)
    if info and val then
        db[info[#info]] = val
    end

    -- Growth direction: 1=Down, 2=Up, 3=Right, 4=Left
    local direction = db.growthDirection or 4
    local anchor, relAnchor
    if direction == 3 then
        anchor, relAnchor = "LEFT", "CENTER"
    elseif direction == 4 then
        anchor, relAnchor = "RIGHT", "CENTER"
    elseif direction == 1 then
        anchor, relAnchor = "TOP", "CENTER"
    elseif direction == 2 then
        anchor, relAnchor = "BOTTOM", "CENTER"
    else
        anchor, relAnchor = "RIGHT", "CENTER"
    end

    -- Compute chaining anchors for fake DR frames (test mode)
    local chainAnchor, chainRelAnchor, spacing
    if direction == 3 then
        chainAnchor, chainRelAnchor, spacing = "LEFT", "RIGHT", (db.spacing or 6)
    elseif direction == 4 then
        chainAnchor, chainRelAnchor, spacing = "RIGHT", "LEFT", -(db.spacing or 6)
    elseif direction == 1 then
        chainAnchor, chainRelAnchor, spacing = "TOP", "BOTTOM", -(db.spacing or 6)
    elseif direction == 2 then
        chainAnchor, chainRelAnchor, spacing = "BOTTOM", "TOP", (db.spacing or 6)
    else
        chainAnchor, chainRelAnchor, spacing = "RIGHT", "LEFT", -(db.spacing or 6)
    end

    local isVertical = (direction == 1 or direction == 2)

    for i = 1, 3 do
        local frame = self["arena" .. i]

        -- Update real stolen Blizzard DR tray
        if frame.drTray and frame.drFrames then
            frame.drTray:ClearAllPoints()
            frame.drTray:SetPoint(anchor, frame, relAnchor, db.posX or 0, db.posY or 0)

            for _, drFrame in ipairs(frame.drFrames) do
                drFrame:SetSize(db.size, db.size)

                if drFrame.Border then
                    drFrame.Border:ClearAllPoints()
                    drFrame.Border:SetPoint("TOPLEFT", drFrame, "TOPLEFT", -(db.borderSize or 2.5), (db.borderSize or 2.5))
                    drFrame.Border:SetPoint("BOTTOMRIGHT", drFrame, "BOTTOMRIGHT", (db.borderSize or 2.5), -(db.borderSize or 2.5))
                end

                if drFrame.BorderImmune then
                    drFrame.BorderImmune:ClearAllPoints()
                    drFrame.BorderImmune:SetPoint("TOPLEFT", drFrame, "TOPLEFT", -(db.borderSize or 2.5), (db.borderSize or 2.5))
                    drFrame.BorderImmune:SetPoint("BOTTOMRIGHT", drFrame, "BOTTOMRIGHT", (db.borderSize or 2.5), -(db.borderSize or 2.5))
                end

                if drFrame.Cooldown then
                    for _, region in next, { drFrame.Cooldown:GetRegions() } do
                        if region:GetObjectType() == "FontString" then
                            local fontFile = region:GetFont()
                            if fontFile then
                                region:SetFont(fontFile, db.fontSize or 12, "OUTLINE")
                            end
                            break
                        end
                    end
                end

                if drFrame.DRText then
                    drFrame.DRText:SetFont("Fonts\\ARIALN.TTF", db.fontSize or 14, "OUTLINE")
                end

                if drFrame.DRText2 then
                    drFrame.DRText2:SetFont("Fonts\\ARIALN.TTF", db.fontSize or 14, "OUTLINE")
                end
            end
        end

        -- Update fake DR frames (test mode)
        if frame.fakeDRFrames then
            for n, fakeDR in ipairs(frame.fakeDRFrames) do
                fakeDR:SetSize(db.size, db.size)
                fakeDR:ClearAllPoints()
                if n == 1 then
                    fakeDR:SetPoint(anchor, frame, relAnchor, db.posX or 0, db.posY or 0)
                else
                    if isVertical then
                        fakeDR:SetPoint(chainAnchor, frame.fakeDRFrames[n - 1], chainRelAnchor, 0, spacing)
                    else
                        fakeDR:SetPoint(chainAnchor, frame.fakeDRFrames[n - 1], chainRelAnchor, spacing, 0)
                    end
                end

                if fakeDR.Border then
                    fakeDR.Border:ClearAllPoints()
                    fakeDR.Border:SetPoint("TOPLEFT", fakeDR, "TOPLEFT", -(db.borderSize or 2.5), (db.borderSize or 2.5))
                    fakeDR.Border:SetPoint("BOTTOMRIGHT", fakeDR, "BOTTOMRIGHT", (db.borderSize or 2.5), -(db.borderSize or 2.5))
                end

                if fakeDR.Cooldown then
                    for _, region in next, { fakeDR.Cooldown:GetRegions() } do
                        if region:GetObjectType() == "FontString" then
                            local fontFile = region:GetFont()
                            if fontFile then
                                region:SetFont(fontFile, db.fontSize or 12, "OUTLINE")
                            end
                            break
                        end
                    end
                end

                if fakeDR.DRText then
                    fakeDR.DRText:SetFont("Fonts\\ARIALN.TTF", db.fontSize or 14, "OUTLINE")
                end
            end
        end
    end
end

function sArenaMixin:UpdateSpecIconSettings(db, info, val)
    if ( val ) then
        db[info[#info]] = val
    end

    for i = 1, 3 do
        local frame = self["arena"..i]

        frame.SpecIcon:ClearAllPoints()
        frame.SpecIcon:SetPoint("CENTER", frame, "CENTER", db.posX, db.posY)
        frame.SpecIcon:SetScale(db.scale)
    end
end

function sArenaMixin:UpdateTrinketSettings(db, info, val)
    if ( val ) then
        db[info[#info]] = val
    end

    for i = 1, 3 do
        local frame = self["arena"..i]

        frame.Trinket:ClearAllPoints()
        frame.Trinket:SetPoint("CENTER", frame, "CENTER", db.posX, db.posY)
        frame.Trinket:SetScale(db.scale)

        local text = self["arena"..i].Trinket.Cooldown.Text
        text:SetFont(text.fontFile, db.fontSize, "OUTLINE")
    end
end


sArenaMixin.optionsTable = {
    type = "group",
    childGroups = "tab",
    validate = validateCombat,
    args = {
        setLayout = {
            order = 1,
            name = "Layout",
            type = "select",
            style = "dropdown",
            get = function(info) return info.handler.db.profile.currentLayout end,
            set = "SetLayout",
            values = getLayoutTable,
        },
        test = {
            order = 2,
            name = "Test",
            type = "execute",
            func = "Test",
            width = "half",
        },
        hide = {
            order = 3,
            name = "Hide",
            type = "execute",
            func = function(info) for i = 1, 3 do info.handler["arena"..i]:OnEvent("PLAYER_ENTERING_WORLD") end end,
            width = "half",
        },
        dragNotice = {
            order = 4,
            name = "     " .. exclamation .. " Ctrl+shift+click to drag stuff",
            type = "description",
            fontSize = "medium",
            width = 1.5,
        },
        layoutSettingsGroup = {
            order = 5,
            name = "Layout Settings",
            desc = "These settings apply only to the selected layout",
            type = "group",
            args = {},
        },
        globalSettingsGroup = {
            order = 6,
            name = "Global Settings",
            desc = "These settings apply to all layouts",
            type = "group",
            childGroups = "tree",
            args = {
                framesGroup = {
                    order = 1,
                    name = "Arena Frames",
                    type = "group",
                    args = {
                        statusText = {
                            order = 5,
                            name = "Status Text",
                            type = "group",
                            inline = true,
                            args = {
                                alwaysShow = {
                                    order = 1,
                                    name = "Always Show",
                                    desc = "If disabled, text only shows on mouseover",
                                    type = "toggle",
                                    get = function(info) return info.handler.db.profile.statusText.alwaysShow end,
                                    set = function(info, val)
                                        info.handler.db.profile.statusText.alwaysShow = val
                                        for i = 1, 3 do info.handler["arena"..i]:UpdateStatusTextVisible()
                                        end
                                    end,
                                },
                                usePercentage = {
                                    order = 2,
                                    name = "Use Percentage",
                                    type = "toggle",
                                    get = function(info) return info.handler.db.profile.statusText.usePercentage end,
                                    set =   function(info, val)
                                                info.handler.db.profile.statusText.usePercentage = val

                                                local _, instanceType = IsInInstance()
                                                if ( instanceType ~= "arena" and info.handler.arena1:IsShown() ) then
                                                    info.handler:Test()
                                                end
                                            end,
                                },
                            },
                        },
                        misc = {
                            order = 6,
                            name = "Miscellaneous",
                            type = "group",
                            inline = true,
                            args = {
                                classColors = {
                                    order = 1,
                                    name = "Use Class Colors",
                                    desc = "When disabled, health bars will be green",
                                    type = "toggle",
                                    get = function(info) return info.handler.db.profile.classColors end,
                                    set = function(info, val) info.handler.db.profile.classColors = val end,
                                },
                                showNames = {
                                    order = 2,
                                    name = "Show Names",
                                    type = "toggle",
                                    get = function(info) return info.handler.db.profile.showNames end,
                                    set = function(info, val) info.handler.db.profile.showNames = val for i = 1, 3 do info.handler["arena"..i].Name:SetShown(val) end end,
                                },
                                hideOverabsorbs = {
                                    order = 3,
                                    name = "Hide Overabsorbs",
                                    desc = "Hide the glow effect when absorb shields exceed max health",
                                    type = "toggle",
                                    get = function(info) return info.handler.db.profile.hideOverabsorbs end,
                                    set = function(info, val)
                                        info.handler.db.profile.hideOverabsorbs = val
                                        for i = 1, 3 do
                                            info.handler["arena"..i]:UpdateAbsorb(info.handler["arena"..i].unit)
                                        end
                                    end,
                                },
                            },
                        },
                    },
                },
            },
        },
    },
}
