local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))
local _G = _G
local LSM = E.Libs.LSM

-- Statusbar
LSM:Register("statusbar", "Eltreum-Blank", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-Blank.tga]])
LSM:Register("statusbar", "Eltreum-Elvui-Norm", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-Elvui-Norm.tga]])
LSM:Register("statusbar", "Asphyxia-Norm", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\AsphyxiaNorm.tga]])
LSM:Register("statusbar", "Eltreum-Stripes", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-Stripes.tga]])

-- Fonts
LSM:Register("font", "Exo2 Extra Bold", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\Exo2-ExtraBold.ttf]])
LSM:Register("font", "GothamNarrow Black", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\GothamNarrowBlack.ttf]])
LSM:Register('font', "Kimberley", [[Interface\AddOns\ElvUI_EltreumUI\Media\Fonts\Kimberley.ttf]])
LSM:Register("font", "Roboto", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\Roboto-Bold.ttf]])

--extra media that has to be loaded anyway
function ElvUI_EltreumUI:ExtraMedia()
	-- Statusbar
	LSM:Register("statusbar", "Eltreum7pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum7pixel.tga]])
	LSM:Register("statusbar", "Eltreum-Class-DemonHunter", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-DH.tga]])
	LSM:Register("statusbar", "Eltreum-Class-DeathKnight", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-DK.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Druid", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-DR.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Hunter", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-HT.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Mage", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-MG.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Monk", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-MK.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Paladin", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-PL.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Rogue", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-RG.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Shaman", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-SH.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Warrior", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-WA.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Warlock", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-WL.tga]])
	LSM:Register("statusbar", "Eltreum-Class-Priest", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-PR.tga]])

	-- Sound
	LSM:Register("sound", "bruh", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\bruh.ogg]])
	LSM:Register("sound", "Frankly thats a skill issue", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\ionskillissue.ogg]])

	-- Border
	LSM:Register("border", "better-blizzard-border-small-alternate", [[Interface\Addons\ElvUI_EltreumUI\Media\border\better-blizzard-border-small-alternate.tga]])
end

--all media below this is only loaded when selected
function ElvUI_EltreumUI:ExtraMediaStatusBar()
	LSM:Register("statusbar", "Eltreum-bottom", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-bottom.tga]])
	LSM:Register("statusbar", "Eltreum-left", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-left.tga]])
	LSM:Register("statusbar", "Eltreum-right", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-right.tga]])
	LSM:Register("statusbar", "Eltreum-top", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-top.tga]])
	LSM:Register("statusbar", "Eltreum1pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum1pixel.tga]])
	LSM:Register("statusbar", "Eltreum2pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum2pixel.tga]])
	LSM:Register("statusbar", "Eltreum3pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum3pixel.tga]])
	LSM:Register("statusbar", "Eltreum4pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum4pixel.tga]])
	LSM:Register("statusbar", "Eltreum5pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum5pixel.tga]])
	LSM:Register("statusbar", "Eltreum6pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum6pixel.tga]])
	LSM:Register("statusbar", "Eltreum8pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum8pixel.tga]])
	LSM:Register("statusbar", "Eltreum9pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum9pixel.tga]])
	LSM:Register("statusbar", "Eltreum10pixel", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum10pixel.tga]])
	LSM:Register("statusbar", "Eltreum-Dark", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-Dark.tga]])
	LSM:Register("statusbar", "Eltreum-20%", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-20pc.tga]])
	LSM:Register("statusbar", "Eltreum-30%", [[Interface\Addons\ElvUI_EltreumUI\Media\Statusbar\Eltreum-30pc.tga]])
end

function ElvUI_EltreumUI:ExtraMediaFonts()
	LSM:Register("font", "Good Brush", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\GoodBrush.ttf]])
	LSM:Register("font", "GothamXNarrow Black", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\GothamXNarrowBlack.ttf]])
	LSM:Register("font", "JosefinSans-Bold", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\JosefinSans-Bold.ttf]])
	LSM:Register("font", "Neuropol", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\neuropolxrg.ttf]])
	LSM:Register("font", "OptimusPrinceps", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\OptimusPrinceps.ttf]])
	LSM:Register("font", "Pricedown", [[Interface\Addons\ElvUI_EltreumUI\Media\Fonts\pricedown.ttf]])
end

