local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

-- Gladdy profile setup
function ElvUI_EltreumUI:GetGladdyProfile()
	if IsAddOnLoaded("Gladdy") then
		if GladdyXZ.profiles.Eltreum then
			--local key = {[E.mynameRealm] = "Eltreum"}
			--table.insert(GladdyXZ.profileKeys, key)
			table.insert(GladdyXZ.profileKeys, E.mynameRealm)
			GladdyXZ["profileKeys"][E.mynameRealm] = "Eltreum"
		else
			GladdyXZ = {
				["profileKeys"] = {
					[E.mynameRealm] = "Eltreum",
				},
				["profiles"] = {
					["Eltreum"] = {
						["drBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["drCooldownAlpha"] = 0.9,
						["shadowsightTimerX"] = 2.031761169433594,
						["auraDebuffBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["highlightInset"] = true,
						["castBarBgColor"] = {
							["a"] = 0.4000000357627869,
							["r"] = 0.7372549019607844,
							["g"] = 0.7372549019607844,
							["b"] = 0.7372549019607844,
						},
						["powerBarHeight"] = 16,
						["healthBarTexture"] = "Eltreum-Elvui-Norm",
						["trinketBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["buffsCooldownPos"] = "LEFT",
						["drIconSize"] = 31,
						["buffsBuffsCooldownGrowDirection"] = "LEFT",
						["npTremorFont"] = "Kimberley",
						["ciYOffset"] = -24,
						["healthBarFont"] = "Kimberley",
						["classIconWidthFactor"] = 1,
						["powerPercentage"] = true,
						["buffsXOffset"] = -1,
						["ciBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["petHealthBarTexture"] = "Eltreum-Elvui-Norm",
						["castBarIconSize"] = 20,
						["castBarYOffset"] = -34,
						["buffsBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["ciBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["classIconBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["auraBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["drFontScale"] = 0.9,
						["powerBarTexture"] = "Eltreum-Elvui-Norm",
						["buffsBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["castBarXOffset"] = 287,
						["powerBarFontSize"] = 10.21056747436523,
						["announcements"] = {
							["spec"] = false,
							["trinketUsed"] = false,
						},
						["racialFont"] = "Kimberley",
						["healthActual"] = true,
						["buffsYOffset"] = -20,
						["barWidth"] = 220,
						["racialWidthFactor"] = 1,
						["healthBarBorderSize"] = 0.5,
						["cooldownCooldownAlpha"] = 0.9,
						["trinketBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["trinketFontScale"] = 1.3,
						["petYOffset"] = 27,
						["petPortraitBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["castBarBorderStyle"] = "None",
						["petHealthBarBorderStyle"] = "None",
						["castBarWidth"] = 265,
						["trinketFont"] = "Kimberley",
						["racialCooldownAlpha"] = 0.9,
						["healthBarBorderStyle"] = "None",
						["cooldownMaxIconsPerLine"] = 14,
						["buffsEnabled"] = false,
						["drCooldownPos"] = "LEFT",
						["buffsFont"] = "Kimberley",
						["locked"] = true,
						["npTotemPlatesBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["trinketSize"] = 47,
						["x"] = 994.2277052363715,
						["racialSize"] = 47,
						["racialBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["bottomMargin"] = 25,
						["buffsBuffsCooldownPos"] = "LEFT",
						["buffsBuffsYOffset"] = -42,
						["auraBuffBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["castBarTexture"] = "Eltreum-Elvui-Norm",
						["petHeight"] = 19,
						["petXOffset"] = -238,
						["drFont"] = "Kimberley",
						["cooldownFont"] = "Kimberley",
						["buffsCooldownGrowDirection"] = "LEFT",
						["highlightBorderSize"] = 2,
						["cooldownFontScale"] = 0.6,
						["powerBarBgColor"] = {
							["a"] = 0.3500000238418579,
							["r"] = 0.8,
							["g"] = 0.8,
							["b"] = 0.8,
						},
						["castBarBorderSize"] = 4,
						["buffsFontScale"] = 0.7000000000000001,
						["cooldownXOffset"] = 1,
						["petEnabled"] = false,
						["healthBarBgColor"] = {
							["a"] = 1,
						},
						["drYOffset"] = 8,
						["padding"] = 0,
						["castBarIconStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["powerBarBorderStyle"] = "None",
						["trinketCooldownAlpha"] = 0.9,
						["y"] = 537.3210845994763,
						["buffsIconSize"] = 23,
						["classIconSize"] = 48,
						["buffsCooldownAlpha"] = 0.9,
						["castBarColor"] = {
							["g"] = 0.8980392156862745,
							["b"] = 0.4274509803921568,
						},
						["castBarIconColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["auraFont"] = "Kimberley",
						["leaderBorder"] = false,
						["cooldownBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["shadowsightTimerY"] = 14.73023414611816,
						["buffsBuffsIconSize"] = 19,
						["healthBarHeight"] = 30,
						["buffsBuffsXOffset"] = -1,
						["petHealthBarBorderSize"] = 6,
						["racialBorderColor"] = {
							["r"] = 0.6666666666666666,
							["g"] = 0.6666666666666666,
							["b"] = 0.6666666666666666,
						},
						["auraCooldownAlpha"] = 0.9,
						["castBarFont"] = "Kimberley",
						["powerBarFont"] = "Kimberley",
						["cooldownYOffset"] = 2.400000000000034,
						["trinketWidthFactor"] = 1,
						["powerBarBorderSize"] = 1,
						["petWidth"] = 100,
						["cooldownSize"] = 26,
						["classIconBorderStyle"] = "Interface\\AddOns\\Gladdy\\Images\\Border_Gloss",
						["petHealthBarFont"] = "Kimberley",
					},
				},
			}
		end

		ElvUI_EltreumUI:Print(L["Gladdy profile has been set."])
	else
		ElvUI_EltreumUI:Print(L["Gladdy is not loaded"])
	end
end
