/*
    fn_loadOptions
    Author: Sinbane

    Description:
    Gives player starting gear based on whatever they choose
*/
//-----------------------------------
_options = _this select 0;

switch {_options} do {
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
	case 2: {
		
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
_crate addWeaponCargoGlobal ["arifle_CTAR_blk_F",1];
_crate addWeaponCargoGlobal ["OPTRE_M6G",1];
_crate additemCargoGlobal ["OPTRE_M6G_Flashlight",1];
_crate addMagazineCargoGlobal ["30Rnd_580x42_Mag_Tracer_F",2];
_crate addMagazineCargoGlobal ["OPTRE_8Rnd_127x40_Mag",3];
_crate addBackpackCargoGlobal ["B_TacticalPack_blk",1];
_crate addItemCargoGlobal ["OPTRE_Biofoam",3];
_crate addItemCargoGlobal ["OPTRE_Glasses_Cigar",1];
_crate addItemCargoGlobal ["itemMap",1];
_crate addItemCargoGlobal ["itemWatch",1];
_crate addItemCargoGlobal ["itemCompass",1];