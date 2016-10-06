/*
    fn_loadOptions
    Author: Sinbane

    Description:
    Gives player starting gear based on whatever they choose
*/
#define Btn1 88881
#define Btn2 88882
#define Btn3 88883
#define Btn4 88884
#define Btn5 88885
#define Btn6 88886
#define Btn7 88887
#define Btn8 88888

private["_display","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8"];
disableSerialization;

//-----------------------------------

_display = findDisplay 1222;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
{
	_x ctrlEnable false;
} forEach [_Btn1,_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8];

//-----------------------------------
private ["_option","_spawned","_location","_spawnableHouses","_houseList","_buildingPos","_house","_housePos","_grp","_unit","_unitType","_side","_car","_spawnPos","_crate","_cratePos"];
//-----------------------------------
_option = _this select 0;
//-----------------------------------
if (_option isEqualTo 1) then {
	_unitType = "OPTRE_UNSC_Marine_Soldier_Rifleman_AR";
	_side = west;
	_car = "OPTRE_M813_TT_Marine";
};
if (_option isEqualTo 2) then {
	_unitType = "OPTRE_Ins_URF_Rifleman_Light";
	_side = east;
	_car = "OPTRE_M12_FAV_APC";
};
if (_option isEqualTo 3) then {
	_unitType = "I_soldier_F";
	_side = resistance;
	_car = "C_Offroad_01_F";
};
if (_option isEqualTo 4) then {
	_unitType = "C_man_1_1_F";
	_side = civilian;
	_car = "C_Van_01_transport_F";
};
//-----------------------------------
diag_log "-- FINDING SPAWN BUILDING.. --";
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
		_housePos = _housePos - _cratePos;
		while {!_playerPosFound} do {
			_spawnPos = selectRandom _housePos;
			_markerName = format["House %1",(getPos _house)];
			_marker = createMarkerLocal [_markerName, (getPos _house)];
			_marker setMarkerShapeLocal "ICON";
			_marker setMarkerTypeLocal "loc_Tourism";
			_marker setMarkerColorLocal "ColorBlufor";
			_marker setMarkerSizeLocal [0.75,0.75];
			_marker setMarkerAlphaLocal 1;
			_marker setMarkerTextLocal "Safehouse";
			RPG_clientMarkers pushBack _marker;
			_playerPosFound = true;
		};
		_spawned = true;
		private ["_carPosFound","_add","_nearRoads","_road","_connectedRoads","_dir","_spawncar"];
		_carPosFound = false;
		_add = 20;
		while {!_carPosFound} do {
			_nearRoads = _house nearRoads _add;
			if (count _nearRoads > 0) then {
				_carPosFound = true;
				_road = (_nearRoads select 0);
				_connectedRoads = roadsConnectedTo _road;
				_dir = [_road, (_connectedRoads select 0)] call BIS_fnc_DirTo;
				_carpos = (getPos _road);
				_spawncar = _car createVehicle [0,0,0];
				_spawncar setPos _carpos;
				_spawncar setDir _dir;
				[_spawncar] call RPG_fnc_emptyVeh;
			} else {
				_add = _add + 20;;
			};
		};
	};
};
if (!_spawned) then {
	_spawnPos = [(_location select 1),0,((_location select 2) select 0)] call RPG_fnc_findPos;
	_cratePos = [_spawnPos,2,10] call RPG_fnc_findPos;
	_carPos = [_spawnPos,5,20] call RPG_fnc_findPos;
	_crate = "OPTRE_Ammo_SmallCache_Empty" createVehicle [0,0,0];
	_crate setPos _cratePos;
	_spawncar = _car createVehicle [0,0,0];
	_spawncar setPos _carpos;
	_spawncar setDir (random 360);
	[_spawncar] call RPG_fnc_emptyVeh;
};
[_crate] call RPG_fnc_emptyVeh;
_grp = createGroup _side;
_unit = _grp createUnit [_unitType, _spawnPos, [], 0, "NONE"];
//-----------------------------------
if (_option isEqualTo 3) then {
	[
		_spawncar,
		["Guerilla_09",1], 
		["HideBackpacks",0,"HideBumper2",0,"HideConstruction",0,"Proxy",0,"Destruct",0]
	] call BIS_fnc_initVehicle;
};
if (_option isEqualTo 4) then {
	[
		_spawncar,
		["White",1], 
		true
	] call BIS_fnc_initVehicle;
};
//-----------------------------------
diag_log format["-- SPAWN LOCATION: %1 --",(_location select 0)];
[_option,_unit,_crate] call RPG_fnc_loadOptions;
//-----------------------------------