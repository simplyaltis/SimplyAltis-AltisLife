/* 
	File: fn_licenseSwap.sqf
	Desc: Swaps out the licenses (Rebel and Bounty Hunter)
	Author: Ciaran Langton
*/

if(playerSide != civilian) exitWith {};
if(!license_civ_bountyhunter && !license_civ_rebel) exitWith {true};

_remove = "";

_action = [
	"You can only have a Rebel License, or a Bounty Hunters license. By selecting Yes you will discard the other license and purchase the one you are buying at the moment",
	"You can only have one!",
	localize "STR_Global_Yes",
	localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if(!_action) exitWith {hint "Cancelled."; false};

if(license_civ_bountyhunter) then {license_civ_bountyhunter = false;} else {license_civ_rebel = false;};
true