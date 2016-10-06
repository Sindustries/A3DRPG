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
obj _oldUnit = player;
addSwitchableUnit _newUnit;
setPlayable _newUnit;
selectPlayer _newUnit;
removeSwitchableUnit _oldUnit;

systemChat format["Old: %1 | New: %2",_oldUnit,_newUnit];

deleteVehicle _oldUnit;
removeUniform player;
removeVest player;
removeHeadgear player;
removeBackpack player;
removeAllWeapons player;
removeAllAssignedItems player;
removeGoggles player;
//-----------------------------------
player addUniform "U_BG_Guerilla2_1";
player addHeadgear "H_Cap_blk_CMMG";

if (_option isEqualTo 1) then {
	player setVariable ["RPG_credits",1000,true];
	_weapons = [["OPTRE_MA5B",1],["OPTRE_M6G",1]];
	_magazines = [["OPTRE_60Rnd_762x51_Mag",4],["OPTRE_8Rnd_127x40_Mag",3]];
	_items = [["OPTRE_MA5B_AmmoCounter",1],["OPTRE_MA5B_Flashlight",1],["OPTRE_M6G_Flashlight",1],["OPTRE_Biofoam",3]];
	_crate addItemCargoGlobal ["OPTRE_UNSC_Marine_Uniform",1];
	_crate addItemCargoGlobal ["OPTRE_UNSC_Marine_Vest",1];
	_crate addItemCargoGlobal ["OPTRE_UNSC_Marine_Helmet_Vacuum",1];
	_crate addItemCargoGlobal ["OPTRE_HUD_w_Glasses",1];
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