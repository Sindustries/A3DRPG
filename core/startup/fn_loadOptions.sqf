/*
    fn_loadOptions
    Author: Sinbane

    Description:
    Gives player starting gear based on whatever they choose
*/
private ["_option","_newUnit","_oldUnit","_crate","_weapons","_magazines","_items","_uniform","_vest","_helmet","_backpack","_glasses"];
//-----------------------------------
_option = _this select 0;
_newUnit = _this select 1;
_crate = _this select 2;
//-----------------------------------
//-SWITCH UNIT
_oldUnit = player;
addSwitchableUnit _newUnit;
setPlayable _newUnit;
selectPlayer _newUnit;
removeSwitchableUnit _oldUnit;
deleteVehicle _oldUnit;
removeUniform player;
removeVest player;
removeHeadgear player;
removeBackpack player;
removeAllWeapons player;
removeAllAssignedItems player;
removeGoggles player;
//-----------------------------------
if (_option isEqualTo 1) then {
	player addUniform "U_BG_Guerilla2_1";
	player addHeadgear "H_Cap_blk_CMMG";
	player setVariable ["RPG_credits",1000,true];
	_weapons = [["OPTRE_MA5B",1],["OPTRE_M6G",1]];
	_magazines = [["OPTRE_60Rnd_762x51_Mag",4],["OPTRE_8Rnd_127x40_Mag",3]];
	_items = [
		["OPTRE_MA5B_AmmoCounter",1],
		["OPTRE_MA5B_Flashlight",1],
		["OPTRE_M6G_Flashlight",1],
		["OPTRE_Biofoam",3],
		["OPTRE_UNSC_Marine_Uniform",1],
		["OPTRE_UNSC_Marine_Vest",1],
		["OPTRE_UNSC_Marine_Helmet_Vacuum",1],
		["OPTRE_HUD_w_Glasses",1],
		["Rangefinder",1],
		["itemRadio",1]	
	];
};
if (_option isEqualTo 2) then {
	player addUniform "OPTRE_Ins_ER_rolled_surplus_black";
	player setVariable ["RPG_credits",500,true];
	_weapons = [["OPTRE_M45",1],["OPTRE_M6G",1]];
	_magazines = [["OPTRE_6Rnd_8Gauge_Pellets",6],["OPTRE_8Rnd_127x40_Mag",3],["OPTRE_M9_Frag",2]];
	_items = [
		["OPTRE_M45_Flashlight",1],
		["OPTRE_M7_Sight",1],
		["OPTRE_M6G_Flashlight",1],
		["OPTRE_Biofoam",3],
		["OPTRE_INS_UNSC_vest11",1],
		["OPTRE_h_PatrolCap_Brown",1],
		["Binocular",1],
		["itemRadio",1]
	];
	_crate addBackPackCargoGlobal ["B_Kitbag_rgr",1];
};
if (_option isEqualTo 3) then {
	player addUniform "U_IG_Guerilla2_1";
	player setVariable ["RPG_credits",2500,true];
	_weapons = [["OPTRE_M7",1],["OPTRE_M6G",1]];
	_magazines = [["OPTRE_48Rnd_5x23mm_Mag",6],["OPTRE_8Rnd_127x40_Mag",3],["OPTRE_M9_Frag",3],["OPTRE_M2_Smoke",2]];
	_items = [
		["OPTRE_M7_silencer",1],
		["OPTRE_M7_Laser",1],
		["OPTRE_M7_Sight",1],
		["OPTRE_M6_silencer",1],
		["OPTRE_M6G_Flashlight",1],
		["OPTRE_M6G_Scope",1],
		["OPTRE_Biofoam",6],
		["V_PlateCarrier1_blk",1],
		["H_Bandanna_gry",1],
		["OPTRE_EyePiece",1],
		["Rangefinder",1],
		["itemRadio",1]
	];
	_crate addBackPackCargoGlobal ["B_AssaultPack_blk",1];
};
if (_option isEqualTo 4) then {
	player addUniform "U_C_WorkerCoveralls";
	player addGoggles "G_Shades_Blue";
	player setVariable ["RPG_credits",100,true];
	_weapons = [["srifle_DMR_06_olive_F",1]];
	_magazines = [["20Rnd_762x51_Mag",3]];
	_items = [
		["optic_KHS_old",1],
		["Binocular",1],
		["H_Cap_red",1]
	];
	_crate addBackPackCargoGlobal ["B_TacticalPack_blk",1];
};
if (_option isEqualTo 5) then {
	player addUniform "U_Marshal";
	player addHeadgear "H_StrawHat";
	player addGoggles "G_Aviator";
	player setVariable ["RPG_credits",10000,true];
	_weapons = [["SMG_05_F",1],["hgun_Rook40_F",1];
	_magazines = [["30Rnd_9x21_Mag_SMG_02",4]];
	_items = [
		["OPTRE_v_Ins_vest",1],
		["OPTRE_Biofoam",1],
		["optic_Aco",1],
		["OPTRE_NVG",1]
	];
};
//-----------------------------------
player linkItem "itemMap";
player linkItem "itemWatch";
player linkItem "itemCompass";
if ((count _weapons) > 0) then {
	{
		_crate addWeaponCargoGlobal [(_x select 0),(_x select 1)];
	} forEach _weapons;
};
if ((count _magazines) > 0) then {
	{
		_crate addMagazineCargoGlobal [(_x select 0),(_x select 1)];
	} forEach _magazines;
};
if ((count _items) > 0) then {
	{
		_crate addItemCargoGlobal [(_x select 0),(_x select 1)];
	} forEach _items;
};
//-----------------------------------
diag_log "-- CLASS CHOSEN --"; 
spawnChosen = true;
closeDialog 0;
//-----------------------------------