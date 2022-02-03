local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local CreateFrame = _G.CreateFrame
local print = _G.print
local C_CVar = _G.C_CVar
local SetCVar = _G.SetCVar
local IsAddOnLoaded = _G.IsAddOnLoaded

-- Eltreum UI print
function ElvUI_EltreumUI:Print(msg)
	print('|cff82B4ffEltruism|r: '..msg)
end

-- Private DB
function ElvUI_EltreumUI:SetupPrivate()
	-- ElvUI Private DB
	E.private["general"]["chatBubbleFont"] = "Kimberley"
	E.private["general"]["chatBubbleFontOutline"] = "OUTLINE"
	E.private["general"]["chatBubbleFontSize"] = 10
	E.private["general"]["chatBubbleName"] = true
	E.private["general"]["dmgfont"] = "Kimberley"
	E.private["general"]["glossTex"] = "Eltreum-Blank"
	E.private["general"]["namefont"] = "Kimberley"
	E.private["general"]["normTex"] = "Eltreum-Blank"
	E.private["theme"] = "class"
	E.private["skins"]["parchmentRemoverEnable"] = true
	if ElvUI_EltreumUI.Retail then
		E.private["install_complete"] = "12.38"
		E.private["general"]["totemBar"] = true
		E.private["general"]["nameplateFont"] = "Kimberley"
		E.private["general"]["nameplateFontSize"] = 10
		E.private["general"]["nameplateLargeFont"] = "Kimberley"
		E.private["general"]["nameplateLargeFontSize"] = 10
	elseif ElvUI_EltreumUI.TBC then
		E.private["install_complete"] = "2.06"
		E.private["general"]["totemBar"] = true
	elseif ElvUI_EltreumUI.Classic then
		E.private["install_complete"] = "1.42"
	end
end

-- Global DB
function ElvUI_EltreumUI:SetupGlobal()
	-- ElvUI Global DB
	if ElvUI_EltreumUI.Retail then
		E.global["general"]["commandBarSetting"] = "ENABLED_RESIZEPARENT"
		E.global["general"]["smallerWorldMap"] = false
		E.global["general"]["smallerWorldMapScale"] = 1
		E.global["general"]["mapAlphaWhenMoving"] = 0.35
	end
	if ElvUI_EltreumUI.Classic then
		E.global["general"]["smallerWorldMapScale"] = 0.5
		E.global["general"]["mapAlphaWhenMoving"] = 0.5
		E.global["general"]["smallerWorldMap"] = true
	end
	if ElvUI_EltreumUI.TBC then
		E.global["general"]["smallerWorldMapScale"] = 0.5
		E.global["general"]["mapAlphaWhenMoving"] = 0.5
		E.global["general"]["smallerWorldMap"] = true
	end
	E.global["general"]["WorldMapCoordinates"]["position"] = "TOPLEFT"
	E.global["general"]["fadeMapDuration"] = 0.1
		-- Custom DataText
	E.global["datatexts"]["settings"]["Experience"]["textFormat"] = "PERCENT"
	E.global["datatexts"]["settings"]["Friends"]["hideAFK"] = true
	E.global["datatexts"]["settings"]["Friends"]["hideApp"] = true
	E.global["datatexts"]["settings"]["Gold"]["goldCoins"] = false
	if ElvUI_EltreumUI.Retail then
		E.global["datatexts"]["settings"]["MovementSpeed"]["NoLabel"] = true
	end
	E.global["datatexts"]["settings"]["Time"]["time24"] = true
end

