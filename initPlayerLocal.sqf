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
//-PLAYER VARIABLES
player setVariable ["RPG_bank",0,true];
player setVariable ["RPG_cash",0,true];
//-----------------------------------
RPG_safehouses = [];
RPG_clientMarkers = [];
//-----------------------------------
waitUntil {time > 0};
cutText ["", "BLACK FADED", 999];
setDate [2155, 7, 4, 7, 0];
waitUntil {RPG_serverReady isEqualTo true};
diag_log "-- SERVER READY, PREPARING.. --"; 
//-----------------------------------
//-CLASS SELECTOR
spawnChosen = false;
while {!spawnChosen} do {
	[] call RPG_fnc_startupMenu;
	waitUntil {dialog};
	waitUntil {!dialog};
};
spawnChosen = nil;
diag_log "-- PLAYER SPAWNED --";
//-----------------------------------
[] spawn {
	waitUntil {!isNull (findDisplay 46)};
	private "_keyHandler";
	_keyHandler = (findDisplay 46) displayAddEventHandler ["KeyDown", {
		[_this select 0,_this select 1,_this select 2,_this select 3,_this select 4] call RPG_fnc_keyHandler;
	}];
};
[] call RPG_fnc_addActions;
//-----------------------------------
//enableSaving [false, true];
enableEnvironment true;
player enableSimulation true;
player allowDamage true;
player enableStamina true;
cutText ["", "BLACK IN", 5];
//-----------------------------------
[] spawn RPG_fnc_locationDisplay;
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------- A3DRPG CLIENT INIT COMPLETE  -----------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------