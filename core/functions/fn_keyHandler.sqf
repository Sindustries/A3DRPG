/*
	fn_keyHandler
	Author: Sinbane
	Description:
	Handles all custom key controls
	https://resources.bisimulations.com/wiki/DIK_KeyCodes
*/
private ["_ID","_code","_shift","_ctrl","_alt","_handled"];
//-----------------------------------
_ID = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrl = _this select 3;
_alt = _this select 4;
_handled = false;
//-----------------------------------
switch (_code) do {
	//Y-menu
	/*case 21: {
		COMING SOON ™
	};*/
	
	//H - Holster
	case 35: {
        if (!_shift && !_ctrl && !_alt && !(currentWeapon player isEqualTo "")) then {
			_handled = true;
            curWep = currentWeapon player;
            player action ["SwitchWeapon", player, player, 100];
        };
        if (!_shift && _ctrl && !_alt && !isNil "curWep" && {!(curWep isEqualTo "")}) then {
            if (curWep in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				_handled = true;
                player selectWeapon curWep;
            };
        };
    };
	
	//O - Earplugs
    case 24: {
        if (_shift && !_ctrl && !_alt) then {
            if (soundVolume != 1) then {
				_handled = true;
                1 fadeSound 1;
            } else {
				_handled = true;
                1 fadeSound 0.25;
            };
        };
    };
};

_handled;

//-----------------------------------