--Resolution check for font outline
function ElvUI_EltreumUI:ResolutionOutline()
	if C_CVar.GetCVar('gxFullscreenResolution') == "3140x2160" or C_CVar.GetCVar('gxWindowedResolution') == "3140x2160" then
		ElvUI_EltreumUI:Print(L["4K resolution detected, setting fonts to default mode."])
	elseif C_CVar.GetCVar('gxFullscreenResolution') == '2560x1440' or C_CVar.GetCVar('gxWindowedResolution') == "2560x1440" then
		ElvUI_EltreumUI:SetupFontsOutlineOutline()
		ElvUI_EltreumUI:Print(L["1440p resolution detected, setting fonts to outline mode."])
	elseif C_CVar.GetCVar('gxFullscreenResolution') == "1920x1080" or C_CVar.GetCVar('gxWindowedResolution') == "1920x1080" then
		ElvUI_EltreumUI:SetupFontsOutlineOutline()
		ElvUI_EltreumUI:Print(L["1080p resolution detected, setting fonts to outline mode."])
	elseif C_CVar.GetCVar('gxFullscreenResolution') == "auto" or C_CVar.GetCVar('gxWindowedResolution') == "auto" then
		ElvUI_EltreumUI:SetupFontsOutlineOutline()
		ElvUI_EltreumUI:Print(L["Fonts were set to Outline due to your resolution."])
	else
		ElvUI_EltreumUI:SetupFontsOutlineOutline()
		ElvUI_EltreumUI:Print(L["Fonts were set to Outline due to your resolution."])
	end
end

--turn and off blizzard combat text
function ElvUI_EltreumUI:BlizzCombatText()
	if IsAddOnLoaded('ElvUI_FCT') or IsAddOnLoaded('NameplateSCT') then
		if E.db.ElvUI_EltreumUI.otherstuff.blizzcombattext then
			if ElvUI_EltreumUI.Retail then
				SetCVar("floatingCombatTextCombatDamage", 0)
			elseif ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
				SetCVar("floatingCombatTextCombatDamage", 0)
			end
		end
	end
	if E.db.ElvUI_EltreumUI.otherstuff.blizzcombatmana then
		SetCVar("floatingCombatTextEnergyGains", 1)
		SetCVar("enableFloatingCombatText", 1) ----this is damage taken without this the floating resource will not work
	end
end

-- Ghost frame for Automatic Weakauras Positioning
local EltreumWAAnchor = CreateFrame("Frame", "EltruismWA", E.UIParent)
local EltruismWAConsumablesAnchor = CreateFrame("Frame", "EltruismConsumables", E.UIParent)
function ElvUI_EltreumUI:WAAnchor()
	if E.private.unitframe.enable then
		--Anchor for general weakauras, like those that replace actionbars
		EltreumWAAnchor:SetParent("ElvUF_Player")
		EltreumWAAnchor:SetFrameStrata("BACKGROUND")
		--position the anchor around the place where the action bars would be
		EltreumWAAnchor:Point("CENTER", E.UIParent, "CENTER", 0, -380)
		EltreumWAAnchor:Size(250, 70)
		--E:CreateMover(parent, name, textString, overlay, snapoffset, postdrag, types, shouldDisable, configString, ignoreSizeChanged)
		E:CreateMover(EltreumWAAnchor, "MoverEltruismWA", "EltruismWA", nil, nil, nil, "ALL,SOLO")

		--consumable weakauras, usually placed near player unitframe
		EltruismWAConsumablesAnchor:SetParent("ElvUF_Player")
		EltruismWAConsumablesAnchor:SetFrameStrata("BACKGROUND")
		--postion the anchor right below the player unitframe
		EltruismWAConsumablesAnchor:Point("LEFT", _G["ElvUF_Player"], 0, -75)
		EltruismWAConsumablesAnchor:Size(270, 30)
		E:CreateMover(EltruismWAConsumablesAnchor, "MoverEltruismWAConsumables", L["EltruismConsumables"], nil, nil, nil, "ALL,SOLO")
	end
end

-- UI Scale
function ElvUI_EltreumUI:SetupScale()
	E.global["general"]["UIScale"] = 0.7
	if (not IsAddOnLoaded("ElvUI_SLE")) then
		SetCVar('uiScale', 0.7)
	end
end

function ElvUI_EltreumUI:AutoScale()
	local a = E:PixelBestSize()
	SetCVar('uiScale', a)
	E.global["general"]["UIScale"] = a
	ElvUI_EltreumUI:Print(L["A scale of "..a.." has automatically been set."])
end

--World text Scale
function ElvUI_EltreumUI:WorldTextScale(value)
	E.db.ElvUI_EltreumUI.otherstuff.worldtextscale = value
	SetCVar('WorldTextScale', value)
end

