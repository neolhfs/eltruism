local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

function ElvUI_EltreumUI:NewVersionCheck()
	if E.private.ElvUI_EltreumUI.install_version == nil then
		return
	elseif E.private.ElvUI_EltreumUI.install_version < "2.2.3" then
		E.private.ElvUI_EltreumUI.install_version = "2.2.3"
		ElvUI_EltreumUI:Print('Please go to: |cffff0000ElvUI > Unitframes > Group Units > Party/Raid/Raid40 > Aura Indicator >|r Set them to |cffff0000Textured Icon with Display Timer|r')
		ElvUI_EltreumUI:Print('This setting cannot be set through the plugin without causing errors. It will improve your experience making it easier to see which buffs/debuffs your party/raid/raid40 has. This message will only be displayed once.')
	end
end

function ElvUI_EltreumUI:OldVersionCheck()
	if E.private.ElvUI_EltreumUI.install_version == nil then
		return
	elseif E.private.ElvUI_EltreumUI.install_version > "0" and E.private.ElvUI_EltreumUI.install_version < "2.1.3" then
		if ElvDB.profileKeys[E.mynameRealm] == "Eltreum DPS/Tank" or ElvDB.profileKeys[E.mynameRealm] == "Eltreum Healer" then
			if not E.db.movers then E.db.movers = {} end
			E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["text_format"] = "[namecolor][name:eltruism:abbreviate]"
			if E.private["nameplates"]["enable"] == true then
				ElvUI_EltreumUI:SetupStyleFilters()
				ElvUI_EltreumUI:ResolutionOutline()
			end
			ElvUI_EltreumUI:Print('Nameplate Filters were changed, please remove |cffff0000EnemyCasting, ExecuteRange, StealThisBuff and HideThis filters|r')
			if ElvUI_EltreumUI.Classic or ElvUI_EltreumUI.TBC then
				if ElvDB.profileKeys[E.mynameRealm] == "Eltreum DPS/Tank" or ElvDB.profileKeys[E.mynameRealm] == "Eltreum Healer" then
					if not E.db.movers then E.db.movers = {} end
					E.db["unitframe"]["units"]["player"]["power"]["EnergyManaRegen"] = true
					E.private.ElvUI_EltreumUI.install_version = "2.1.3"
					ElvUI_EltreumUI:Print('profile has been automatically updated to enable mana and energy ticks')
				end
			end
		end
	elseif E.private.ElvUI_EltreumUI.install_version >= "2.1.3" and E.private.ElvUI_EltreumUI.install_version <= "2.2.1" then
		E.private.ElvUI_EltreumUI.install_version = "2.2.2"
		if E.private["nameplates"]["enable"] == true then
			ElvUI_EltreumUI:SetupNamePlates('ElvUI')
		end
	end
end
