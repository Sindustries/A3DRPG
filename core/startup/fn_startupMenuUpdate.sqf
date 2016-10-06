/*
    fn_startupMenuUpdate
    Author: Sinbane

    Description:
    Updates the description box
*/

#define Btn1 12220
#define Choice1 12224
#define Description1 12228

private["_display","_Btn1","_choices","_desc"];

_display = findDisplay 1222;
_choices = _display displayCtrl Choice1;
_desc = _display displayCtrl Description1;

_Btn1 ctrlEnable false;

switch {lbCurSel 12224} do {
	case 0: {
		_desc ctrlSetText parseText format["
		<t align='center' size='2.2'>UNSC</t><br/>
		<br/>
		Credits: ₵1000<br/>
		Weapon: MA5B ICWS Assault Rifle<br/>
		<br/>
		<t size='1.5'>REALATIONSHIPS</t><br/>
		Insurrectionists - ENEMY<br/>
		Colonial Police - NEUTRAL		
		"]
	};
	case 1: {
		_desc ctrlSetText parseText format["
		<t align='center' size='2.2'>INSURRECTIONIST</t><br/>
		<br/>
		Credits: ₵500<br/>
		Weapon: M45 Tactical Shotgun<br/>
		<br/>
		<t size='1.5'>REALATIONSHIPS</t><br/>
		UNSC - ENEMY<br/>
		Colonial Police - NEUTRAL		
		"]
	};
	case 2: {
		_desc ctrlSetText parseText format["
		<t align='center' size='2.2'>MERCENARY</t><br/>
		<br/>
		Credits: ₵2500<br/>
		Weapon: M7 SMG<br/>
		<br/>
		<t size='1.5'>REALATIONSHIPS</t><br/>
		UNSC - NEUTRAL<br/>
		Insurrectionists - NEUTRAL<br/>
		Colonial Police - NEUTRAL		
		"]
	};
	case 3: {
		_desc ctrlSetText parseText format["
		<t align='center' size='2.2'>CIVILIAN</t><br/>
		<br/>
		Credits: ₵100<br/>
		Weapon: NONE<br/>
		<br/>
		<t size='1.5'>REALATIONSHIPS</t><br/>
		UNSC - NEUTRAL<br/>
		Insurrectionists - NEUTRAL<br/>
		Colonial Police - NEUTRAL		
		"]
	};
};

_Btn1 ctrlEnable true;