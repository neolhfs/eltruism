local _G = _G
local unpack = _G.unpack
local select = _G.select
local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local pairs = _G.pairs
local SetCVar = _G.SetCVar
local IsAddOnLoaded = _G.IsAddOnLoaded
local Deformat = _G.LibStub("LibDeformat-3.0")
local GetCoinIcon = _G.GetCoinIcon

-- LootText is a fork of Scrolling Loot Text (SLoTe) by xavjer using fixes by Eltreum for pet caging and other things
-- SLoTE uses GNU GPLv3 and as such this part of Eltruism also uses GNU GPLv3

function ElvUI_EltreumUI:LootText()
	if E.private.ElvUI_EltreumUI.loottext.enable then
	local LootText = {}
	local LootText = LootText
	local itemLink = nil
	local amount = nil
	local rarity = nil
	local lootTexture = nil
	local lootName = nil
	local lootQuantity = nil
	local YOU_LOOT_MONEY = _G.YOU_LOOT_MONEY
	local LOOT_MONEY_SPLIT = _G.LOOT_MONEY_SPLIT
	local LOOT_ITEM_SELF_MULTIPLE = _G.LOOT_ITEM_SELF_MULTIPLE
	local LOOT_ITEM_SELF = _G.LOOT_ITEM_SELF
	local LOOT_ITEM_CREATED_SELF = _G.LOOT_ITEM_CREATED_SELF
	local GOLD_AMOUNT = _G.GOLD_AMOUNT
	local SILVER_AMOUNT = _G.SILVER_AMOUNT
	local COPPER_AMOUNT = _G.COPPER_AMOUNT
	local COMBATLOG_HONORAWARD = _G.COMBATLOG_HONORAWARD
	local COMBATLOG_HONORGAIN = _G.COMBATLOG_HONORGAIN
	local COMBATLOG_HONORGAIN_NO_RANK = _G.COMBATLOG_HONORGAIN_NO_RANK
	local CURRENCY_GAINED_MULTIPLE = _G.CURRENCY_GAINED_MULTIPLE
	local CURRENCY_GAINED_MULTIPLE_BONUS = _G.CURRENCY_GAINED_MULTIPLE_BONUS
	local CURRENCY_GAINED = _G.CURRENCY_GAINED
	local CombatText_AddMessage = _G.CombatText_AddMessage
	local CombatText_StandardScroll = _G.CombatText_StandardScroll
	local GetItemInfo = _G.GetItemInfo
	local GetItemQualityColor = _G.GetItemQualityColor
	local GetAchievementInfo = _G.GetAchievementInfo
	local CombatText = _G.CombatText
	local C_CurrencyInfo = _G.C_CurrencyInfo
	local CreateFrame = _G.CreateFrame
	local getLoot = _G.getLoot
	local LOOT_ITEM_PUSHED_SELF_MULTIPLE = _G.LOOT_ITEM_PUSHED_SELF_MULTIPLE
	local LOOT_ITEM_PUSHED_SELF = _G.LOOT_ITEM_PUSHED_SELF
	local ERR_INV_FULL = _G.ERR_INV_FULL
	local LootTextframe = CreateFrame("Frame")
	LootTextframe:RegisterEvent("ADDON_LOADED")
	LootTextframe:RegisterEvent("UI_ERROR_MESSAGE")
	LootTextframe:RegisterEvent("CHAT_MSG_LOOT")
	LootTextframe:RegisterEvent("CHAT_MSG_MONEY")
	LootTextframe:RegisterEvent("CHAT_MSG_CURRENCY")
	LootTextframe:RegisterEvent("CHAT_MSG_COMBAT_HONOR_GAIN")
	LootTextframe:RegisterEvent("LOOT_OPENED")
	CombatText:SetScale(0.65)



	function LootTextframe.OnEvent(self, event, arg1, arg2, arg3)
		if event == "UI_ERROR_MESSAGE" and arg1 == ERR_INV_FULL then
				CombatText_AddMessage("INVENTORY IS FULL", CombatText_StandardScroll, 1, 0, 0)
		end
		if (event == "CHAT_MSG_LOOT") then
			itemLink, amount = getLoot(arg1)
			if E.private.ElvUI_EltreumUI.loottext.pet then
				if itemLink and itemLink:match("|Hbattlepet:") then
					CombatText_AddMessage("|T ".. 132599 ..":22:22:-11:-11|t  "..itemLink, CombatText_StandardScroll, 255, 255, 255)
				end
			end
			if itemLink and not itemLink:match("|Hbattlepet:") then
				local sName, sLink, iRarity, iLevel, iMinLevel, sType, sSubType, iStackCount, iEqLoc, iTexture, iSellPrice, _, _, _, _, _, _ = GetItemInfo(itemLink)
				lootTexture = iTexture
				lootName = sName
				lootQuantity = amount
				rarity = iRarity
				local r, g, b, hex = GetItemQualityColor(rarity)
				if lootQuantity >= 2 then
					CombatText_AddMessage("|T ".. lootTexture ..":22:22:0:0|t".."  "..lootQuantity.." x "..lootName, CombatText_StandardScroll, r, g, b)
				else
					CombatText_AddMessage("|T ".. lootTexture ..":22:22:0:0|t".."  "..lootName, CombatText_StandardScroll, r, g, b)
				end
			end
		end
		if E.private.ElvUI_EltreumUI.loottext.currency then
			if (event == "CHAT_MSG_MONEY") then
				local moneystring = Deformat(arg1, LOOT_MONEY_SPLIT) or Deformat(arg1, YOU_LOOT_MONEY)
				local aImage = GetCoinIcon(9999999999)
				if moneystring:match("Silver") and not moneystring:match("Gold") then
						CombatText_AddMessage("|T ".. 133786 ..":22:22:-11:-11|t  "..moneystring, CombatText_StandardScroll, 255, 255, 255)
				end
				if moneystring:match("Copper") and not moneystring:match("Silver") then
						CombatText_AddMessage("|T ".. 133788 ..":22:22:-11:-11|t  "..moneystring, CombatText_StandardScroll, 255, 255, 255)
				end
				if moneystring:match("Gold") then
						CombatText_AddMessage("|T ".. 133784 ..":22:22:-11:-11|t  "..moneystring, CombatText_StandardScroll, 255, 255, 255)
				end

			end
			if (event == "CHAT_MSG_CURRENCY") then
				itemLink, amount =  Deformat(arg1, CURRENCY_GAINED_MULTIPLE_BONUS)
				if not amount then
					itemLink, amount =  Deformat(arg1, CURRENCY_GAINED_MULTIPLE)
				end
				if not amount then
					itemLink = Deformat(arg1, CURRENCY_GAINED)
					amount = 1
				end
				if itemLink then
					local info = C_CurrencyInfo.GetCurrencyInfoFromLink(itemLink)
					lootTexture = info["iconFileID"]
					lootName = info["name"]
					lootQuantity = amount
					if itemLink:match("Soul Ash") then
						CombatText_AddMessage("|T ".. 3743738 ..":22:22:-11:-11|t  "..itemLink, CombatText_StandardScroll, 255, 255, 255)
					end
					if not itemLink:match("Soul Ash") then
						if lootQuantity >= 2 then
							CombatText_AddMessage("|T ".. lootTexture ..":22:22:0:0|t".."  "..lootQuantity.." x "..lootName, CombatText_StandardScroll, 255, 255, 255)
						else
							CombatText_AddMessage("|T ".. lootTexture ..":22:22:0:0|t".."  "..lootName, CombatText_StandardScroll, 255, 255, 255)
						end
					end
				end
			end
		end
		if E.private.ElvUI_EltreumUI.loottext.honor then
			if (event == "CHAT_MSG_COMBAT_HONOR_GAIN") then
				itemLink, amount =  Deformat(arg1, CURRENCY_GAINED_MULTIPLE_BONUS)
				if not amount then
					itemLink, amount =  Deformat(arg1, CURRENCY_GAINED_MULTIPLE)
				end
				if not amount then
					itemLink = Deformat(arg1, CURRENCY_GAINED)
					amount = 1
				end
				if itemLink then
		  			if not amount then
					amount = 1
					end
					local info = C_CurrencyInfo.GetCurrencyInfoFromLink(itemLink)
					lootTexture = info["iconFileID"]
					lootName = info["name"]
					lootQuantity = amount
					if lootQuantity >= 2 then
						CombatText_AddMessage("|T ".. lootTexture ..":22:22:0:0|t".."  "..lootQuantity.." x "..lootName, CombatText_StandardScroll, 255, 255, 255)
					else
						CombatText_AddMessage("|T ".. lootTexture ..":22:22:0:0|t".."  "..lootName, CombatText_StandardScroll, 255, 255, 255)
					end
				end
			end
		end
	end

	function getLoot(chatmsg)
		-- check for multiple-item-loot
		local itemLink, amount = Deformat(chatmsg, LOOT_ITEM_SELF_MULTIPLE)
		if not itemLink then
			itemLink, amount = Deformat(chatmsg, LOOT_ITEM_PUSHED_SELF_MULTIPLE)
		end
		-- check for single-itemloot
		if not itemLink then
			itemLink = Deformat(chatmsg, LOOT_ITEM_SELF)
		end
		if not itemLink then
			itemLink, amount = Deformat(chatmsg, LOOT_ITEM_PUSHED_SELF)
		end
		-- if something has been looted
		if itemLink then
			if not amount then
				amount = 1
			end
			return itemLink, amount
		end
	end
	LootTextframe:SetScript("OnEvent", LootTextframe.OnEvent)
	end
end
