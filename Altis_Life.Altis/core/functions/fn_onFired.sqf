#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_projectile","_curWep"];
_curWep = _this select 1;
_ammoType = _this select 4; 
_projectile = _this select 6;

if(_ammoType == "GrenadeHand_stone") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};

if(_curWep == "arifle_TRG21_MRCO_F") then {
    if((_this select 0) distance (getMarkerPos "paintball_spawn") > 100) then {
        deleteVehicle (_this select 6);
        titleText ["You are not in a Paintball Zone!", "PLAIN", 3];
    };
};

if(playerSide != west) then
{
    if(license_civ_bountyhunter && _curWep == "hgun_PDW2000_F") exitWith{};
    if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count __GETC__(life_safe_points) > 0) then
    {
        deleteVehicle (_this select 6);
        titleText ["You are in a Safe Zone! Live rounds disabled", "PLAIN", 3];
    };
};