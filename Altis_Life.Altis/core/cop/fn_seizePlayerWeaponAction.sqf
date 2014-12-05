/*
	File: fn_seizePlayerWeaponAction.sqf
	Author: Skalicon
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Removes the players weapons client side
*/
//if(primaryWeapon cursorTarget == "") exitWith {[[0,"No primary weapon was found to remove!"],"life_fnc_broadcast",_unit,false] spawn life_fnc_MP;};
//cursorTarget removeWeapon (primaryWeapon cursorTarget); //Remove that primary!

removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

//[[0,"Removed primary weapon from player!"],"life_fnc_broadcast",player,false] spawn life_fnc_MP;
titleText["Your weapons have been removed.","PLAIN"];