local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local IsAddOnLoaded = _G.IsAddOnLoaded
local pairs = _G.pairs
local CreateFrame = _G.CreateFrame

--turns out elvui includes shadows! Ty azilroka
function ElvUI_EltreumUI:Shadows()
	--Very simple shadows from elvui, SLE likely does it way better
	if E.db.ElvUI_EltreumUI.skins.shadows then
------------------------------------------------------------------------------------------------------blizzard frames
		local blizzardframes = {
			_G.GameMenuFrame,
			_G.DropDownList1,
			_G.DropDownList2,
			_G.GameTooltipStatusBar.backdrop,
			_G.GameTooltip,
			_G.ReadyCheckFrame,
			_G.StackSplitFrame,
			_G.ChatConfigFrame,
			_G.ShoppingTooltip1,
			_G.ShoppingTooltip2,
			_G.VideoOptionsFrame,
			_G.InterfaceOptionsFrame,
		}
		for _, frame in pairs(blizzardframes) do
			if frame and not frame.shadow then
				frame:CreateShadow()
			end
		end

		if not IsAddOnLoaded("Blizzard_MacroUI") then
			LoadAddOn("Blizzard_MacroUI")
		end
		local MacroFrame = _G.MacroFrame
		MacroFrame:HookScript("OnShow", function()
			if ElvUI_EltreumUI.Retail or ElvUI_EltreumUI.TBC then
				if not _G.MacroFrame.shadow then
					_G.MacroFrame:CreateShadow()
				end
			elseif ElvUI_EltreumUI.Classic then
				if not _G.MacroFrame.backdrop.shadow then
					_G.MacroFrame.backdrop:CreateShadow()
				end
			end
		end)

		if not IsAddOnLoaded("Blizzard_BindingUI") then
			LoadAddOn("Blizzard_BindingUI")
		end
		local KeyBindingFrame = _G.KeyBindingFrame
		KeyBindingFrame:HookScript("OnShow", function()
			if not _G.KeyBindingFrame.shadow then
				_G.KeyBindingFrame:CreateShadow()
			end
		end)

		if not IsAddOnLoaded("Blizzard_TalentUI") then
			LoadAddOn("Blizzard_TalentUI")
		end

		local PlayerTalentFrame = _G.PlayerTalentFrame
		PlayerTalentFrame:HookScript("OnShow", function()
			if ElvUI_EltreumUI.Retail then
				if not _G.PlayerTalentFrame.shadow then
					_G.PlayerTalentFrame:CreateShadow()
				end
			elseif ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
				if _G.PlayerTalentFrame.backdrop then
					if not _G.PlayerTalentFrame.backdrop.shadow then
						_G.PlayerTalentFrame.backdrop:CreateShadow()
					end
				end
			end
		end)

		local MinimapShadow = CreateFrame("Frame", "EltruismMiniMapShadowFrame")
		local Minimapsizex, Minimapsizey = _G['Minimap']:GetSize()
		MinimapShadow:SetSize(Minimapsizex, Minimapsizey)
		MinimapShadow:SetParent(_G['Minimap'])
		if not (self.minimapIsSkinned) then
			MinimapShadow.shadow = MinimapShadow:CreateShadow(nil, true)
			MinimapShadow:SetPoint("TOPRIGHT", _G['Minimap'] ,"TOPRIGHT", 0, 0)
			MinimapShadow:SetPoint("BOTTOMLEFT", _G['MinimapPanel'] ,"BOTTOMLEFT", 0, 0)
			MinimapShadow:Show()
			self.minimapIsSkinned = true
		end

