local GetTime = GetTime

-- 283167 "PvP Trinket" spell
-- 336139 Adapted Aura/Spell

sArenaMixin.defaultSettings.profile.racialCategories = {
	["Human"] = true,
	["Scourge"] = true,
	["Dwarf"] = true,
	["NightElf"] = true,
	["Gnome"] = true,
	["Draenei"] = true,
	["Worgen"] = true,
	["Pandaren"] = true,
	["Orc"] = true,
	["Tauren"] = true,
	["Troll"] = true,
	["BloodElf"] = true,
	["Goblin"] = true,
	["LightforgedDraenei"] = true,
	["HighmountainTauren"] = true,
	["Nightborne"] = true,
	["MagharOrc"] = true,
	["DarkIronDwarf"] = true,
	["ZandalariTroll"] = true,
	["VoidElf"] = true,
	["KulTiran"] = true,
	["Mechagnome"] = true,
	["Vulpera"] = true,
	["Dracthyr"] = true,
	["EarthenDwarf"] = true,
	["Harronir"] = true
}

local racialSpells = {
		[59752] = 180,  -- Will to Survive
		[7744] = 120,   -- Will of the Forsaken
		[20594] = 120, -- Stoneform
		[65116] = 120, -- Stoneform (Aura)
		[58984] = 120,  -- Shadowmeld
		[20589] = 60,   -- Escape Artist
		[59542] = 120,  -- Gift of the Naaru
		[68992] = 120,  -- Darkflight
		[107079] = 120, -- Quaking Palm
		[33697] = 120,  -- Blood Fury
		[20549] = 90,   -- War Stomp
		[26297] = 180,  -- Berserking
		[202719] = 90,  -- Arcane Torrent
		[69070] = 90,   -- Rocket Jump
		[255647] = 150, -- Light's Judgment
		[255654] = 120, -- Bull Rush
		[260364] = 180, -- Arcane Pulse
		[274738] = 120, -- Ancestral Call
		[265221] = 120, -- Fireblood
		[273104] = 120, -- Fireblood (Aura)
		[291944] = 160, -- Regeneratin'
		[256948] = 180, -- Spatial Rift
		[287712] = 160, -- Haymaker
		[312924] = 180, -- Hyper Organic Light Originator
		[312411] = 90,  -- Bag of Tricks
		[368970] = 90,  -- Tail Swipe
		[357214] = 90,  -- Wing Buffet
		[436344] = 120, -- Azerite Surge
		[1237885] = 180, -- Thorn Bloom

		-- Trinkets
		[336126] = 0,
		[336139] = 0,
	}

local trinkets = {
	[336126] = true, -- Trinket Spell Cast
	[336139] = true, -- Adaption Aura Applied
}

