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

_crate = _this select 0;

disableSerialization;
if (!dialog) then {
    createDialog "RPG_startup";
};

_display = findDisplay 1222;
_Btn1 = _display displayCtrl Btn1;
_choices = _display displayCtrl Choice1;
_desc = _display displayCtrl Description1;

lbSetCurSel [_choices, 0];

_Btn1 buttonSetAction "[lbCurSel 12224,_crate] spawn RPG_fnc_loadOptions; closeDialog 0;";
