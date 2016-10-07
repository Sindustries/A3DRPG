/*
    fn_bank
    Author: Sinbane

    Description:
    Opens the ATM menu
*/
//-----------------------------------
#define Btn1 144412
#define Btn2 144413
#define Text1 144411
#define Input1 144414

private[];
disableSerialization;

//-----------------------------------
if (!dialog) then {
    createDialog "RPG_atm";
	waitUntil {dialog};
};

_display = findDisplay 1444;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Text1 = _display displayCtrl Text1;
_Input1 = _display displayCtrl Input1;
_Input1 ctrlSetText "";

//-----------------------------------
_Text1 ctrlSetStructuredText parseText format[
"<t align='center' underline='true'>GLOBAL BANKING<br/>
CORPORATION</t><br/>
<t align='center' size='0.7'>ACCOUNT BALANCE:<br/>
%1<br/>
CREDIT BALANCE:<br/>
%2<br/></t>
<br/>
<t align='center' size='0.6'>Thank you for choosing GBC for your banking needs.</t>",
(player getVariable ["RPG_bank",0]),(player getVariable ["RPG_credits",0])];
//-----------------------------------