function ElvUI_EltreumUI:ExtraMediaSounds()
	LSM:Register("sound", "You_Died", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\You_Died.ogg]])
	LSM:Register("sound", "Todd Horward - It just works", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\Itjustworks.ogg]])
	LSM:Register("sound", "Will Smith - Ah ahaha", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\WillSmith-Ahaha.ogg]])
	LSM:Register("sound", "Will Smith - Rewind", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\WillSmith-Rewind-Long.ogg]])
	LSM:Register("sound", "Will Smith - That's Hot", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\WillSmith-Thats-hot.ogg]])
	LSM:Register("sound", "Oof", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\oof.ogg]])
	LSM:Register("sound", "This is no time for caution", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\caution.ogg]])
	LSM:Register("sound", "Its not Possible", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\necessary.ogg]])
	LSM:Register("sound", "We are too late", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\Weretoolate.ogg]])
	LSM:Register("sound", "Shame", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\shame.ogg]])
	LSM:Register("sound", "Queen Azshara - What a shame", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\QueenAzsharaWhatAShame.ogg]])
	LSM:Register("sound", "Queen Azshara - How disappointing", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\QueenAzsharaDissapointing.ogg]])
	LSM:Register("sound", "! - Metal Gear Solid", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\metalgear.ogg]])
	LSM:Register("sound", "Wow", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\wow.ogg]])
	LSM:Register("sound", "GTA - Wasted", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\wasted.ogg]])
	LSM:Register("sound", "GTA2 - Wasted", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\wasted2.ogg]])
	LSM:Register("sound", "Mario Game Over", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\mariodeath.ogg]])
	LSM:Register("sound", "Xera", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\xera.ogg]])
	LSM:Register("sound", "Mission Failed", [[Interface\Addons\ElvUI_EltreumUI\Media\Sound\codmissionfailed.ogg]])

end

function ElvUI_EltreumUI:ExtraMediaTextures()
	LSM:Register("texture", "Eltreum-Death Knight", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\DeathKnight.tga]])
	LSM:Register("texture", "Eltreum-Demon Hunter", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\DemonHunter.tga]])
	LSM:Register("texture", "Eltreum-Druid", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Druid.tga]])
	LSM:Register("texture", "Eltreum-Hunter", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Hunter.tga]])
	LSM:Register("texture", "Eltreum-Mage", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Mage.tga]])
	LSM:Register("texture", "Eltreum-Monk", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Monk.tga]])
	LSM:Register("texture", "Eltreum-Paladin", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Paladin.tga]])
	LSM:Register("texture", "Eltreum-Priest", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Priest.tga]])
	LSM:Register("texture", "Eltreum-Rogue", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Rogue.tga]])
	LSM:Register("texture", "Eltreum-Shaman", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Shaman.tga]])
	LSM:Register("texture", "Eltreum-Warlock", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Warlock.tga]])
	LSM:Register("texture", "Eltreum-Warrior", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\Classes\Warrior.tga]])

	-- Background
	LSM:Register("background", "Eltreum-StealthOverlay", [[Interface\Addons\ElvUI_EltreumUI\Media\Textures\StealthOverlay.tga]])
end

function ElvUI_EltreumUI:ExtraMediaBorders()
	LSM:Register("border", "aura_border", [[Interface\Addons\ElvUI_EltreumUI\Media\border\aura_border.tga]])
	LSM:Register("border", "border-glow-overlay", [[Interface\Addons\ElvUI_EltreumUI\Media\border\border-glow-overlay.tga]])
	LSM:Register("border", "RenaitreBeveled10", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreBeveled10.tga]])
	LSM:Register("border", "RenaitreBeveled10x", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreBeveled10x.tga]])
	LSM:Register("border", "RenaitreFade10", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade10.tga]])
	LSM:Register("border", "RenDefine", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenDefine.tga]])
	LSM:Register("border", "RenFade", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenFade.tga]])
	LSM:Register("border", "RenFadeB", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenFadeB.tga]])
	LSM:Register("border", "fer01", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer1.tga]])
	LSM:Register("border", "fer02", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer2.tga]])
	LSM:Register("border", "fer03", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer3.tga]])
	LSM:Register("border", "fer04", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer4.tga]])
	LSM:Register("border", "fer05", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer5.tga]])
	LSM:Register("border", "fer06", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer6.tga]])
	LSM:Register("border", "fer07", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer7.tga]])
	LSM:Register("border", "fer08", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer8.tga]])
	LSM:Register("border", "fer09", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer9.tga]])
	LSM:Register("border", "fer10", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer10.tga]])
	LSM:Register("border", "fer11", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer11.tga]])
	LSM:Register("border", "fer12", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer12.tga]])
	LSM:Register("border", "fer13", [[Interface\Addons\ElvUI_EltreumUI\Media\border\fer13.tga]])
	LSM:Register("border", "RenaitreBeveled11", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreBeveled11.tga]])
	LSM:Register("border", "RenaitreBeveled11x", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreBeveled11x.tga]])
	LSM:Register("border", "RenaitreFade10blk", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade10blk.tga]])
	LSM:Register("border", "RenaitreFade10x", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade10x.tga]])
	LSM:Register("border", "RenaitreFade10xblk", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade10xblk.tga]])
	LSM:Register("border", "RenaitreFade11", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade11.tga]])
	LSM:Register("border", "RenaitreFade11blk", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade11blk.tga]])
	LSM:Register("border", "RenaitreFade11x", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade11x.tga]])
	LSM:Register("border", "RenaitreFade11xblk", [[Interface\Addons\ElvUI_EltreumUI\Media\border\RenaitreFade11xblk.tga]])
end
