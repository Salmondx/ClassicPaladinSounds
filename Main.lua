local appName = "|CPS:|r ";
local CPSFrame = CreateFrame("FRAME") CPSFrame:Hide()

local playerGUID = UnitGUID("player");

local soundsToMute = {
	-- Paladin
	-- holy precast
	2066675,
	2066676,
	2066677,
	2066678,
	2066679,
	-- holy wrath cast
	1377110,
	1377111,
	1377112,
	1377113,
	1377114,
	1377115,
	-- crusader strike
	1253375,
	1253376,
	1253377,
	1253378,
	1253379,
	1253380,
	1253381,
	1253382,
	1253383,
	1253384,
	-- judgement
	1250591,
	1250592,
	1250593,
	1250594,
	1250595,
	1250596,
	1250597,
	1250598,
	1250599,
	1250600,
	-- flash of light
	1936458,
	1936459,
	1965755,
	1965756,
	1965757,
	-- consecration
	1258133,
	1258134,
	1258135,
	-- word of glory
	2066670,
	2066671,
	2066672,
	2066673,
	2066674,
	-- templar's verdict
	2130120,
	2130121,
	2130122,
	2130123,
	2130124,
	-- blade of justice
	1254585,
	1254586,
	1254587,
	1254588,
	-- divine storm
	1264929,
	1264930,
	1264931,
	1264932,
	1264933,
	1360126,
	1360127,
	1360128,
	1360129,
	1360130,
	-- avenging wrath
	1955772,
};

local _debug = true; -- Enable to Display debug messages.
function errTxt(msg)
	if ( _debug == false ) then
		print(appName.. " _DEBUG : "..msg);
	end
end

function MuteSounds()
	for i, id in ipairs(soundsToMute) do
		MuteSoundFile(id);
	end
end

function CPSFrame:ADDON_LOADED(arg1)
	if arg1 ~= "CPS" then
    return
	end
	self:UnregisterEvent("ADDON_LOADED")
	print(appName.. "Loaded");
	MuteSounds();
end

local TemplarsVerdictSounds = {
	"Interface\\Addons\\CPS\\Sounds\\TemplarsVerdict1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\TemplarsVerdict2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\TemplarsVerdict3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\TemplarsVerdict4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\TemplarsVerdict5.ogg",
};

local SwingSounds = {
	"Interface\\Addons\\CPS\\Sounds\\Swing1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Swing2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Swing3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Swing4.ogg"
};

local Swords2HSwings = {
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit5.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit6.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit7.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit8.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit9.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Hit10.ogg",
};

local Swords2HSwingsCrit = {
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Crit1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Crit2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Crit3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Crit4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Swords_2H\\Crit5.ogg",
};

local Maces2HSwings = {
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit5.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit6.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit7.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit8.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit9.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Hit10.ogg",
};

local Maces2HSwingsCrit = {
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Crit1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Crit2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Crit3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Crit4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Maces_2H\\Crit5.ogg",
};

local Axes2HSwings = {
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit5.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit6.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit7.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit8.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit9.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Hit10.ogg",
};

local Axes2HSwingsCrit = {
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Crit1.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Crit2.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Crit3.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Crit4.ogg",
	"Interface\\Addons\\CPS\\Sounds\\Weapons\\Axes_2H\\Crit5.ogg",
};

-- contains IDs of spells that should play a Rend sound on crit
local CritEffect = {
	[35395] = true,
	[20271] = true,
	[85256] = true,
	-- [12294] = true,
};

local TransmogLocationMixin={}
local transmogLocation = CreateFromMixins(TransmogLocationMixin)
transmogLocation.slotID=16
transmogLocation.type=0
transmogLocation.modification=0

local previousCritTime = 0;
local autoAttackCrit = false;

