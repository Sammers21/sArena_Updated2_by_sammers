-- Frames.lua: Create all sArena frames in Lua (replaces sArena.xml)

-- Helper: find and store the cooldown text FontString
local function SetupCooldownText(cooldown)
    cooldown:SetDrawBling(false)
    for _, region in next, { cooldown:GetRegions() } do
        if region:GetObjectType() == "FontString" then
            cooldown.Text = region
            cooldown.Text.fontFile = region:GetFont()
            break
        end
    end
end

-- Helper: create an icon frame (Trinket, Racial)
local function CreateIconFrame(parent)
    local frame = CreateFrame("Frame", nil, parent)
    frame:EnableMouse(true)
    frame:SetMovable(true)

    frame.Texture = frame:CreateTexture(nil, "OVERLAY", nil, 1)
    frame.Texture:SetAllPoints()

    frame.Cooldown = CreateFrame("Cooldown", nil, frame, "CooldownFrameTemplate")
    frame.Cooldown:SetAllPoints()
    frame.Cooldown:SetHideCountdownNumbers(false)
    SetupCooldownText(frame.Cooldown)

    return frame
end

-- Create parent frame
local parentFrame = CreateFrame("Frame", "sArena", UIParent)
parentFrame:SetSize(1, 1)
parentFrame:SetMovable(true)
Mixin(parentFrame, sArenaMixin)

-- Create 3 enemy frames
for i = 1, 3 do
    local frame = CreateFrame("Button", "sArenaEnemyFrame" .. i, parentFrame, "SecureActionButtonTemplate")
    frame:SetFrameStrata("MEDIUM")
    frame:SetFrameLevel(3)
    frame:Hide()
    frame:SetID(i)
    parentFrame["arena" .. i] = frame

    Mixin(frame, sArenaFrameMixin)

    if i == 1 then
        frame:SetPoint("CENTER")
    end

    -- Class icon
    frame.ClassIcon = frame:CreateTexture(nil, "BORDER", nil, 1)
    frame.ClassIconMask = frame:CreateMaskTexture(nil, "BORDER")
    frame.ClassIconMask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask")


    -- Health and Power bars
    frame.HealthBar = CreateFrame("StatusBar", nil, frame)
    frame.PowerBar = CreateFrame("StatusBar", nil, frame)

    -- Overlay frame: renders above bars (which are child frames of parent).
    -- Border artwork, text, and death icon live here so they all render above bars.
    frame.Overlay = CreateFrame("Frame", nil, frame)
    frame.Overlay:SetAllPoints()
    frame.Overlay:SetFrameLevel(frame:GetFrameLevel() + 5)

    -- Everything below lives on the Overlay so it renders above bars AND border texture.
    -- Draw layer order on Overlay: ARTWORK,2 (border) < ARTWORK,3 (Name) < OVERLAY (text, death icon)
    frame.Name = frame.Overlay:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall", 3)
    frame.HealthText = frame.Overlay:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall", 3)
    frame.PowerText = frame.Overlay:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall", 3)

    -- Death icon (on Overlay so it renders above the border)
    frame.DeathIcon = frame.Overlay:CreateTexture(nil, "OVERLAY", nil, 2)
    frame.DeathIcon:SetAtlas("DeathIcon")
    frame.DeathIcon:SetTexCoord(0, 1, 0, 0.5)
    frame.DeathIcon:Hide()

    -- Placeholder CastBar (overridden by stolen Blizzard castbar in OnLoad)
    frame.CastBar = CreateFrame("StatusBar", nil, frame)
    frame.CastBar:EnableMouse(true)
    frame.CastBar:SetMovable(true)
    frame.CastBar:Hide()
    frame.CastBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    frame.CastBar:SetStatusBarColor(1.0, 0.7, 0.0)
    frame.CastBar.Icon = frame.CastBar:CreateTexture(nil, "ARTWORK")
    frame.CastBar.Icon:SetSize(16, 16)
    frame.CastBar.Icon:SetPoint("RIGHT", frame.CastBar, "LEFT", -5, 0)
    frame.CastBar.Text = frame.CastBar:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    frame.CastBar.Text:SetAllPoints()
    frame.CastBar.BorderShield = frame.CastBar:CreateTexture(nil, "ARTWORK")
    frame.CastBar.BorderShield:SetTexture("Interface\\CastingBar\\UI-CastingBar-Arena-Shield")
    frame.CastBar.BorderShield:SetSize(42, 42)
    frame.CastBar.BorderShield:SetPoint("LEFT", -25, 0)
    frame.CastBar.BorderShield:Hide()
    frame.CastBar.Spark = frame.CastBar:CreateTexture(nil, "OVERLAY")
    frame.CastBar.Spark:SetSize(1, 1)
    frame.CastBar.Flash = frame.CastBar:CreateTexture(nil, "OVERLAY")

    -- Class icon cooldown
    frame.ClassIconCooldown = CreateFrame("Cooldown", nil, frame, "CooldownFrameTemplate")
    frame.ClassIconCooldown:SetReverse(true)
    frame.ClassIconCooldown:SetHideCountdownNumbers(false)
    SetupCooldownText(frame.ClassIconCooldown)
    frame.ClassIconCooldown:SetAllPoints(frame.ClassIcon)
    frame.ClassIconCooldown:SetSwipeTexture(1)
    frame.ClassIconCooldown:SetSwipeColor(0, 0, 0, 0.6)
    frame.ClassIconCooldown:SetFrameLevel(frame.Overlay:GetFrameLevel() + 1)

    -- Spec icon (above Overlay so it renders over the border)
    frame.SpecIcon = CreateFrame("Frame", nil, frame)
    frame.SpecIcon:EnableMouse(true)
    frame.SpecIcon:SetMovable(true)
    frame.SpecIcon:SetFrameLevel(frame.Overlay:GetFrameLevel() + 1)
    frame.SpecIcon.Texture = frame.SpecIcon:CreateTexture(nil, "ARTWORK", nil, 2)
    frame.SpecIcon.Texture:SetAllPoints()
    frame.SpecIcon.Mask = frame.SpecIcon:CreateMaskTexture(nil, "ARTWORK", nil, 2)
    frame.SpecIcon.Mask:SetAllPoints()
    frame.SpecIcon.Mask:SetTexture("Interface\\CharacterFrame\\TempPortraitAlphaMask")

    -- Trinket icon (above Overlay so it renders over the border)
    frame.Trinket = CreateIconFrame(frame)
    frame.Trinket:SetFrameLevel(frame.Overlay:GetFrameLevel() + 1)

    -- Racial frame (kept as hidden dummy so layout code doesn't error)
    frame.Racial = CreateIconFrame(frame)
    frame.Racial:Hide()

    -- Script handlers
    frame:SetScript("OnEvent", frame.OnEvent)
    frame:SetScript("OnEnter", frame.OnEnter)
    frame:SetScript("OnLeave", frame.OnLeave)

    -- Initialize the frame
    frame:OnLoad()
end

-- Parent frame handlers
parentFrame:SetScript("OnEvent", parentFrame.OnEvent)
parentFrame:OnLoad()