-- CVars General
function ElvUI_EltreumUI:SetupCVars()
	-- ElvUI CVars
	SetCVar('removeChatDelay', 1)
	SetCVar('cameraDistanceMaxZoomFactor', 2.6)
	SetCVar('autoLootDefault', 1)
	SetCVar('autoQuestWatch', 1)
	SetCVar('UnitNameEnemyGuardianName', 0)
	SetCVar('UnitNameEnemyMinionName', 0)
	SetCVar('UnitNameEnemyPetName', 0)
	SetCVar('UnitNameFriendlyPetName', 0)
	SetCVar('UnitNameEnemyPlayerName', 1)
	SetCVar('UnitNameEnemyTotemName', 1)
	SetCVar('UnitNameNPC', 1)
	SetCVar("ShowClassColorInFriendlyNameplate", 1)
	SetCVar('statusTextDisplay', 'BOTH')
	SetCVar('screenshotQuality', 10)
	SetCVar('chatMouseScroll', 1)
	SetCVar('wholeChatWindowClickable', 0)
	SetCVar('showTutorials', 0)
	SetCVar('UberTooltips', 1)
	SetCVar('alwaysShowActionBars', 1)
	SetCVar('lockActionBars', 1)
	SetCVar('spamFilter', 0)
	SetCVar('Sound_EnableErrorSpeech', 1)

	--this makes it so that the non nameplate names are hidden
	if ElvUI_EltreumUI.Retail then
		SetCVar('UnitNameHostleNPC', 0) --Display names for hostile NPCs
		SetCVar('UnitNameInteractiveNPC', 0) --Display names for interactive NPCs
		SetCVar('UnitNameNPC', 0)
		--[[
		SetCVar('findYourselfAnywhere', 0) --"Always Highlight your character"
		SetCVar('findYourselfAnywhereOnlyInCombat', 0) --"Highlight your character only when in combat"
		SetCVar('findYourselfInBG', 0) --"Always Highlight your character in Battlegrounds"
		SetCVar('findYourselfInBGOnlyInCombat', 9) --"Highlight your character in Battlegrounds only when in combat"
		SetCVar('findYourselfInRaid', 0) --"Always Highlight your character in Raids"
		SetCVar('findYourselfInRaidOnlyInCombat', 0) --"Highlight your character in Raids only when in combat"
		SetCVar('findYourselfMode', 1) --"Highlight you character. 0 = circle, 1 = circle & outline"
		]]
	end

	-- fast loot
	SetCVar("autoLootRate", 1)

	--Chat CVars
	SetCVar('chatStyle', 'classic')
	SetCVar('whisperMode', 'inline')
	SetCVar('colorChatNamesByClass', 1)
	SetCVar('chatClassColorOverride', 0)

	_G.InterfaceOptionsActionBarsPanelPickupActionKeyDropDown:SetValue('SHIFT')
	_G.InterfaceOptionsActionBarsPanelPickupActionKeyDropDown:RefreshValue()

	if ElvUI_EltreumUI.Retail then
		SetCVar('showNPETutorials', 0)
		SetCVar('threatWarning', 3)
		SetCVar('showQuestTrackingTooltips', 1)
		SetCVar('fstack_preferParentKeys', 0) --Add back the frame names via fstack!
	elseif ElvUI_EltreumUI.TBC or ElvUI_EltreumUI.Classic then
		SetCVar("lootUnderMouse", 1)
		SetCVar("chatBubbles", 1)
		SetCVar("chatBubblesParty", 1)
	end
	ElvUI_EltreumUI:Print(L["General CVars have been set."])
end

-- CVars NamePlates
function ElvUI_EltreumUI:NameplateCVars()
	SetCVar('nameplateOtherBottomInset', 0.02)
	SetCVar('nameplateOtherTopInset', 0.1)
	SetCVar('nameplateTargetRadialPosition', 1)
	SetCVar('nameplateLargerScale', 1.2)
	SetCVar('nameplateMinScale', 1)
	SetCVar('nameplateMinAlpha',1)
	SetCVar('nameplateMaxDistance', 60)
	SetCVar('nameplateMotion', 1)
	SetCVar('nameplateOccludedAlphaMult', 0)
	SetCVar("nameplateOverlapH", 0.8)
	SetCVar("nameplateOverlapV", 1.1)
	SetCVar('nameplateSelectedScale', 1)
	SetCVar('nameplateSelfAlpha', 1)
	SetCVar('nameplateShowFriendlyMinions', 0)
	SetCVar('nameplateTargetBehindMaxDistance', 40)
	SetCVar('nameplateShowEnemies', 1)
	SetCVar("nameplateShowFriends", 1)
	ElvUI_EltreumUI:Print(L["NamePlate CVars have been set."])