------------------------------------------------------------------------------------------------------version specific
		if ElvUI_EltreumUI.Retail then

			--retail frames
			local retailframes = {
				_G.QueueStatusFrame,
				_G.SplashFrame,
				_G.LFDRoleCheckPopup,
				_G.LFDReadyCheckPopup,
				_G.LFGListApplicationDialog,
				_G.PaperDollFrame,
				_G.GroupFinderFrame,
				_G.ZoneAbilityFrame,
				_G.ReputationFrame,
				_G.TokenFrame,
				_G.SpellBookFrame,
				_G.FriendsFrame,
				_G.MerchantFrame,
				_G.MailFrame,
				_G.HelpFrame.backdrop,
				_G.WorldMapFrame.backdrop,
			}
			for _, frame in pairs(retailframes) do
				if frame and not frame.shadow then
					frame:CreateShadow()
				end
			end

			if E.private.actionbar.enable then
				if not _G.BossButton.shadow then
					_G.BossButton:CreateShadow()
				end
			end

			if not IsAddOnLoaded("Blizzard_Calendar") then
				LoadAddOn("Blizzard_Calendar")
			end
			local CalendarFrame = _G.CalendarFrame
			CalendarFrame:HookScript("OnShow", function()
				if not _G.CalendarFrame.shadow then
					_G.CalendarFrame:CreateShadow()
				end
			end)

			if not IsAddOnLoaded("Blizzard_Communities") then
				LoadAddOn("Blizzard_Communities")
			end
			local CommunitiesFrame = _G.CommunitiesFrame
			CommunitiesFrame:HookScript("OnShow", function()
				if not _G.CommunitiesFrame.shadow then
					_G.CommunitiesFrame:CreateShadow()
				end
			end)

			if not IsAddOnLoaded("Blizzard_AchievementUI") then
				LoadAddOn("Blizzard_AchievementUI")
			end
			local AchievementFrame = _G.AchievementFrame
			AchievementFrame:HookScript("OnShow", function()
				if _G.AchievementFrame.backdrop then
					if not _G.AchievementFrame.backdrop.shadow then
						_G.AchievementFrame.backdrop:CreateShadow()
					end
				end
			end)

			if not IsAddOnLoaded("Blizzard_GarrisonUI") then
				LoadAddOn("Blizzard_GarrisonUI")
			end
			local CovenantMissionFrame = _G.CovenantMissionFrame
			CovenantMissionFrame:HookScript("OnShow", function()
				if not _G.CovenantMissionFrame.shadow then
					_G.CovenantMissionFrame:CreateShadow()
				end
			end)

			local GarrisonLandingPage = _G.GarrisonLandingPage
			GarrisonLandingPage:HookScript("OnShow", function()
				if not _G.GarrisonLandingPage.shadow then
					_G.GarrisonLandingPage:CreateShadow()
				end
			end)

			if not IsAddOnLoaded("Blizzard_Collections") then
				LoadAddOn("Blizzard_Collections")
			end
			local CollectionsJournal = _G.CollectionsJournal
			CollectionsJournal:HookScript("OnShow", function()
				if not _G.CollectionsJournal.shadow then
					_G.CollectionsJournal:CreateShadow()
				end
			end)
			local WardrobeFrame = _G.WardrobeFrame
			WardrobeFrame:HookScript("OnShow", function()
				if not _G.WardrobeFrame.shadow then
					_G.WardrobeFrame:CreateShadow()
				end
			end)
			if not IsAddOnLoaded("Blizzard_PVPUI") then
				LoadAddOn("Blizzard_PVPUI")
			end
			local PVPUIFrame = _G.PVPUIFrame
			PVPUIFrame:HookScript("OnShow", function()
				if not _G.PVPUIFrame.shadow then
					_G.PVPUIFrame:CreateShadow()
				end
			end)

			if not IsAddOnLoaded("Blizzard_EncounterJournal") then
				LoadAddOn("Blizzard_EncounterJournal")
			end
			if _G.EncounterJournal then
				if not _G.EncounterJournal.shadow then
					_G.EncounterJournal:CreateShadow()
				end
			end
		elseif ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
			--tbc/classic frames
			local classicframes = {
				_G.HelpFrame,
				_G.QuestLogFrame.backdrop,
				_G.CharacterFrame.backdrop,
				_G.SpellBookFrame.backdrop,
				_G.FriendsFrame.backdrop,
				_G.MailFrame.backdrop,
				_G.MerchantFrame.backdrop,
				_G.WorldMapFrame,
			}
			for _, frame in pairs(classicframes) do
				if frame and not frame.shadow then
					frame:CreateShadow()
				end
			end

			if ElvUI_EltreumUI.TBC then --tbc has this frame, classic doesnt
				if not _G.LFGParentFrame.backdrop.shadow then
					_G.LFGParentFrame.backdrop:CreateShadow()
				end
			end
		end