local racialData = {
	["Human"] = { texture = C_Spell.GetSpellTexture(59752), sharedCD = 90, spellID = 59752 },
	["Scourge"] = { texture = C_Spell.GetSpellTexture(7744), sharedCD = 30, spellID = 7744 },
	["Dwarf"] = { texture = C_Spell.GetSpellTexture(20594), sharedCD = 30, spellID = 20594 },
	["NightElf"] = { texture = C_Spell.GetSpellTexture(58984), sharedCD = 0, spellID = 58984 },
	["Gnome"] = { texture = C_Spell.GetSpellTexture(20589), sharedCD = 0, spellID = 20589 },
	["Draenei"] = { texture = C_Spell.GetSpellTexture(59542), sharedCD = 0, spellID = 59542 },
	["Worgen"] = { texture = C_Spell.GetSpellTexture(68992), sharedCD = 0, spellID = 68992 },
	["Pandaren"] = { texture = C_Spell.GetSpellTexture(107079), sharedCD = 0, spellID = 107079 },
	["Orc"] = { texture = C_Spell.GetSpellTexture(33697), sharedCD = 0, spellID = 33697 },
	["Tauren"] = { texture = C_Spell.GetSpellTexture(20549), sharedCD = 0, spellID = 20549 },
	["Troll"] = { texture = C_Spell.GetSpellTexture(26297), sharedCD = 0, spellID = 26297 },
	["BloodElf"] = { texture = C_Spell.GetSpellTexture(202719), sharedCD = 0, spellID = 202719 },
	["Goblin"] = { texture = C_Spell.GetSpellTexture(69070), sharedCD = 0, spellID = 69070 },
	["LightforgedDraenei"] = { texture = C_Spell.GetSpellTexture(255647), sharedCD = 0, spellID = 255647 },
	["HighmountainTauren"] = { texture = C_Spell.GetSpellTexture(255654), sharedCD = 0, spellID = 255654 },
	["Nightborne"] = { texture = C_Spell.GetSpellTexture(260364), sharedCD = 0, spellID = 260364 },
	["MagharOrc"] = { texture = C_Spell.GetSpellTexture(274738), sharedCD = 0, spellID = 274738 },
	["DarkIronDwarf"] = { texture = C_Spell.GetSpellTexture(265221), sharedCD = 30, spellID = 265221 },
	["ZandalariTroll"] = { texture = C_Spell.GetSpellTexture(291944), sharedCD = 0, spellID = 291944 },
	["VoidElf"] = { texture = C_Spell.GetSpellTexture(256948), sharedCD = 0, spellID = 256948 },
	["KulTiran"] = { texture = C_Spell.GetSpellTexture(287712), sharedCD = 0, spellID = 287712 },
	["Mechagnome"] = { texture = C_Spell.GetSpellTexture(312924), sharedCD = 0, spellID = 312924 },
	["Vulpera"] = { texture = C_Spell.GetSpellTexture(312411), sharedCD = 0, spellID = 312411 },
	["Dracthyr"] = { texture = C_Spell.GetSpellTexture(368970), sharedCD = 0, spellID = 368970 },
	["EarthenDwarf"] = { texture = C_Spell.GetSpellTexture(436344), sharedCD = 0, spellID = 436344 },
	["Harronir"] = { texture = C_Spell.GetSpellTexture(1237885), sharedCD = 0, spellID = 1237885 },
}

sArenaMixin.racialSpells = racialSpells
sArenaMixin.racialData = racialData

-- Helper function to get racial cooldown duration for a given race
function sArenaFrameMixin:GetRacialDuration()
	if not self.race or not racialData[self.race] then return nil end
	local spellID = racialData[self.race].spellID
	if not spellID then return nil end
	return racialSpells[spellID]
end


local function GetRemainingCD(frame)
    local startTime, duration = frame:GetCooldownTimes()
    if ( startTime == 0 ) then return 0 end

    local currTime = GetTime()

    return (startTime + duration) / 1000 - currTime
end

function sArenaFrameMixin:GetSharedCD()
    -- Human healers have Will to Survive Shared CD reduced from 90 to 60 sec.
    if self.race == "Human" and self.isHealer and self.Trinket.spellID == sArenaMixin.trinketID then
        return 60
    end
    return racialData[self.race] and racialData[self.race].sharedCD
end

