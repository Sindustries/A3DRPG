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
RPG_tier1Housing = ["Land_i_House_Small_03_V1_F","Land_i_House_Small_02_V3_F","Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_01_V3_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F"];
RPG_tier2Housing = ["Land_i_Stone_HouseSmall_V3_F","Land_i_Stone_HouseSmall_V1_F","Land_i_House_Big_02_V3_F","Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F"];
RPG_tier3Housing = ["Land_i_House_Big_01_V3_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F"];
RPG_militaryHousing = ["Land_i_Barracks_V1_F","Land_i_Barracks_V2_F","Land_u_Barracks_V2_F"];
RPG_shopBuildings = ["Land_i_Shop_02_V3_F","Land_i_Shop_02_V1_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_01_V1_F","Land_i_Shop_01_V2_F"];
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
//-SPAWN PLAYER
spawnChosen = false;
while {!spawnChosen} do {
	[] call RPG_fnc_startupMenu;
	waitUntil {dialog};
	waitUntil {!dialog};
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
//[] call RPG_fnc_01_prologue;
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------- A3DRPG CLIENT INIT COMPLETE  -----------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------