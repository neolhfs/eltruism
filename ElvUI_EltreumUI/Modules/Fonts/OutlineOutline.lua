local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local IsAddOnLoaded = _G.IsAddOnLoaded

function ElvUI_EltreumUI:SetupFontsOutlineOutline()
	if E.Retail then
		if IsAddOnLoaded('ProjectAzilroka') then
			_G.ProjectAzilroka.db["stAddonManager"]["FontFlag"] = "OUTLINE"
		end
		if IsAddOnLoaded("ElvUI_SLE") then
			E.db["sle"]["armory"]["stats"]["catFonts"]["outline"] = "OUTLINE"
			E.db["sle"]["armory"]["stats"]["itemLevel"]["outline"] = "OUTLINE"
			E.db["sle"]["armory"]["stats"]["statFonts"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["mail"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["objective"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["objectiveHeader"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["pvp"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["questFontSuperHuge"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["subzone"]["outline"] = "OUTLINE"
			E.db["sle"]["media"]["fonts"]["zone"]["outline"] = "OUTLINE"
			E.db["sle"]["minimap"]["coords"]["fontOutline"] = "OUTLINE"
			E.db["sle"]["minimap"]["instance"]["fontOutline"] = "OUTLINE"
			E.db["sle"]["minimap"]["locPanel"]["fontOutline"] = "OUTLINE"
			E.db["sle"]["nameplates"]["targetcount"]["fontOutline"] = "OUTLINE"
			E.db["sle"]["skins"]["merchant"]["list"]["subOutline"] = "OUTLINE"
		end
		if IsAddOnLoaded("ElvUI_WindTools") then
			E.private["WT"]["quest"]["objectiveTracker"]["header"]["style"] = "OUTLINE"
			E.private["WT"]["quest"]["objectiveTracker"]["info"]["style"] = "OUTLINE"
			E.private["WT"]["quest"]["objectiveTracker"]["title"]["style"] = "OUTLINE"
			E.db["WT"]["item"]["extraItemsBar"]["bar1"]["bindFont"]["style"] = "OUTLINE"
			E.db["WT"]["item"]["extraItemsBar"]["bar1"]["countFont"]["style"] = "OUTLINE"
			E.db["WT"]["misc"]["gameBar"]["additionalText"]["font"]["style"] = "OUTLINE"
			E.db["WT"]["misc"]["gameBar"]["time"]["font"]["style"] = "OUTLINE"
		end
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPlayerAbsorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyAbsorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetAbsorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumRaid1Absorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumRaid2Absorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumRaid3Absorb"]["fontOutline"] = "OUTLINE"
		E.db["actionbar"]["extraActionButton"]["hotkeyFontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["player"]["castbar"]["customTimeFont"]["fontStyle"] = "OUTLINE"
		E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["fontOutline"] = "OUTLINE"
		E.db["databars"]["azerite"]["fontOutline"] = "OUTLINE"
		E.db["general"]["altPowerBar"]["fontOutline"] = "OUTLINE"
	end
	E.db["general"]["fontStyle"] = "OUTLINE"
	E.db["general"]["minimap"]["locationFontOutline"] = "OUTLINE"
	if E.Retail then
		E.db["general"]["minimap"]["icons"]["queueStatus"]["fontOutline"] = "OUTLINE"
	end
	if E.Wrath then
		E.db["general"]["totems"]["fontOutline"] = "OUTLINE"
	end
	E.db["bags"]["countFontOutline"] = "OUTLINE"
	E.db["bags"]["itemInfoFontOutline"] = "OUTLINE"
	E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
	E.db["chat"]["fontOutline"] = "OUTLINE"
	E.db["chat"]["tabFontOutline"] = "OUTLINE"
	E.db["cooldown"]["fonts"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["experience"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["reputation"]["fontOutline"] = "OUTLINE"
	E.db["databars"]["threat"]["fontOutline"] = "OUTLINE"
	E.db["datatexts"]["fontOutline"] = "OUTLINE"
	E.db["tooltip"]["healthBar"]["fontOutline"] = "OUTLINE"
	E.db["tooltip"]["headerFontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyPower"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPvP"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumGroup"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumRaid1Health"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumRaid1Name"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumGroup"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumRaid2Health"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumRaid2Name"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumGroup"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumRaid3Health"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumRaid3Name"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetofTarget"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"]["fontOutline"] = "OUTLINE"
	if E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumStatus"] then
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
	end
	if not E.Classic then
		E.db["unitframe"]["units"]["arena"]["customTexts"]["EltreumArenaHealth"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["arena"]["customTexts"]["EltreumArenaName"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["arena"]["customTexts"]["EltreumArenaPower"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["arena"]["customTexts"]["EltreumStatus"]["fontOutline"] = "OUTLINE"
	end
	E.db["actionbar"]["bar1"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar1"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar1"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar10"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar10"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar10"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar2"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar2"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar2"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar3"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar3"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar3"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar4"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar4"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar4"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar5"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar5"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar5"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar6"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar6"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar6"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar7"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar7"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar7"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar8"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar8"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar8"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar9"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar9"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["bar9"]["macroFontOutline"] = "OUTLINE"
	E.db["actionbar"]["barPet"]["countFontOutline"] = "OUTLINE"
	E.db["actionbar"]["barPet"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["fontOutline"] = "OUTLINE"
	E.db["actionbar"]["stanceBar"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["actionbar"]["vehicleExitButton"]["hotkeyFontOutline"] = "OUTLINE"
	E.db["auras"]["buffs"]["countFontOutline"] = "OUTLINE"
	E.db["auras"]["buffs"]["timeFontOutline"] = "OUTLINE"
	E.db["auras"]["debuffs"]["countFontOutline"] = "OUTLINE"
	E.db["auras"]["debuffs"]["timeFontOutline"] = "OUTLINE"
	E.db["unitframe"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["assist"]["rdebuffs"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["debuffs"]["countFontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["rdebuffs"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid1"]["rdebuffs"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid2"]["rdebuffs"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid3"]["rdebuffs"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["tank"]["rdebuffs"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["cooldown"]["fonts"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["power"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["power"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["power"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["buffs"]["countFontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["castbar"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["debuffs"]["countFontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["health"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["level"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["name"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["power"]["text"]["fontOutline"] = "OUTLINE"
	E.db["nameplates"]["units"]["PLAYER"]["title"]["fontOutline"] = "OUTLINE"


	-- Custom Texts
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPower"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPvP"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["pet"]["customTexts"]["EltreumPetName"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyPower"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetPower"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetofTarget"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetHealth"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumTargetTargetName"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["targettarget"]["customTexts"]["EltreumPower"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumGroup"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumRaid1Health"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumRaid1Name"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumGroup"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumRaid2Health"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumRaid2Name"]["fontOutline"] = "OUTLINE"

	E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumGroup"]["fontOutline"] = "NONE"
	E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumRaid3Health"]["fontOutline"] = "OUTLINE"
	E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumRaid3Name"]["fontOutline"] = "OUTLINE"

	if E.Retail then
		E.db["unitframe"]["units"]["player"]["customTexts"]["EltreumPlayerAbsorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["target"]["customTexts"]["EltreumTargetAbsorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["party"]["customTexts"]["EltreumPartyAbsorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid1"]["customTexts"]["EltreumRaid1Absorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid2"]["customTexts"]["EltreumRaid2Absorb"]["fontOutline"] = "OUTLINE"
		E.db["unitframe"]["units"]["raid3"]["customTexts"]["EltreumRaid3Absorb"]["fontOutline"] = "OUTLINE"
	end

end