------------------------------------------------------------------------------------------------------elvui frames
		local GeneralElvUIFrames = {
			_G['ElvLootFrame'],
			_G['ElvUI_ReputationBar'],
			_G['ElvUI_ExperienceBar'],
			_G['ElvUI_ThreatBar'],
		}
		for _, frame in pairs(GeneralElvUIFrames) do
			if frame and not frame.shadow then
				frame:CreateShadow()
			end
		end

		--stances
		for i = 1, 12 do
			local button = _G['ElvUI_StanceBarButton'..i]
			if not button then
				break
			else
				if not button.shadow then
					button.shadow = button:CreateShadow(nil, true)
					button.shadow:SetParent(button)
					button.shadow.size = 2
				end
			end
		end

		--datatexts
		local DT = E:GetModule('DataTexts')
		if DT.tooltip then
			if not DT.tooltip.shadow then
				DT.tooltip:CreateShadow()
			end
		end

		--action bars
		if E.private.actionbar.enable then
			for i = 1, 10 do
				local actionbars = {_G['ElvUI_Bar'..i]}
				for _, frame in pairs(actionbars) do
					for k = 1, 12 do
						local slots = {_G['ElvUI_Bar'..i..'Button'..k]}
						for _, button in pairs(slots) do
							if not button.shadow then
								button.shadow = button:CreateShadow(nil, true)
								button.shadow:SetParent(button)
								button.shadow.size = 2
							end
						end
					end
				end
			end

			for i = 1, 12 do
				local button = _G['PetActionButton'..i]
				if not button then
					break
				else
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end
		end

		--unitframes
		if E.private.unitframe.enable then
			if ElvUI_EltreumUI.Retail or ElvUI_EltreumUI.TBC then
				if not _G['ElvUF_Focus_HealthBar'].shadow then
					_G['ElvUF_Focus_HealthBar']:CreateShadow()
				end
				if not _G['ElvUF_Focus_HealthBar'].shadow then
					_G['ElvUF_Focus_PowerBar']:CreateShadow()
				end
			end

			local elvuiframes = {
				_G['ElvUF_TargetTarget_HealthBar'],
				_G['ElvUF_TargetTarget_PowerBar'],
				_G['ElvUF_Target_HealthBar'],
				_G['ElvUF_Target_PowerBar'],
				_G['ElvUF_Pet'],
				_G['ElvUF_Player_HealthBar'],
				_G['ElvUF_Player_PowerBar'],
				_G['ElvUF_Player_Stagger'],
			}
			for _, frame in pairs(elvuiframes) do
				if frame and not frame.shadow then
					frame:CreateShadow()
				end
			end

			for i = 1, 5 do
				local partymembers = {_G['ElvUF_PartyGroup1UnitButton'..i]}
				for _, frame in pairs(partymembers) do
					for _, button in pairs(partymembers) do
						if not button.shadow then
							button.shadow = button:CreateShadow(nil, true)
							button.shadow:SetParent(button)
							button.shadow.size = 2
						end
					end
				end
			end

			for i = 1, 5 do
				local bossmembers = {_G['ElvUF_Boss'..i]}
				for _, frame in pairs(bossmembers) do
					for _, button in pairs(bossmembers) do
						if not button.shadow then
							button.shadow = button:CreateShadow(nil, true)
							button.shadow:SetParent(button)
							button.shadow.size = 2
						end
					end
				end
			end

			--classpower
			for i = 1, 10 do
				local button = _G['ElvUF_PlayerClassIconButton'..i]
				if not button then
					break
				else
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end

			--runes
			for i = 1, 10 do
				local button = _G['ElvUF_PlayerRuneButton'..i]
				if not button then
					break
				else
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end

			--AdditionalPowerBar
			for i = 1, 10 do
				local button = _G['ElvUF_Player_AdditionalPowerBar'..i]
				if not button then
					break
				else
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end

			local PlayerCastbar = CreateFrame("Frame", "EltruismPlayerCastBarShadowFrame")
			local isattached = E.db.unitframe.units.player.castbar.iconAttached
			local PlayerCastbarx
			local PlayerCastbary
			if isattached == false then
				PlayerCastbarx = (E.db.unitframe.units.player.castbar.width + E.db.unitframe.units.player.castbar.iconSize - 5)
				PlayerCastbary = (E.db.unitframe.units.player.castbar.height - 3)
			elseif isattached == true then
				PlayerCastbarx = (E.db.unitframe.units.player.castbar.width - 5)
				PlayerCastbary = (E.db.unitframe.units.player.castbar.height - 3)
			end
			PlayerCastbar:SetSize(PlayerCastbarx, PlayerCastbary)
			PlayerCastbar:SetParent(_G.ElvUF_Player_CastBar)
			if not (self.PlayerCastBarIsSkinned) then
				PlayerCastbar.shadow = PlayerCastbar:CreateShadow(nil, true)
				PlayerCastbar:SetPoint("CENTER", _G['ElvUF_Player_CastBar'], "CENTER", -(PlayerCastbary/2), 0)
				PlayerCastbar:Show()
				self.PlayerCastBarIsSkinned = true
			end

			if not E.db.unitframe.units.target.castbar.overlayOnFrame == "Power" then
				local TargetCastbar = CreateFrame("Frame", "EltruismTargetCastBarShadowFrame")
				local TargetCastbarx = E.db.unitframe.units.target.castbar.width + E.db.unitframe.units.target.castbar.iconSize -2
				local TargetCastbary = E.db.unitframe.units.target.castbar.height - 1
				TargetCastbar:SetSize(TargetCastbarx, TargetCastbary)
				TargetCastbar:SetParent(_G.ElvUF_Target_CastBar)
				if not (self.TargetCastBarIsSkinned) then
					TargetCastbar.shadow = TargetCastbar:CreateShadow(nil, true)
					TargetCastbar:SetPoint("CENTER", _G.ElvUF_Target_CastBar, "CENTER", -14, 0)
					self.TargetCastBarIsSkinned = true
				end
			end
		end

		--bags
		if E.private.bags.enable then
			if not _G.ElvUI_ContainerFrame.shadow then
				_G['ElvUI_ContainerFrame']:CreateShadow()
			end
			if not _G.ElvUI_BankContainerFrame.shadow then
				_G['ElvUI_BankContainerFrame']:CreateShadow()
			end
		end

		--elvui popup
		for i = 1, 5 do
			local ElvUI_StaticPopups = {_G['ElvUI_StaticPopup'..i]}
			for _, frame in pairs(ElvUI_StaticPopups) do
				for _, button in pairs(ElvUI_StaticPopups) do
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end
		end

		local RightChatShadow = CreateFrame("Frame", "EltruismRightChatShadowFrame")
		if E.db["chat"]["panelBackdrop"] == "RIGHT" then
			return
		else
			local rightsizex, rightsizey = _G['RightChatMover']:GetSize()
			RightChatShadow:SetSize(rightsizex, rightsizey)
			RightChatShadow:SetParent(_G['RightChatPanel'])
			if not (self.RightChatIsSkinned) then
				RightChatShadow.shadow = RightChatShadow:CreateShadow(nil, true)
				RightChatShadow:SetPoint("TOPRIGHT", _G['RightChatPanel'] ,"TOPRIGHT", 0, 0)
				RightChatShadow:SetPoint("BOTTOMLEFT", _G['RightChatDataPanel'] ,"BOTTOMLEFT", 0, 0)
				RightChatShadow:Show()
				self.RightChatIsSkinned = true
			end
		end

		local LeftChatShadow = CreateFrame("Frame", "EltruismLeftChatShadowFrame")
		if E.db["chat"]["panelBackdrop"] == "LEFT" then
			return
		else
			local leftsizex, leftsizey = _G['LeftChatMover']:GetSize()
			LeftChatShadow:SetSize(leftsizex, leftsizey)
			LeftChatShadow:SetParent(_G['LeftChatPanel'])
			if not (self.LeftChatIsSkinned) then
				LeftChatShadow.shadow = LeftChatShadow:CreateShadow(nil, true)
				LeftChatShadow:SetPoint("TOPLEFT", _G['LeftChatPanel'] ,"TOPLEFT", 0, 0)
				LeftChatShadow:SetPoint("BOTTOMRIGHT", _G['LeftChatDataPanel'] ,"BOTTOMRIGHT", 0, 0)
				LeftChatShadow:Show()
				self.LeftChatIsSkinned = true
			end
		end

		if E.db["chat"]["panelBackdrop"] == "HIDEBOTH" then
			LeftChatShadow:Hide()
			RightChatShadow:Hide()
		end
