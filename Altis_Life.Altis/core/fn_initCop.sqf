#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_coplevel) < 1) && (__GETC__(life_bondlevel) == 0)) then {
    ["NotWhitelisted",false,true] call BIS_fnc_endMission;
    sleep 35;
};


player setVariable["rank",(__GETC__(life_coplevel)),true];

switch(__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 200;};
	case 2: {life_paycheck = life_paycheck + 300;};
	case 3: {life_paycheck = life_paycheck + 400;};
	case 4: {life_paycheck = life_paycheck + 500;};
	case 5: {life_paycheck = life_paycheck + 600;};
	case 6: {life_paycheck = life_paycheck + 700;};
	case 7: {life_paycheck = life_paycheck + 800;};
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.