/*
	A3DRPG
	Arma 3 Dynamic Role Playing Game
	Author: Sinbane
*/
//-----------------------------------
RPG_version = "0.0.0-alpha";
publicVariable "RPG_version";
setTimeMultiplier 1;
RPG_serverReady = false;
publicVariable "RPG_serverReady";
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------------------------------- A3DRPG SERVER INIT ----------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------
//-FILL VEHICLE ARRAYS
diag_log "-- FINDING ALL VEHICLES --";
UNSC_landVehicles = ["Land","OPTRE_UNSC"] call RPG_fnc_getVehicles;
UNSC_airVehicles = ["Air","OPTRE_UNSC"] call RPG_fnc_getVehicles;
UNSC_seaVehicles = ["Sea","OPTRE_UNSC"] call RPG_fnc_getVehicles;
INS_landVehicles = ["Land","OPTRE_Ins"] call RPG_fnc_getVehicles;
INS_airVehicles = ["Air","OPTRE_Ins"] call RPG_fnc_getVehicles;
INS_seaVehicles = ["Sea","OPTRE_Ins"] call RPG_fnc_getVehicles;
CIV_landVehicles = ["Land","OPTRE_UEG_Civ"] call RPG_fnc_getVehicles;
CIV_airVehicles = ["Air","OPTRE_UEG_Civ"] call RPG_fnc_getVehicles;
CIV_seaVehicles = ["Sea","OPTRE_UEG_Civ"] call RPG_fnc_getVehicles;
PD_landVehicles = ["Land","OPTRE_PD"] call RPG_fnc_getVehicles;
PD_airVehicles = ["Air","OPTRE_PD"] call RPG_fnc_getVehicles;
PD_seaVehicles = ["Sea","OPTRE_PD"] call RPG_fnc_getVehicles;
diag_log "-- COMPLETE --";
//-----------------------------------
//-FIND LOCATIONS
diag_log "-- FINDING LOCATIONS --";
RPG_cities = [];
RPG_villages = [];
RPG_local = [];
{
	if (type _x isEqualTo "NameCityCapital" || type _x isEqualTo "NameCity") then {
		RPG_cities pushBack [(text _x),(locationPosition _x),(size _x)];
	};
	if (type _x isEqualTo "NameVillage") then {
		RPG_villages pushBack [(text _x),(locationPosition _x),(size _x)];
	};
	if (type _x isEqualTo "NameLocal") then {
		RPG_local pushBack [(text _x),(locationPosition _x),(size _x)];
	};
} forEach nearestLocations [[0,0,0], ["NameCity","NameCityCapital","NameLocal","NameMarine","NameVillage"], 100000];
publicVariable "RPG_cities";
publicVariable "RPG_villages";
publicVariable "RPG_local";
diag_log "-- COMPLETE --";
//-----------------------------------
//-FIND LOCATIONS
diag_log "-- SETTING BUILDING TIERS --";
RPG_tier1Housing = ["Land_i_House_Small_03_V1_F","Land_i_House_Small_02_V3_F","Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_01_V3_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F"];
publicVariable "RPG_tier1Housing";
RPG_tier2Housing = ["Land_i_Stone_HouseSmall_V3_F","Land_i_Stone_HouseSmall_V1_F","Land_i_House_Big_02_V3_F","Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F"];
publicVariable "RPG_tier2Housing";
RPG_tier3Housing = ["Land_i_House_Big_01_V3_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F"];
publicVariable "RPG_tier3Housing";
RPG_militaryHousing = ["Land_i_Barracks_V1_F","Land_i_Barracks_V2_F","Land_u_Barracks_V2_F"];
publicVariable "RPG_militaryHousing";
RPG_CPDbuildings = ["Land_Offices_01_V1_F"];
publicVariable "RPG_CPDbuildings";
RPG_shopBuildings = ["Land_i_Shop_02_V3_F","Land_i_Shop_02_V1_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_01_V1_F","Land_i_Shop_01_V2_F"];
publicVariable "RPG_shopBuildings";
RPG_ATMs = ["Land_Atm_01_F","Land_Atm_02_F"];
publicVariable "RPG_ATMs";
diag_log "-- COMPLETE --";
//-----------------------------------
RPG_serverReady = true;
publicVariable "RPG_serverReady";
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------- A3DRPG SERVER INIT COMPLETE  -----------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------