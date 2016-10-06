/*
	fn_getVehicles.sqf
	Author: Sinbane
	Description:
	Fills array with vehicles for a certain faction
	OPTRE Factions:
	
	OPTRE_UNSC
	OPTRE_Ins
	OPTRE_UEG_Civ
	OPTRE_PD
*/
//-----------------------------------
params [
	["_type","None",[""]],
	["_faction","",[""]],
	["_isUav",0,[0]]
];
if (_type isEqualTo "None") exitWith {};
if (_faction isEqualTo "") exitWith {};
//-----------------------------------
_return = [];
_cfg = (configFile >> "CfgVehicles");
for "_i" from 0 to ((count _cfg)-1) do {
	if (isClass (_cfg select _i)) then {
		_cfgName = configName (_cfg select _i);	
		if ((getText((_cfg select _i) >> "dlc") isEqualTo "OPTRE")) then {
			if ((getText((_cfg select _i) >> "faction") isEqualTo _faction)) then {
				if (_cfgName isKindOf _type && (getNumber ((_cfg select _i) >> "scope") isEqualTo 2) && (getNumber ((_cfg select _i) >> "isUav")) isEqualTo _isUav) then {
					_return pushBackUnique _cfgName;
				};
			};
		};
	};
};
//-----------------------------------
_return;