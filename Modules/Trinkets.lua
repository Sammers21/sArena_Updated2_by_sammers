local GetSpellTexture = GetSpellTexture or C_Spell.GetSpellTexture

function sArenaFrameMixin:FindTrinket()
    local trinket = self.Trinket
    trinket.Cooldown:SetCooldown(GetTime(), 120);
end

function sArenaFrameMixin:GetFactionTrinketIcon()
    local faction, _ = UnitFactionGroup(self.unit)
    if (faction == "Alliance") then
        return 133452
    else
        return 133453
    end
end

-- Helper function to check if we should force trinket display for humans (legacy, always returns false for Retail/Midnight)
function sArenaFrameMixin:ShouldForceHumanTrinket()
    return false
end

function sArenaFrameMixin:UpdateTrinketIcon(available)
    if available then
        if self.parent.db.profile.colorTrinket then
            self.Trinket.Texture:SetColorTexture(0,1,0)
        else
            self.Trinket.Texture:SetDesaturated(false)
        end
    else
        if self.parent.db.profile.colorTrinket then
            if not self.Trinket.spellID then
                self.Trinket.Texture:SetTexture(nil)
            else
                self.Trinket.Texture:SetColorTexture(1,0,0)
            end
        else
            local desaturate
            if self.updateRacialOnTrinketSlot then
                desaturate = false
            else
                desaturate = self.parent.db.profile.desaturateTrinketCD
            end
            self.Trinket.Texture:SetDesaturated(desaturate)
        end
    end
end

local function GetArenaCCInfo(unit)
    local spellID, startTime, duration = C_PvP.GetArenaCrowdControlInfo(unit)
    return spellID, startTime, duration
end

function sArenaFrameMixin:UpdateTrinket()
    local spellID, startTime, duration = GetArenaCCInfo(self.unit)

    if (spellID) then
        if (spellID ~= self.Trinket.spellID) then
            local _, spellTextureNoOverride = GetSpellTexture(spellID)

            -- Check if we had racial on trinket slot before
            local wasRacialOnTrinketSlot = self.updateRacialOnTrinketSlot

            self.Trinket.spellID = spellID

            -- Determine if we should put racial on trinket slot
            local swapEnabled = self.parent.db.profile.swapRacialTrinket or self.parent.db.profile.swapHumanTrinket
            local shouldPutRacialOnTrinket = swapEnabled and self.race and not spellTextureNoOverride

            -- Set the trinket texture AFTER determining racial placement but BEFORE updating racial
            local trinketTexture
            if spellTextureNoOverride then
                trinketTexture = spellTextureNoOverride
            else
                trinketTexture = sArenaMixin.noTrinketTexture     -- Surrender flag if no trinket
            end

            -- Handle racial updates based on trinket state
            if spellTextureNoOverride and wasRacialOnTrinketSlot then
                -- We found a real trinket and had racial on trinket slot, restore racial to its proper place
                self.updateRacialOnTrinketSlot = nil
                self.Trinket.Texture:SetTexture(trinketTexture)
                self:UpdateRacial()
            elseif shouldPutRacialOnTrinket then
                -- We should put racial on trinket slot (no real trinket found)
                self.updateRacialOnTrinketSlot = true
                -- Don't set trinket texture yet - let UpdateRacial handle it for racial display
                self:UpdateRacial()
            else
                -- Normal case: set trinket texture and clear racial from trinket slot
                self.updateRacialOnTrinketSlot = nil
                self.Trinket.Texture:SetTexture(trinketTexture)
                -- Update racial to ensure it shows in racial slot if needed
                if wasRacialOnTrinketSlot then
                    self:UpdateRacial()
                end
            end

            self:UpdateTrinketIcon(true)
        end
        -- Midnight: Trinket CD is handled by the game via C_PvP.GetArenaCrowdControlInfo
    end
end

function sArenaFrameMixin:ResetTrinket()
    -- If racial was on trinket slot, move it back to racial slot
    if self.updateRacialOnTrinketSlot then
        self.updateRacialOnTrinketSlot = nil
        self:UpdateRacial()
    end

    self.Trinket.spellID = nil
    self.Trinket.Texture:SetTexture(nil)
    self.Trinket.Cooldown:Clear()
    self.Trinket.Texture:SetDesaturated(false)
end
