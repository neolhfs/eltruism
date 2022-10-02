local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local hooksecurefunc = _G.hooksecurefunc
local TT = E:GetModule('Tooltip')

--gradient tooltip health
local function SetTooltipGradient(unit)
	if not unit then return end
	if not E.private.tooltip.enable then return end
	local _, classunit = UnitClass(unit)
	local reaction = UnitReaction(unit, "player")
	local _, classunit = UnitClass(unit)
	local reaction = UnitReaction(unit, "player")
	if _G.GameTooltip:IsForbidden() then return end
	if UnitIsPlayer(unit) then
		if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
			_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom(classunit, false, false))
		else
			_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors(classunit, false, false))
		end
	else
		if UnitIsTapDenied(unit) and not UnitPlayerControlled(unit) then
			if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
				_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("TAPPED", false, false))
			else
				_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("TAPPED", false, false))
			end
		else
			if reaction and reaction >= 5 then
				if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCFRIENDLY", false, false))
				else
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCFRIENDLY", false, false))
				end
			elseif reaction and reaction == 4 then
				if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCNEUTRAL", false, false))
				else
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCNEUTRAL", false, false))
				end
			elseif reaction and reaction == 3 then
				if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCUNFRIENDLY", false, false))
				else
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCUNFRIENDLY", false, false))
				end
			elseif reaction and reaction <= 2 then
				if E.db.ElvUI_EltreumUI.unitframes.gradientmode.customcolor then
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColorsCustom("NPCHOSTILE", false, false))
				else
					_G.GameTooltipStatusBar:GetStatusBarTexture():SetGradient(E.db.ElvUI_EltreumUI.unitframes.gradientmode.orientation, ElvUI_EltreumUI:GradientColors("NPCHOSTILE", false, false))
				end
			end
		end
	end
end

--skin tooltip
function ElvUI_EltreumUI:Tooltip(tt, unit)
	if tt and tt:IsForbidden() then return end

	--gradient
	if E.db.ElvUI_EltreumUI.unitframes.UFmodifications and E.db.ElvUI_EltreumUI.unitframes.gradientmode.enable and E.private.tooltip.enable then
		local _, fixunit = _G.GameTooltip:GetUnit()
		SetTooltipGradient(fixunit)
		if not self.isHooked then
			_G.GameTooltipStatusBar:HookScript("OnShow", function()
				local _,unittp = _G.GameTooltip:GetUnit()
				if unittp then
					SetTooltipGradient(unittp)
				end
			end)
			self.isHooked = true
		end
	end

	--ilvl tooltip
	if E.db.ElvUI_EltreumUI.skins.ilvltooltip then
		if not E.Retail and not self.ilvlHook then
			local _,itemLink,itemLevel, classID
			GameTooltip:HookScript("OnTooltipSetItem", function(tooltip)
				_, itemLink = tooltip:GetItem()
				if (itemLink ~= nil) then
					_, _, _, itemLevel, _, _, _, _, _, _, _, classID = GetItemInfo(itemLink)
					if itemLevel and (classID == 2 or classID == 4)then
						tooltip:AddLine(string.format(ITEM_LEVEL, itemLevel))
					end
				end
			end)
			print("test12313123123")
			self.ilvlHook = true
		end
	end

end
hooksecurefunc(TT, 'AddTargetInfo', ElvUI_EltreumUI.Tooltip)
hooksecurefunc(TT, 'GameTooltip_OnTooltipSetUnit', ElvUI_EltreumUI.Tooltip)
