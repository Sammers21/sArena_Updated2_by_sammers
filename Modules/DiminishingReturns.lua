-- DiminishingReturns module - Midnight only uses built-in DR frames
-- Only the ResetDRCooldownTextColors function is needed for Midnight

function sArenaFrameMixin:ResetDRCooldownTextColors()
	if self.drFrames then
		for _, drFrame in ipairs(self.drFrames) do
			if drFrame and drFrame.Cooldown and drFrame.Cooldown.sArenaText then
				drFrame.Cooldown.sArenaText:SetTextColor(1, 1, 1, 1)
			end
		end
	end

	if self.fakeDRFrames then
		for _, fakeDRFrame in ipairs(self.fakeDRFrames) do
			if fakeDRFrame and fakeDRFrame.Cooldown and fakeDRFrame.Cooldown.sArenaText then
				fakeDRFrame.Cooldown.sArenaText:SetTextColor(1, 1, 1, 1)
			end
		end
	end
end
