#include <macro.h>
/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
private["_cash"];

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    _cash = life_rupees;
}
else
{
    _cash = life_dosh;
};

if(_cash < 100) exitWith {hint format[localize "STR_NOTF_HS_NoCash",100];};

titleText[localize "STR_NOTF_HS_Healing","PLAIN"];
sleep 8;
if(player distance (_this select 0) > 5) exitWith {titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};
titleText[localize "STR_NOTF_HS_Healed","PLAIN"];
player setdamage 0;

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    life_rupees = life_rupees - 100;
}
else
{
    life_dosh = life_dosh - 100;
};

playSound "buy";
