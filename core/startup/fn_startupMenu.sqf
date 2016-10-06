/*
    fn_startupMenu
    Author: Sinbane

    Description:
    Lets the player choose spawn options
*/
//-----------------------------------
#define Btn1 88881
#define Btn2 88882
#define Btn3 88883
#define Btn4 88884
#define Btn5 88885
#define Btn6 88886
#define Btn7 88887
#define Btn8 88888

#define Class1 888811
#define Class2 888822
#define Class3 888833
#define Class4 888844
#define Class5 888855
#define Class6 888866
#define Class7 888877
#define Class8 888888

private["_display","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Class1","_Class2","_Class3","_Class4","_Class5","_Class6","_Class7","_Class8"];
disableSerialization;
diag_log "-- CLASS SELECTION OPEN --"; 

varCrate = _this select 0;
//-----------------------------------
if (!dialog) then {
    createDialog "RPG_startup";
	waitUntil {dialog};
};

_display = findDisplay 1222;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Class1 = _display displayCtrl Class1;
_Class2 = _display displayCtrl Class2;
_Class3 = _display displayCtrl Class3;
_Class4 = _display displayCtrl Class4;
_Class5 = _display displayCtrl Class5;
_Class6 = _display displayCtrl Class6;
_Class7 = _display displayCtrl Class7;
_Class8 = _display displayCtrl Class8;

{
	_x ctrlEnable false;
	_x ctrlSetTooltip "Not available yet";
} forEach [_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8];
{
	_x ctrlSetStructuredText parseText "COMING SOON";
} forEach [_Class5,_Class6,_Class7,_Class8];
//-----------------------------------
_Btn1 buttonSetAction "[1,varCrate] call RPG_fnc_loadOptions; closeDialog 0;";
_Class1 ctrlSetStructuredText parseText
"<t align='center' underline='true'>UNSC MARINE</t><br/>
<t align='center' size='0.7'>Credits: ₵1000<br/>
Weapon: MA5B ICWS Assault Rifle</t><br/>
<br/>
<t align='center' size='0.9' underline='true'>RELATIONSHIPS</t><br/>
<t align='center' size='0.7'>Insurrectionists - ENEMY<br/>
Colonial Police - NEUTRAL</t>";
//-----------------------------------
_Btn2 buttonSetAction "[2,varCrate] call RPG_fnc_loadOptions; closeDialog 0;";
_Class2 ctrlSetStructuredText parseText 
"<t align='center' underline='true'>INSURRECTIONIST</t><br/>
<t align='center' size='0.7'>Credits: ₵500<br/>
Weapon: M45 Tactical Shotgun</t><br/>
<br/>
<t align='center' size='0.9' underline='true'>RELATIONSHIPS</t><br/>
<t align='center' size='0.7'>UNSC - ENEMY<br/>
Colonial Police - NEUTRAL</t>";
//-----------------------------------
_Btn3 buttonSetAction "[3,varCrate] call RPG_fnc_loadOptions; closeDialog 0;";
_Class3 ctrlSetStructuredText parseText
"<t align='center' underline='true'>MERCENARY</t><br/>
<t align='center' size='0.7'>Credits: ₵2500<br/>
Weapon: M7 SMG</t><br/>
<br/>
<t align='center' size='0.9' underline='true'>RELATIONSHIPS</t><br/>
<t align='center' size='0.7'>Insurrectionists - NEUTRAL<br/>
Colonial Police - NEUTRAL</t>";
//-----------------------------------
_Btn4 buttonSetAction "[4,varCrate] call RPG_fnc_loadOptions; closeDialog 0;";
_Class4 ctrlSetStructuredText parseText
"<t align='center' underline='true'>CIVILIAN</t><br/>
<t align='center' size='0.7'>Credits: ₵100<br/>
Weapon: M14 Hunting Rifle</t><br/>
<br/>
<t align='center' size='0.9' underline='true'>RELATIONSHIPS</t><br/>
<t align='center' size='0.7'>Insurrectionists - NEUTRAL<br/>
Colonial Police - NEUTRAL</t>";
//-----------------------------------