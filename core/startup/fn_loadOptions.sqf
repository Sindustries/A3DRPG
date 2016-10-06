/*
    fn_loadOptions
    Author: Sinbane

    Description:
    Gives player starting gear based on whatever they choose
*/
private ["_option","_crate","_weapons","_magazines","_items","_uniform","_vest","_helmet","_backpack","_glasses"];
//-----------------------------------
_crate = _this select 0;

switch {lbCurSel 12224} do {
	case 0: {
		_weapons = [["OPTRE_MA5B",1],["OPTRE_M6G",1]];
		_magazines = [["OPTRE_60Rnd_762x51_Mag",4],["OPTRE_8Rnd_127x40_Mag",3]];
		_items = [["OPTRE_MA5B_AmmoCounter",1],["OPTRE_MA5B_Flashlight",1],["OPTRE_M6G_Flashlight",1],["OPTRE_Biofoam",1]];
		_uniform = "OPTRE_UNSC_Marine_Uniform";
		_vest = "OPTRE_UNSC_Marine_Vest";
		_helmet = "OPTRE_UNSC_Marine_Helmet_Vacuum";
		_backpack = "";	
		_glasses = "OPTRE_HUD_w_Glasses";
	};
	case 1: {
		
	};
	case 2: {
		
	};
	case 3: {
		
	};
};
//-----------------------------------
player addUniform _uniform;
player addVest _vest;
player addHeadgear _helmet;
player addGoggles _glasses;
player linkItem "itemMap";
player linkItem "itemWatch";
player linkItem "itemCompass";
{
	_crate addWeaponCargoGlobal _x;
} forEach _weapons;
{
	_crate addMagazineCargoGlobal _x;
} forEach _magazines;
{
	_crate addItemCargoGlobal _x;
} forEach _items;
_crate addBackpackCargoGlobal _backpack;
//-----------------------------------
spawnChosen = true;
//-----------------------------------