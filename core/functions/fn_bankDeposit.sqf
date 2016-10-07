/*
    fn_bankDeposit
    Author: Sinbane

    Description:
    Deposits credits to the player GBC account
*/
private["_balance","_cash","_value"];
if ((typeName (ctrlText 144414)) != "SCALAR") exitWith {};
_value = parseNumber(ctrlText 144414);
if (_value > 999999) exitWith {hint "GBC Error: You can't deposit this much.";};
if (_value < 0) exitWith {};
if (_value > _cash) exitWith {hint "GBC Error: You don't have enough credits."};

_balance = player getVariable ["RPG_bank",0];
_cash = player getVariable ["RPG_credits",0];

_cash = _cash - _value;
_balance = _balance + _value;
player setVariable ["RPG_bank",_balance,true];
player setVariable ["RPG_credits",_cash,true];
hint format["GBC Account Update: %1 credits have successfully been deposited to your account.",_value];

[] call RPG_fnc_bank;