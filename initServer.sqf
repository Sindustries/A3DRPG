/*
	A3DRPG
	Arma 3 Dynamic Role Playing Game
	Author: Sinbane
*/
//-----------------------------------
RPG_version = "0.0.0-alpha";
publicVariable "RPG_version";
setTimeMultiplier 0;
RPG_serverReady = false;
publicVariable "RPG_serverReady";
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------------------------------- A3DRPG SERVER INIT ----------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------
//-FIND LOCATIONS
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
diag_log "-- LOCATIONS FOUND --"
//-----------------------------------
//-FIND STARTING LOCATION
RPG_startLoc = (selectRandom RPG_villages);
publicVariable "RPG_startLoc";
diag_log format["STARTING LOCATION: %1",RPG_startLoc];
RPG_serverReady = true;
publicVariable "RPG_serverReady";
//-----------------------------------
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "----------------------------------- A3DRPG SERVER INIT COMPLETE  -----------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
//-----------------------------------
/*
[[Location NameLocal at 13064, 10701,"Recon Tower S08"],[Location NameVillage at 8146, 8914,"Habitat V07"],[Location NameVillage at 12925, 14195,"Colony Arthur"],[Location NameLocal at 10311, 6408,"Recon Tower S09"],[Location NameLocal at 6806, 11556,"Recon Tower S01"],[Location NameVillage at 16026, 9882,"Habitat V01"],[Location NameLocal at 7437, 7513,"Recon Tower S03"],[Location NameLocal at 14622, 6788,"Atmosphere Cleaner"],[Location NameLocal at 10349, 4492,"Recon Tower S07"],[Location NameLocal at 17445, 11586,"Monolith Dig Site"],[Location NameLocal at 5399, 8083,"Atmosphere Cleaner"],[Location NameLocal at 8114, 16929,"Atmosphere Cleaner"],[Location NameLocal at 4071, 10994,"Skyfarm B02"],[Location NameLocal at 16107, 4296,"Recon Tower S10"],[Location NameLocal at 4007, 13305,"Air Cleaner M03"],[Location NameLocal at 13549, 2624,"Air Cleaner M02"],[Location NameLocal at 18213, 15414,"Recon Tower S05"],[Location NameLocal at 19447, 7060,"Atmosphere Cleaner"],[Location NameVillage at 13235, 1818,"Colony Andrew"],[Location NameVillage at 16873, 17406,"Habitat V06"],[Location NameLocal at 8787, 19028,"Air Cleaner M05"],[Location NameVillage at 10197, 1533,"Habitat V04"],[Location NameLocal at 15472, 18936,"Research Station Pegasus"],[Location NameLocal at 1759, 9905,"Recon Tower S04"],[Location NameLocal at 1710, 13159,"Atmosphere Cleaner"],[Location NameLocal at 2319, 6067,"Recon Outpost S07"],[Location NameLocal at 6032, 1230,"Recon Tower S06"],[Location NameLocal at 18906, 19212,"Air Cleaner M04"],[Location NameVillage at 2407, 17884,"Habitat V02"]]
*/