------------------------------------------------------------------------------------------------------end of elvui frames
		if IsAddOnLoaded('ProjectAzilroka') then
			if not _G.stAMFrame.shadow then
				_G.stAMFrame:CreateShadow()
			end

			if not _G.stAMProfileMenu.shadow then
				_G.stAMProfileMenu:CreateShadow()
			end
		end
	end
end

function ElvUI_EltreumUI:AuraShadows()
	if E.db.ElvUI_EltreumUI.skins.shadows then
		--buffs
		for i = 1, 20 do
			local buffaura = {_G['ElvUIPlayerBuffsAuraButton'..i]}
			for _, frame in pairs(buffaura) do
				for _, button in pairs(buffaura) do
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end
		end

		--debuffs
		for i = 1, 20 do
			local debuffaura = {_G['ElvUIPlayerDebuffsAuraButton'..i]}
			for _, frame in pairs(debuffaura) do
				for _, button in pairs(debuffaura) do
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end
		end

		--weapon enchant thing
		for i = 1, 20 do
			local weaponenchant = {_G['ElvUIPlayerBuffsTempEnchant'..i]}
			for _, frame in pairs(weaponenchant) do
				for _, button in pairs(weaponenchant) do
					if not button.shadow then
						button.shadow = button:CreateShadow(nil, true)
						button.shadow:SetParent(button)
						button.shadow.size = 2
					end
				end
			end
		end
	end
end
