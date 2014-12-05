/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	
	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/

if(isNull cursorTarget) exitWith {};
if(playerSide != west) exitWith {};

//[[1, player, format["%1's weapons have been seized by the Police.", name cursorTarget]],"TON_fnc_logIt",false,false] spawn life_fnc_MP;
[[0, format["%1's weapons have been seized by the Police.", name cursorTarget]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[],"life_fnc_seizePlayerWeaponAction",cursorTarget,false] spawn life_fnc_MP;