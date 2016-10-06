/*
	A3DRPG
	Arma 3 Dynamic Role Playing Game
	Author: Sinbane
*/
//-----------------------------------
waitUntil {isPlayer player};
enableSaving [false, false];
enableSentences false;
enableEnvironment false;
player enableSimulation false;
player allowDamage false;
player enableStamina false;
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------------------------------- A3DRPG CLIENT INIT ----------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------
RPG_clientMarkers = [];
//-----------------------------------
waitUntil {time > 0};
cutText ["", "BLACK FADED", 999];
setDate [2155, 7, 4, 7, 0];
waitUntil {RPG_serverReady isEqualTo true};
diag_log "-- SERVER READY, PREPARING.. --"; 
//-----------------------------------
removeUniform player;
removeVest player;
removeHeadgear player;
removeBackpack player;
removeAllWeapons player;
removeAllAssignedItems player;
removeGoggles player;
//-----------------------------------
//-SPAWN PLAYER
diag_log "-- FINDING SPAWN BUILDING.. --";
private ["_spawned","_location","_spawnableHouses","_houseList","_buildingPos","_house","_housePos","_spawnPos","_crate","_cratePos"];
_spawned = false;
_location = (selectRandom RPG_villages);
_spawnableHouses = [];
_houseList = nearestObjects [(_location select 1), ["house"], ((_location select 2) select 0)];
if ((count _houseList) > 0) then {
	{		
		_buildingPos = _x buildingPos -1;
		if ((count _buildingPos) >= 2) then {
			_spawnableHouses pushBack _x;
		};	
	} forEach _houseList;
	if ((count _spawnableHouses) > 0) then {
		private ["_playerPosFound","_markerName","_marker"];
		_playerPosFound = false;
		_house = selectRandom _spawnableHouses;
		_housePos = _house buildingPos -1;
		_cratePos = selectRandom _housePos;
		_crate = "OPTRE_Ammo_SupplyPod_Empty" createVehicle [0,0,0];
		_crate setPos _cratePos;
		while {!_playerPosFound} do {
			_spawnPos = selectRandom _housePos;
			if (_spawnPos != _cratePos) then {
				player setPos _spawnPos;
				_markerName = format["House %1",(getPos _house)];
				_marker = createMarkerLocal [_markerName, (getPos _house)];
				_marker setMarkerShapeLocal "ICON";
				_marker setMarkerTypeLocal "loc_Tourism";
				_marker setMarkerColorLocal "ColorBlufor";
				_marker setMarkerSizeLocal [0.75,0.75];
				_marker setMarkerAlphaLocal 1;
				_marker setMarkerTextLocal "Safehouse";
				RPG_clientMarkers pushBack _marker;
			};
		};
		_spawned = true;
	};
};
if (!_spawned) then {
	_spawnPos = [(_location select 1),0,((_location select 2) select 0)] call RPG_fnc_findPos;
	_cratePos = [_spawnPos,2,10] call RPG_fnc_findPos;
	_crate = "OPTRE_Ammo_SmallCache_Empty" createVehicle [0,0,0];
	_crate setPos _cratePos;
	player setPos _spawnPos;
	_spawned = true;
};
player setDir (getDir _crate);
[_crate] call RPG_fnc_emptyVeh;
spawnChosen = false;
while {!spawnChosen} do {
	[_crate] call RPG_fnc_startupMenu;
	waitUntil {dialog};
	waitUntil {!dialog};
};
diag_log "-- PLAYER SPAWNED --";
diag_log format["-- SPAWN LOCATION: %1 --",(_location select 0)];
//-----------------------------------
//enableSaving [false, true];
enableEnvironment true;
player enableSimulation true;
player allowDamage true;
player enableStamina true;
cutText ["", "BLACK IN", 5];
//-----------------------------------
//[] call RPG_fnc_01_prologue;
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------- A3DRPG CLIENT INIT COMPLETE  -----------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------