function PlaySwingSound()
	local critical = autoAttackCrit;
	local itemType = DetectWeaponType();
	if itemType == "2H Mace" then
		if critical then
			PlaySoundFile(Maces2HSwingsCrit[math.random(#Maces2HSwingsCrit)], "SFX");
		else
			PlaySoundFile(Maces2HSwings[math.random(#Maces2HSwings)], "SFX");
		end
	elseif itemType == "2H Sword" then
		if critical then
			PlaySoundFile(Swords2HSwingsCrit[math.random(#Swords2HSwingsCrit)], "SFX");
		else
			PlaySoundFile(Swords2HSwings[math.random(#Swords2HSwings)], "SFX");
		end
	elseif itemType == "2H Axe" then
		if critical then
			PlaySoundFile(Axes2HSwingsCrit[math.random(#Axes2HSwingsCrit)], "SFX");
		else
			PlaySoundFile(Axes2HSwings[math.random(#Axes2HSwings)], "SFX");
		end
	end;

	if critical and CritTimeoutPassed() then
		PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\Vengeance.ogg", "SFX");
		previousCritTime = time();
	end
end

function DetectWeaponType()
	local baseSourceID, baseVisualID, appliedSourceID, appliedVisualID, pendingSourceID, pendingVisualID, hasUndo, isHideVisual, itemSubclass = C_Transmog.GetSlotVisualInfo(transmogLocation);
	if itemSubclass == 5 then
		return "2H Mace";
	elseif itemSubclass == 8 then
		return "2H Sword";
	elseif itemSubclass == 1 then
		return "2H Axe";
	else
		return;
	end;
end

function CritTimeoutPassed()
	local currentCritTime = time();
	return (currentCritTime - previousCritTime) > 20;
end

function PlayCritSoundIfRequired()
	local ts, subevent, _, sourceGUID = CombatLogGetCurrentEventInfo();
	if sourceGUID ~= playerGUID then
		return;
	end

	if subevent == "SWING_DAMAGE" then
		local amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing, isOffHand = select(12, CombatLogGetCurrentEventInfo());
		autoAttackCrit = critical;
		C_Timer.After(0.4, PlaySwingSound);
		return;
	end

	if subevent == "SPELL_DAMAGE" then
		local spellId, _, _, _, _, _, _, _, _, critical = select(12, CombatLogGetCurrentEventInfo());
		if spellId == 269937 then
			PlaySoundFile(SwingSounds[math.random(#SwingSounds)], "SFX");
		end

		if CritEffect[spellId] and critical and CritTimeoutPassed() then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\Vengeance.ogg", "SFX");
			previousCritTime = time();
		end
	end
end
--
function CPSFrame:UNIT_SPELLCAST_SUCCEEDED(unitID, lineID, spellID)
	if unitID == "player" then
		errTxt("Spell cast Succeeded by ".. unitID);
		errTxt("Spell Id: " .. spellID);

		-- Begin Crusader Strike
		if spellID == 35395 then
			PlaySoundFile(SwingSounds[math.random(#SwingSounds)], "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\Decisive.ogg", "SFX");
		end

		-- Begin Judgement
		if spellID == 20271 or spellID == 183218 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyCast.ogg", "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyImpact.ogg", "SFX");
		end

		-- Flash of Light
		if spellID == 19750 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyLightImpact.ogg", "SFX");
		end

		-- Hammer of Justice
		if spellID == 853 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyCast.ogg", "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HoJ.ogg", "SFX");
		end

		-- Consecration
		if spellID == 26573 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyImpactLow.ogg", "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyCast.ogg", "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\Flamestrike.ogg", "SFX");
		end

		-- Word of glory
		if spellID == 85673 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyLight.ogg", "SFX");
		end

		-- Templar's Verdict
		if spellID == 85256 then
			PlaySoundFile(TemplarsVerdictSounds[math.random(#TemplarsVerdictSounds)], "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\Decisive.ogg", "SFX");
		end

		-- Blade of Justice
		if spellID == 184575 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyCast.ogg", "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\Exorcism.ogg", "SFX");
		end

		-- Divine Storm
		if spellID == 53385 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\DivineStorm.ogg", "SFX");
		end

		-- avenging wrath
		if spellID == 31884 then
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyCast.ogg", "SFX");
			PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\AvengingWrath.ogg", "SFX");
		end

		-- wake of ashes
		-- if spellID == 255937 then
		-- 	PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyCast.ogg", "SFX");
		-- 	PlaySoundFile("Interface\\Addons\\CPS\\Sounds\\HolyImpact.ogg", "SFX");
		-- end
	end
end

-- Not Used. Was an attempt to play crit related sounds but without Rend sounds
-- on retail it sounds bad. To much ambient noise on retail comparing to Classic
function CPSFrame:COMBAT_LOG_EVENT_UNFILTERED()
	PlayCritSoundIfRequired();
end

CPSFrame:SetScript("OnEvent", function(self, event, ...) return self[event](self, ...) end)
CPSFrame:RegisterEvent("ADDON_LOADED")
CPSFrame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
CPSFrame:RegisterEvent("PLAYER_DEAD")
CPSFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
