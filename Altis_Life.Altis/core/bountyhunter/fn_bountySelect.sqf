/*
	File: fn_bountySelect.sqf
	Author: Ciaran Langton
	
	Description:
	Selects the player, then tells the bounty hunter where they are.
*/
private["_display","_list","_uid"];
disableSerialization;

_display = findDisplay 2400;
_list = _display displayCtrl 2402;
_data = lbData[2401,(lbCurSel 2401)];
_data = call compile format["%1", _data];
if(2500 > life_rupees) exitWith {hint "You do not have enough money in your bank to pay the civilian.";};
if(isNil "_data") exitWith {};
if(typeName _data != "ARRAY") exitWith {};
if(count _data == 0) exitWith {};

_uid = _data select 1;
_player = objNull;
{
	if(getPlayerUID _x == _uid) then {_player = _x;};
} forEach playableUnits;

if(isNull _player) exitWith {};

_closesttown = (nearestLocations [_player,["NameCityCapital","NameCity","NameVillage"],10000]) select 0;
_town_name = text _closesttown;
_town_pos = position _closesttown;
[20] call life_fnc_addXP;


hint format["A civilian has saw %1 near %2. %2 is %3M away from you. You pay the civilain £2500 for the tip.",_player getVariable["realname",name _player], _town_name, round(player distance _town_pos)];

life_rupees = life_rupees - 2500;