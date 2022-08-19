local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

--Settings that would be true but became false by default per request,
--now a function that can be used to set them while importing the profiles
function ElvUI_EltreumUI:UpdateSettings()

	-- Chat
	E.db.ElvUI_EltreumUI.chat.enable = true
	E.db.ElvUI_EltreumUI.chat.colorsysmsg = true
	E.db.ElvUI_EltreumUI.chat.looticons = true
	E.db.ElvUI_EltreumUI.chat.itemlevels = true
	E.db.ElvUI_EltreumUI.chat.rollsound = true

	--CVars
	if E.Retail then
		E.db.ElvUI_EltreumUI.cvars.autohidenpcname = true
	end

	-- Nameplates
	E.db.ElvUI_EltreumUI.nameplates.nameplatepower.autoadjustposition = true
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.ClassColorGlow = true
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.ClassBorderNameplate = false
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.nameplatetexture = true
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.classbarautohide = true
	E.db.ElvUI_EltreumUI.nameplates.nameplatepower.texture = "ElvUI Norm1"
	E.db.ElvUI_EltreumUI.nameplates.nameplatepower.modeleffect = true
	E.db.ElvUI_EltreumUI.unitframes.darkpowercolor = true
	E.db.ElvUI_EltreumUI.nameplates.nameplatelevel = true
	E.db.ElvUI_EltreumUI.nameplates.friendlynameplatetoggle.friendlynames = false -- turns out blizzard fakes the nameplates and alphas the helthbar, causing huge performance costs
	E.db.ElvUI_EltreumUI.nameplates.friendlynameplatetoggle.hidefriendly = false -- and this one is the same but with health so make this one off as well
	E.db.ElvUI_EltreumUI.nameplates.friendlynameplatetoggle.disablefriendly = true --so hide it instead
	E.db.ElvUI_EltreumUI.nameplates.widenameplate.enable = true
	E.db.ElvUI_EltreumUI.nameplates.widenameplate.npglow = true
	E.db.ElvUI_EltreumUI.nameplates.nptextureversion = "V2"
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.enableHealthHeight = true
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.useelvuinpheight = true
	E.db.ElvUI_EltreumUI.nameplates.nameplateOptions.targetmodel = true

	-- Gradient/Unitframe stuff
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.texture = "Asphyxia-Norm"
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayercastbar = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayercastbarinterrupted = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.enableplayercastbarnoninterruptible = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.enabletargetcastbar = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.enabletargetcastbarinterrupted = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.enabletargetcastbarnoninterruptible = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolorplayercastbar = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.classcolortargetcastbar = true
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.nporientation = "VERTICAL"
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.npcustomcolor = false
	E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdroptexture = "Asphyxia-Norm"
	E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.backdropalpha = 0.7
	E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.enable = true
	E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.texture = 'Eltreum-Fade'
	E.db.ElvUI_EltreumUI.unitframes.sparkcustomcolor.width = 20
	E.db.ElvUI_EltreumUI.unitframes.portraitfix = true
	E.db.ElvUI_EltreumUI.unitframes.darkmode = true
	E.db.ElvUI_EltreumUI.unitframes.uftextureversion = "V2"
	E.db.ElvUI_EltreumUI.unitframes.ufcustomtexture.classdetect = true
	E.db.unitframe.statusbar = "ElvUI Norm1"

	--databar
	E.db.ElvUI_EltreumUI.unitframes.gradientmode.gradientXP = true
	E.db.databars.statusbar = "Asphyxia-Norm"

	-- Skins
	E.db.ElvUI_EltreumUI.skins.levelbossinstance = true
	E.db.ElvUI_EltreumUI.skins.widertransmog = true
	E.db.ElvUI_EltreumUI.skins.expandedstable = true
	E.db.ElvUI_EltreumUI.skins.classiconsoncharacterpanel = true
	E.db.ElvUI_EltreumUI.skins.classiconsreleaf = true
	E.db.ElvUI_EltreumUI.skins.classiconsblizz = false
	E.db.ElvUI_EltreumUI.skins.classicarmory = true
	E.db.ElvUI_EltreumUI.skins.classicarmoryautostats = true
	E.db.ElvUI_EltreumUI.skins.ilvls = true
	E.db.ElvUI_EltreumUI.skins.sockets = true
	E.db.ElvUI_EltreumUI.skins.socketsinspect = true
	E.db.ElvUI_EltreumUI.skins.expandarmorybg = true
	E.db.ElvUI_EltreumUI.skins.armorybgtype = "RACE"
	E.db.ElvUI_EltreumUI.skins.expandarmorybgalpha = 0.7
	E.db.ElvUI_EltreumUI.skins.itemquality = true
	E.db.ElvUI_EltreumUI.skins.statcolors = true
	E.db.ElvUI_EltreumUI.skins.bossemote = true
	E.db.ElvUI_EltreumUI.skins.quests = true
	E.db.ElvUI_EltreumUI.skins.questswowhead = true
	E.db.ElvUI_EltreumUI.skins.professions = true
	E.db.ElvUI_EltreumUI.skins.zones = true
	E.db.ElvUI_EltreumUI.skins.shadows.enable = true
	E.db.ElvUI_EltreumUI.glow.enable = true
	E.db.ElvUI_EltreumUI.glow.pixel = true
	E.db.ElvUI_EltreumUI.glow.enablepet = true

	--borders
	E.db.ElvUI_EltreumUI.borders.minimapborder = true
	E.db.ElvUI_EltreumUI.borders.playerborder = true
	E.db.ElvUI_EltreumUI.borders.playercastborder = true
	E.db.ElvUI_EltreumUI.borders.targetborder = true
	E.db.ElvUI_EltreumUI.borders.targetcastborder = true
	E.db.ElvUI_EltreumUI.borders.targettargetborder = true
	E.db.ElvUI_EltreumUI.borders.petborder = true
	E.db.ElvUI_EltreumUI.borders.totembar = true
	E.db.ElvUI_EltreumUI.borders.chatborder = true
	E.db.ElvUI_EltreumUI.borders.auraborder = true
	E.db.ElvUI_EltreumUI.borders.stanceborders = true
	E.db.ElvUI_EltreumUI.borders.petactionborders = true
	E.db.ElvUI_EltreumUI.borders.totembar = true

	--shadows
	E.db.ElvUI_EltreumUI.skins.shadows.aura = true
	E.db.ElvUI_EltreumUI.skins.shadows.ufaura = true
	E.db.ElvUI_EltreumUI.skins.shadows.actionbars = true
	E.db.ElvUI_EltreumUI.skins.shadows.raid = true

	-- Misc
	E.db.ElvUI_EltreumUI.skins.tbctalents = true
	E.db.ElvUI_EltreumUI.otherstuff.dynamicdatatext = true

	E.db.ElvUI_EltreumUI.cursors.cursor.enable = true
	E.db.ElvUI_EltreumUI.cursors.cursor.cooldown = true
	E.db.ElvUI_EltreumUI.cursors.cursor.combat = true
	E.db.ElvUI_EltreumUI.cursors.cursorcast.radius = 30
	E.db.ElvUI_EltreumUI.cursors.cursorgcd.radius = 25
	E.db.ElvUI_EltreumUI.cursors.cursorcursor.radius = 20
	E.db.ElvUI_EltreumUI.cursors.cursor.ring = 'Interface\\addons\\ElvUI_EltreumUI\\Media\\Textures\\Cursor\\ring2.tga'

	E.db.ElvUI_EltreumUI.skins.stealtheffect = true
	E.db.ElvUI_EltreumUI.otherstuff.partyraiddeath.enable = false

	E.db.ElvUI_EltreumUI.otherstuff.afkmusic.enable = true
	if E.Retail then
		E.db.ElvUI_EltreumUI.otherstuff.afkmusic.racial = false
		E.db.ElvUI_EltreumUI.otherstuff.afkmusic.playerclass = true
	else
		E.db.ElvUI_EltreumUI.otherstuff.afkmusic.racial = true
		E.db.ElvUI_EltreumUI.otherstuff.afkmusic.playerclass = false
	end

	E.db.ElvUI_EltreumUI.waypoints.waypointetasetting.enable = true
	E.db.ElvUI_EltreumUI.waypoints.waypointetasetting.autopin = true
	E.db.ElvUI_EltreumUI.waypoints.waytext.enable = true
	if E.Retail then
		E.db.ElvUI_EltreumUI.quests.enable = true
		E.db.ElvUI_EltreumUI.quests.arena = true
	elseif E.Wrath or E.TBC or E.Classic then
		E.db.ElvUI_EltreumUI.quests.enable = false
		E.db.ElvUI_EltreumUI.quests.arena = false
		E.db.ElvUI_EltreumUI.glow.enabletotem = true
	end
	E.db.ElvUI_EltreumUI.quests.rogueopen = true
	if E.Retail then
		E.db.ElvUI_EltreumUI.quests.questitems = false
	else
		E.db.ElvUI_EltreumUI.quests.questitems = true
	end
	E.db.ElvUI_EltreumUI.quests.questitemsbar1 = true
	E.db.ElvUI_EltreumUI.quests.questitemsfade = false
	--E.db.ElvUI_EltreumUI.quests.autoaccept = true  --maybe in the future?

	--loot
	E.db.ElvUI_EltreumUI.loot.loottext.enable = true
	E.db.ElvUI_EltreumUI.loot.loottext.fontsetting = true
	E.db.ElvUI_EltreumUI.loot.loottext.combatindicator = true
	E.db.ElvUI_EltreumUI.otherstuff.fastloot = true
	E.db.ElvUI_EltreumUI.loot.fastlootfilter = false
	E.db.ElvUI_EltreumUI.loot.lootwishlistfilter = false
	E.db.ElvUI_EltreumUI.loot.lootautoclose = true

	-- misc
	E.db.ElvUI_EltreumUI.otherstuff.screenshot = true
	E.db.ElvUI_EltreumUI.skins.instances.enable = true
	E.db.ElvUI_EltreumUI.skins.hidetalkinghead = true
	if IsAddOnLoaded('NameplateSCT') or IsAddOnLoaded('ElvUI_FCT') then
		E.db.ElvUI_EltreumUI.otherstuff.blizzcombattext = true
	end
	E.db.ElvUI_EltreumUI.otherstuff.dynamicxpbar = true
	E.db.ElvUI_EltreumUI.skins.playerdeath = true
	E.db.ElvUI_EltreumUI.skins.playerdeathgta = false
	E.db.ElvUI_EltreumUI.skins.playerdeathcustom = false
	E.db.ElvUI_EltreumUI.otherstuff.mpluskeys = true
	E.db.ElvUI_EltreumUI.otherstuff.eltruismroleicons = true
	E.db.ElvUI_EltreumUI.otherstuff.delete = true

	E.db.ElvUI_EltreumUI.otherstuff.gamemenu = true

	--private
	E.private.ElvUI_EltreumUI.nameplatepower.enable = true
	E.private.ElvUI_EltreumUI.nameplatepower.adjust = true

	-- primary and secondary media texture for elvui
	E.private.general.glossTex = "Asphyxia-Norm"
	E.private.general.normTex = "Asphyxia-Norm"

	ElvUI_EltreumUI:Print(L["Settings for Eltruism were applied."])
end
