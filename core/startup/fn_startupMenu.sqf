/*
    fn_startupMenu
    Author: Sinbane

    Description:
    Lets the player choose spawn options
*/
#define Btn1 12220
#define Choice1 12224
#define Description1 12228

private["_crate","_display","_Btn1","_choices","_desc"];
disableSerialization;

varCrate = _this select 0;

if (!dialog) then {
    createDialog "RPG_startup";
	waitUntil {dialog};
};

_display = findDisplay 1222;
_Btn1 = _display displayCtrl Btn1;
_choices = _display displayCtrl Choice1;
_desc = _display displayCtrl Description1;
_choices ctrlSetEventHandler ["LBSelChanged", "[] call RPG_fnc_startupMenuUpdate"];

{
	_choices = lbAdd [12224, _x];
} forEach ["UNSC MARINE","INSURRECTIONIST","MERCENARY","CIVILIAN"];

lbSetCurSel [12224, 0];

_Btn1 buttonSetAction "[lbCurSel 12224,varCrate] call RPG_fnc_loadOptions; closeDialog 0;";