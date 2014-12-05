#include <macro.h>
/*
	File: fn_buyLicense.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when purchasing a license. May need to be revised.
*/
private["_type","_cash"];
_type = _this select 3;

_price = [_type] call life_fnc_licensePrice;
_license = [_type,0] call life_fnc_licenseType;


_action = true;
if((_license select 0) in ["license_civ_bountyhunter","license_civ_rebel"]) then {_action = call life_fnc_licenseSwap;}; //If its a rebel or bounty license, send message
if(!_action) exitWith {};

_price = round(_price * life_donDis);

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    _cash = life_rupees;
}
else
{
    _cash = life_dosh;
};

if(_cash < _price) exitWith {hint format[localize "STR_NOTF_NE_1",[_price] call life_fnc_numberText,_license select 1];};

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    life_rupees = life_rupees - _price;
}
else
{
    life_dosh = life_dosh - _price;
};

titleText[format[localize "STR_NOTF_B_1", _license select 1,[_price] call life_fnc_numberText],"PLAIN"];
missionNamespace setVariable[(_license select 0),true];
playSound "buy";