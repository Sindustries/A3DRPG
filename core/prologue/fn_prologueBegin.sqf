/*
	fn_prologueBegin.sqf
	Author: Sinbane
	Description:
	Begin's the prologue by spawning a vehicle nearby and giving the player a task to collect it
*/
//-----------------------------------
//-SPAWN THE CAR
private ["_carSel","_cfg","_i","_cfgName","_roads","_road","_spawncar","_spawnPos"];

_carSel = [];
_cfg = (configFile >> "CfgVehicles");
for "_i" from 0 to ((count _cfg)-1) do {
	if (isClass (_cfg select _i)) then {
		_cfgName = configName (_cfg select _i);	
		if ((getText((_cfg select _i) >> "dlc") isEqualTo "OPTRE")) then {
			if (_cfgName isKindOf "OPTRE_Genet" && (getNumber ((_cfg select _i) >> "scope") isEqualTo 2) && (getNumber ((_cfg select _i) >> "isUav")) isEqualTo 0) then {
				_carSel pushBackUnique _cfgName;
			};
		};
	};
};

//FIND ROADS
_roads = (RPG_startLoc select 1) nearRoads ((RPG_startLoc select 2) select 0);
if ((count _roads) > 0) then {
	_road = (selectRandom _roads);
	_spawncar = (selectRandom _carSel) createVehicle (getPos _road);
	_spawncar setDir (getDir _road);
	_spawncar setPos (getPos _spawncar);	
} else {
	_spawnPos = [(RPG_startLoc select 1),0,((RPG_startLoc select 2) select 0)] call RPG_fnc_findPos;
	_spawncar = (selectRandom _carSel) createVehicle _spawnPos;
	_spawncar setDir (random 360);
	_spawncar setPos (getPos _spawncar);	
};

[_spawncar] call RPG_fnc_emptyVeh;

//-----------------------------------
//-CREATE TASK AND ATTACH TO CAR

_task = player createSimpleTask ["task_prologueBegin"];
_task setSimpleTaskDescription ["Kill all enemies to crown your team champions of the games","Win The Games",""];
_task setTaskState "Assigned";
["TaskAssigned",["","Win The Games"]] call bis_fnc_showNotification;