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
        if (!_shift && !_ctrl && !_alt && !isNil "curWep" && {!(curWep isEqualTo "")}) then {
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
	
	//U Key
    case 22: {
        if (!_shift && !_ctrl && !_alt) then {
			private ["_veh","_house","_locked","_owner"];
			if (isNull objectParent player) then {
				_veh = cursorObject;
			} else {
				_veh = vehicle player;
			};
            if (_veh isKindOf "House_F" && _veh in RPG_safehouses && player distance _veh < 10) then {
				_house = cursorObject;
				_locked = (_house getVariable ["bis_disabled_Door_1",1]);
				_doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
                if (_locked isEqualTo 1) then {
					for "_i" from 0 to _doors do {
						_house setVariable [format["bis_disabled_Door_%1",_i],0,false];
					};
					hint "House Unlocked";
				} else {
					for "_i" from 0 to _doors do {
						_house setVariable [format["bis_disabled_Door_%1",_i],1,true];
					};
					hint "House Locked";
				};
				_handled = true;
            };
			if (_veh isKindOf "Land" || _veh isKindOf "Sea" || _veh isKindOf "Air") then {
				_owner = (_veh getVariable ["RPG_owner",0]);
				if ((getPlayerUID player) isEqualTo _owner) then {
					if (vehicle player isEqualTo _veh || player distance _veh < 6) then {
						_locked = locked _veh;
						if (_locked isEqualTo 0) then {
							_veh lock 2;
							hint "Vehicle Locked";
						};
						if (_locked isEqualTo 2) then {
							_veh lock 0;
							hint "Vehicle Unlocked";
						};
						_handled = true;
					};
				};
			};
        };
    };
};

_handled;

//-----------------------------------