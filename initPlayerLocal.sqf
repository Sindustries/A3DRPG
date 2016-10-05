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
waitUntil {time > 0};
cutText ["", "BLACK FADED", 999];
setDate [2155, 7, 4, 7, 0];
waitUntil {RPG_serverReady isEqualTo true};
diag_log "-- SERVER READY, PREPARING.. --";
//-----------------------------------
//-FIND BUILDINGS IN FIRST LOCATION
diag_log "-- FINDING SPAWN BUILDING.. --";
private ["_spawned","_spawnableHouses","_houseList","_buildingPos","_house","_housePos","_spawnPos"];
_spawned = false;
_spawnableHouses = [];
_houseList = nearestObjects [(RPG_startLoc select 1), ["building"], ((RPG_startLoc select 2) select 0)];
if ((count _houseList) > 0) then {
	{		
		_buildingPos = _x buildingPos -1;
		if ((count _buildingPos) > 0) then {
			_spawnableHouses pushBack _x;
		};	
	} forEach _houseList;
	if ((count _spawnableHouses) > 0) then {
		_house = selectRandom _spawnableHouses;
		_housePos = _house buildingPos -1;
		_spawnPos = selectRandom _housePos;
		player setPos _spawnPos;
		_spawned = true;
	};
};
if (!_spawned) then {
	_spawnPos = [(RPG_startLoc select 1),0,((RPG_startLoc select 2) select 0)] call RPG_fnc_findPos;
	player setPos _spawnPos;
	_spawned = true;
};
diag_log "-- PLAYER SPAWNED --";
//-----------------------------------
//enableSaving [false, true];
enableEnvironment true;
player enableSimulation true;
player allowDamage true;
player enableStamina true;
cutText ["", "BLACK IN", 5];
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------- A3DRPG CLIENT INIT COMPLETE  -----------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------