/*
	fn_addActions.sqf
	Author: Sinbane
	Description:
	Handles all player actions
*/
RPG_actions = [player addAction["Access ATM",RPG_fnc_bank,"",0,false,false,"",'
!isNull cursorObject && player distance cursorObject < 3.5 && ((typeOf cursorObject) in RPG_ATMs)']];