end

--set some CVars when entering world
function ElvUI_EltreumUI:EnteringWorldCVars()
	--SetCVars at start
	SetCVar('nameplateOtherBottomInset', E.db.ElvUI_EltreumUI.cvars.nameplateOtherBottomInset)
	SetCVar('nameplateOtherTopInset', E.db.ElvUI_EltreumUI.cvars.nameplateOtherTopInset)
	SetCVar('cameraDistanceMaxZoomFactor', E.db.ElvUI_EltreumUI.cvars.cameraDistanceMaxZoomFactor)
	SetCVar('nameplateTargetRadialPosition', E.db.ElvUI_EltreumUI.cvars.nameplateTargetRadialPosition)
	--ElvUI_EltreumUI:Print(L["Custom Nameplate CVars were set."])
	if ElvUI_EltreumUI.Retail then
		SetCVar('showInGameNavigation', E.db.ElvUI_EltreumUI.cvars.showInGameNavigation)
	elseif ElvUI_EltreumUI.Classic or ElvUI_EltreumUI.TBC then
		SetCVar('clampTargetNameplateToScreen', E.db.ElvUI_EltreumUI.cvars.clampTargetNameplateToScreen)
	end
end

function ElvUI_EltreumUI:AlternativeGroupsDPS()
	if ElvDB.profileKeys[E.mynameRealm] == "Eltreum DPS/Tank" then
		if not E.db.movers then E.db.movers = {} end
		E.db["movers"]["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,228,-322"
		E.db["movers"]["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,47,-337"
		E.db["movers"]["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,229,-327"
		E.db["unitframe"]["units"]["raid"]["groupSpacing"] = 7
		E.db["unitframe"]["units"]["raid"]["groupsPerRowCol"] = 2
		E.db["unitframe"]["units"]["raid"]["horizontalSpacing"] = 25
		if ElvUI_EltreumUI.TBC then
			E.db["unitframe"]["units"]["raid"]["numGroups"] = 5
		else
			E.db["unitframe"]["units"]["raid"]["numGroups"] = 4
		end
		E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = 0
		E.db["unitframe"]["units"]["raid"]["width"] = 120
		E.db["unitframe"]["units"]["raid40"]["groupSpacing"] = 7
		E.db["unitframe"]["units"]["raid40"]["groupsPerRowCol"] = 2
		E.db["unitframe"]["units"]["raid40"]["growthDirection"] = "DOWN_RIGHT"
		E.db["unitframe"]["units"]["raid40"]["height"] = 30
		E.db["unitframe"]["units"]["raid40"]["horizontalSpacing"] = 2
		E.db["unitframe"]["units"]["raid40"]["width"] = 120
		ElvUI_EltreumUI:Print('Alternative Group, Raid and Raid40 layout has been set')
		--ReloadUI()
	else
		ElvUI_EltreumUI:Print(L["The alternative layout was made for the Eltruism DPS/Tank profile, please switch to it to use it"])
	end
end

function ElvUI_EltreumUI:OriginalGroupsDPS()
	if ElvDB.profileKeys[E.mynameRealm] == "Eltreum DPS/Tank" then
		if not E.db.movers then E.db.movers = {} end
		E.db["movers"]["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-247"
		E.db["movers"]["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,1"
		E.db["movers"]["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,1"
		E.db["unitframe"]["units"]["raid"]["groupSpacing"] = 7
		E.db["unitframe"]["units"]["raid"]["groupsPerRowCol"] = 4
		E.db["unitframe"]["units"]["raid"]["horizontalSpacing"] = 0
		if ElvUI_EltreumUI.TBC then
			E.db["unitframe"]["units"]["raid"]["numGroups"] = 5
		else
			E.db["unitframe"]["units"]["raid"]["numGroups"] = 4
		end
		E.db["unitframe"]["units"]["raid"]["verticalSpacing"] = 0
		E.db["unitframe"]["units"]["raid"]["width"] = 120
		E.db["unitframe"]["units"]["raid40"]["groupSpacing"] = 7
		E.db["unitframe"]["units"]["raid40"]["groupsPerRowCol"] = 4
		E.db["unitframe"]["units"]["raid40"]["growthDirection"] = "DOWN_RIGHT"
		E.db["unitframe"]["units"]["raid40"]["height"] = 32
		E.db["unitframe"]["units"]["raid40"]["horizontalSpacing"] = 2
		E.db["unitframe"]["units"]["raid40"]["width"] = 120
		ElvUI_EltreumUI:Print('Alternative Group, Raid and Raid40 layout has been set')
		--ReloadUI()
	else
		ElvUI_EltreumUI:Print(L["The original layout was made for the Eltruism DPS/Tank profile, please switch to it to use it"])
	end
end

--Better EventTrace CLEU logging thanks to ;Meorawr.wtf.lua;
function ElvUI_EltreumUI:DevTools()
	if E.db.ElvUI_EltreumUI.dev then
		if not EventTraceFrame then
			UIParentLoadAddOn("Blizzard_DebugTools")
		end
		if not IsAddOnLoaded("Blizzard_EventTrace") then
			LoadAddOn("Blizzard_EventTrace")
		end
		local function LogEvent(self, event, ...)
			if event == "COMBAT_LOG_EVENT_UNFILTERED" or event == "COMBAT_LOG_EVENT" then
				self:LogEvent_Original(event, CombatLogGetCurrentEventInfo())
			elseif event == "COMBAT_TEXT_UPDATE" then
				self:LogEvent_Original(event, (...), GetCurrentCombatTextEventInfo())
			else
				self:LogEvent_Original(event, ...)
			end
		end

		local function OnEventTraceLoaded()
			EventTrace.LogEvent_Original = EventTrace.LogEvent
			EventTrace.LogEvent = LogEvent
		end

		if EventTrace then
			OnEventTraceLoaded()
		else
			local frame = CreateFrame("Frame")
			frame:RegisterEvent("ADDON_LOADED")
			frame:SetScript("OnEvent", function(self, event, ...)
				if event == "ADDON_LOADED" and (...) == "Blizzard_EventTrace" then
					OnEventTraceLoaded()
					self:UnregisterAllEvents()
				end
			end)
		end
	end
end

local maxmemory = 4096
local currentmemory
function ElvUI_EltreumUI:ClearMemory()
	if not InCombatLockdown() then
		currentmemory = GetAddOnMemoryUsage ("ElvUI_EltreumUI")
		if E.db.ElvUI_EltreumUI.dev then
			if currentmemory > maxmemory then
				collectgarbage("collect")
				ResetCPUUsage()
				ElvUI_EltreumUI:Print(currentmemory.." memory was cleared")
				--UpdateAddOnCPUUsage("ElvUI_EltreumUI")
				--GetAddOnMemoryUsage("ElvUI_EltreumUI")
				--/run UpdateAddOnMemoryUsage() print("memory "..GetAddOnMemoryUsage("ElvUI_EltreumUI")); print("cpu "..GetAddOnCPUUsage("ElvUI_EltreumUI"))
				currentmemory = 0
			else
				ElvUI_EltreumUI:Print("Not enough memory usage to clear memory")
			end
		else
			if currentmemory > maxmemory then
				collectgarbage("collect")
				ResetCPUUsage()
				currentmemory = 0
			end
		end
	end
end

function ElvUI_EltreumUI:DeleteItem()
	if E.db.ElvUI_EltreumUI.otherstuff.delete then
		hooksecurefunc(StaticPopupDialogs["DELETE_GOOD_ITEM"],"OnShow",function(self) --Interface/FrameXML/StaticPopup.lua line 1965/2074
			self.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)  --from line 2028
			ElvUI_EltreumUI:Print("DELETE automatically typed")
		end)

		hooksecurefunc(StaticPopupDialogs["DELETE_GOOD_QUEST_ITEM"],"OnShow",function(self) --Interface/FrameXML/StaticPopup.lua line 2125
			self.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)  --from line 2028
			ElvUI_EltreumUI:Print("DELETE automatically typed")
		end)
	end
end
