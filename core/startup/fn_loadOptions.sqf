/*
    fn_loadOptions
    Author: Sinbane

    Description:
    Gives player starting gear based on whatever they choose
*/
private ["_option","_crate","_weapons","_magazines","_items","_uniform","_vest","_helmet","_backpack","_glasses"];
//-----------------------------------
_option = _this select 0;
_crate = _this select 1;

if (_option isEqualTo 1) then {
	_weapons = [["OPTRE_MA5B",1],["OPTRE_M6G",1]];
	_magazines = [["OPTRE_60Rnd_762x51_Mag",4],["OPTRE_8Rnd_127x40_Mag",3]];
	_items = [["OPTRE_MA5B_AmmoCounter",1],["OPTRE_MA5B_Flashlight",1],["OPTRE_M6G_Flashlight",1],["OPTRE_Biofoam",1]];
	player addUniform "OPTRE_UNSC_Marine_Uniform";
	player addVest "OPTRE_UNSC_Marine_Vest";
	player addHeadgear "OPTRE_UNSC_Marine_Helmet_Vacuum";
	player addGoggles "OPTRE_HUD_w_Glasses";
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
spawnChosen = true;
//-----------------------------------