function sArenaFrameMixin:FindRacial(spellID)
	local duration = racialSpells[spellID]
	local currTime = GetTime()

	-- Racial used
	if duration and not trinkets[spellID] then
		-- Check if we're using swapRacialTrinket and racial is displayed on trinket slot
		if self.updateRacialOnTrinketSlot then
			-- Apply racial cooldown to trinket slot instead (only if spellID exists)
			if self.Trinket.spellID and (self.Trinket.Texture:GetTexture() ~= sArenaMixin.noTrinketTexture) then
				self.Trinket.Cooldown:SetCooldown(currTime, duration)
			end
			self:UpdateTrinketIcon(false)
		else
			-- Normal racial cooldown handling
			if self.Racial.Texture:GetTexture() then
				self.Racial.Cooldown:SetCooldown(currTime, duration)
			end
		end

		-- Handle shared CD from racial -> trinket (only if not using swapped display)
		if not self.updateRacialOnTrinketSlot and self.Trinket.spellID == sArenaMixin.trinketID then
			local remainingCD = GetRemainingCD(self.Trinket.Cooldown)
			local sharedCD = self:GetSharedCD()

			if sharedCD and remainingCD < sharedCD then
				if self.Trinket.spellID and (self.Trinket.Texture:GetTexture() ~= sArenaMixin.noTrinketTexture) then
					self.Trinket.Cooldown:SetCooldown(currTime, sharedCD)
				end
				if self.parent.db.profile.colorTrinket then
					self.Trinket.Texture:SetColorTexture(1, 0, 0)
				else
					self.Trinket.Texture:SetDesaturated(self.parent.db.profile.desaturateTrinketCD)
				end
			end
		end

		-- Trinket used
	elseif self.Racial.Texture:GetTexture() then
		-- Handle shared CD from trinket -> racial (inverse case)
		local remainingCD = GetRemainingCD(self.Racial.Cooldown)
		local sharedCD = self:GetSharedCD()

		if sharedCD and remainingCD < sharedCD then
			self.Racial.Cooldown:SetCooldown(currTime, sharedCD)
		end
	end
end

function sArenaFrameMixin:UpdateRacial()
	self.race = nil
	self.race = select(2, UnitRace(self.unit))
	self.Racial.Texture:SetTexture(nil)

	if (self.race) then

		if (self.parent.db and (self.parent.db.profile.racialCategories[self.race] or (self.parent.db.profile.swapRacialTrinket or self.parent.db.profile.swapHumanTrinket) and self.race == "Human")) then
			-- Check if we should display racial on trinket slot instead
			local swapEnabled = self.parent.db.profile.swapRacialTrinket or self.parent.db.profile.swapHumanTrinket
			if swapEnabled then
				local trinketTexture = self.Trinket.Texture:GetTexture()

				-- If updateRacialOnTrinketSlot is false, it means we should restore racial to racial slot
				if not self.updateRacialOnTrinketSlot then
					self.Racial.Texture:SetTexture(racialData[self.race].texture)
				else
					if not trinketTexture or (trinketTexture == sArenaMixin.noTrinketTexture) or (racialData[self.race] and trinketTexture == racialData[self.race].texture) then
						self.Racial.Texture:SetTexture(nil)

						if self.parent.db.profile.colorTrinket then
							local start, duration = self.Racial.Cooldown:GetCooldownTimes()
							if duration and duration > 0 and (start > 0) then
								self.Trinket.Texture:SetColorTexture(1, 0, 0)
							else
								self.Trinket.Texture:SetColorTexture(0, 1, 0)
							end
						else
							self.Trinket.Texture:SetTexture(racialData[self.race].texture)
							self.Racial.Texture:SetTexture(nil)
						end

						local start, duration = self.Racial.Cooldown:GetCooldownTimes()
						if duration and duration > 0 and (start > 0) then
							if self.Trinket.spellID and (self.Trinket.Texture:GetTexture() ~= sArenaMixin.noTrinketTexture)then
								self.Trinket.Cooldown:SetCooldown(start / 1000.0, duration / 1000.0)
							end
						end
						self.Racial.Cooldown:Clear()
					else
						self.Racial.Texture:SetTexture(racialData[self.race].texture)
						if self.RacialMsq then
							self.RacialMsq:Show()
						end
					end
				end
			else
				self.Racial.Texture:SetTexture(racialData[self.race].texture)
			end
		end
	end
end

function sArenaFrameMixin:ResetRacial()
    self.race = nil
    self.Racial.Texture:SetTexture(nil)
    self.Racial.Cooldown:Clear()
    self.updateRacialOnTrinketSlot = nil
    self:UpdateRacial()
end