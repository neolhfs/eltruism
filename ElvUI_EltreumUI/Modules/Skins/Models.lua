local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local UF = E:GetModule('UnitFrames')
local _G = _G
local hooksecurefunc = _G.hooksecurefunc
local UnitExists = _G.UnitExists
local UnitClass = _G.UnitClass
local UnitIsPlayer = _G.UnitIsPlayer
local playereffect = CreateFrame("playermodel", "EltruismPlayerEffect")
local targeteffect = CreateFrame("playermodel", "EltruismTargetEffect")
local playerbar,targetbar

--models table, because each version has different texture paths
--its based on the color of the model, not the name/theme
local classModels = {}
if E.Retail then
	classModels = {
		["PRIEST"] = 590934,
		["PALADIN"] = 130593,
		["HUNTER"] = 1251379,
		["SHAMAN"] = 130552,
		["MAGE"] = 235339,
		--["MAGE"] = 1538774,
		["WARLOCK"] = 3185115,
		["DEMONHUNTER"] = 235337,
		["DRUID"] = 2575322,
		["NPCFRIENDLY"] = 1726751,
		["NPCUNFRIENDLY"] = 1965208,

		["WARRIOR"] = 1684062,

		["ROGUE"] = 3152583,
		["DEATHKNIGHT"] = 1368570,
		["MONK"] = 3513377,
		---130623 --shadowmoon tbc w/ meteors
		--130551, --icecrown very very blue

		--4234796 smoky stormwind


	}
elseif E.TBC then
	classModels = {
		["PRIEST"] = "spells/christmassnowrain.m2",
		["WARRIOR"] = "spells/flamebreath.m2",
		["ROGUE"] = "spells/corrosivesandbreath.m2",
		["PALADIN"] = "spells/arcanebreath.m2",
		["HUNTER"] = "environments/stars/hellfireskybox.m2",
		["SHAMAN"] = "spells/waterliquidbreath.m2",
		["MAGE"] = "environments/stars/netherstormskybox.m2",
		["WARLOCK"] = "environments/stars/shadowmoonskybox.m2",
		["DRUID"] = "environments/stars/nagrandskybox.m2",
		["DEATHKNIGHT"] = "spells/frostbreath.m2",
		["MONK"] = "spells/acidcloudbreath.m2",
		["DEMONHUNTER"] = "spells/acidliquidbreath.m2",
	}
elseif E.Classic then
	classModels = {
		["PRIEST"] = "spells/christmassnowrain.m2",
		["WARRIOR"] = "spells/flamebreath.m2",
		["ROGUE"] = "spells/corrosivesandbreath.m2",
		["PALADIN"] = "spells/arcanebreath.m2",
		["HUNTER"] = "environments/stars/hellfireskybox.m2",
		["SHAMAN"] = "spells/waterliquidbreath.m2",
		["MAGE"] = "environments/stars/netherstormskybox.m2",
		["WARLOCK"] = "environments/stars/shadowmoonskybox.m2",
		["DRUID"] = "environments/stars/nagrandskybox.m2",
		["DEATHKNIGHT"] = "spells/frostbreath.m2",
		["MONK"] = "spells/acidcloudbreath.m2",
		["DEMONHUNTER"] = "spells/acidliquidbreath.m2",
	}
end

---add effects to player/target UF
function ElvUI_EltreumUI:UFEffects()
	if E.db.ElvUI_EltreumUI.models.unitframe and E.private.unitframe.enable then
		playerbar = _G["ElvUF_Player"]
		targetbar = _G["ElvUF_Target"]

		if E.db.ElvUI_EltreumUI.models.modeltype == "CLASS" then
			playereffect:ClearModel()
			playereffect:SetModel(classModels[E.myclass])
			targeteffect:ClearModel()
			local _, targetclass = UnitClass("target")
			if UnitIsPlayer("target") then
				targeteffect:SetModel(classModels[targetclass])
			else
				if E.Retail then
					targeteffect:SetModel(130525)
				else
					targeteffect:SetModel("environments/stars/hellfireskybox.m2")
				end
			end
		elseif E.db.ElvUI_EltreumUI.models.modeltype == "CUSTOM" then
			playereffect:ClearModel()
			playereffect:SetModel(E.db.ElvUI_EltreumUI.models.custommodel)
			targeteffect:ClearModel()
			targeteffect:SetModel(E.db.ElvUI_EltreumUI.models.custommodel)
		end

		playereffect:SetDesaturation(E.db.ElvUI_EltreumUI.models.ufdesaturation)
		playereffect:SetParent(playerbar.Health)
		targeteffect:SetDesaturation(E.db.ElvUI_EltreumUI.models.ufdesaturation)
		targeteffect:SetParent(targetbar.Health)

		if E.db.ElvUI_EltreumUI.lightmode then
			playereffect:SetAllPoints(playerbar.Health:GetStatusBarTexture())
			targeteffect:ClearAllPoints()
			targeteffect:SetAllPoints(targetbar.Health:GetStatusBarTexture())
			playereffect:SetInside(playerbar.Health:GetStatusBarTexture(), 0, 0)
			targeteffect:SetInside(targetbar.Health:GetStatusBarTexture(), 0, 0)
		elseif E.db.ElvUI_EltreumUI.darkmode then
			playereffect:SetAllPoints(playerbar.Health)
			targeteffect:ClearAllPoints()
			targeteffect:SetAllPoints(targetbar.Health)
			playereffect:SetInside(playerbar.Health, 0, 0)
			targeteffect:SetInside(targetbar.Health, 0, 0)
		end

		playereffect:SetAlpha(E.db.ElvUI_EltreumUI.models.ufalpha)
		playereffect:SetFrameLevel(playerbar.Health:GetFrameLevel()-1)
		--playereffect:SetFrameLevel(playerbar.Portrait3D:GetFrameLevel())
		targeteffect:SetAlpha(E.db.ElvUI_EltreumUI.models.ufalpha)
		targeteffect:SetFrameLevel(targetbar.Health:GetFrameLevel()-1)
		--targeteffect:AddMaskTexture(targetbar.Health:GetStatusBarTexture())
	end
end

hooksecurefunc(UF, "Construct_TargetFrame", ElvUI_EltreumUI.UFEffects)
hooksecurefunc(UF, "Update_TargetFrame", ElvUI_EltreumUI.UFEffects)
