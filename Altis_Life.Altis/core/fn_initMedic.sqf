#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

switch(__GETC__(life_medicLevel)) do
{
	case 1: {life_paycheck = life_paycheck + 200;};
	case 2: {life_paycheck = life_paycheck + 300;};
	case 3: {life_paycheck = life_paycheck + 500;};
	case 4: {life_paycheck = life_paycheck + 600;};
	case 5: {life_paycheck = life_paycheck + 700;};
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] call life_fnc_updateClothing;