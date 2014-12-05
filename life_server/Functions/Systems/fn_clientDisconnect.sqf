/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When a client disconnects this will remove their corpse and
	clean up their storage boxes in their house.
*/
private["_unit","_id","_uid","_name"];
_unit = _this select 0;
_id = _this select 1;
_uid = _this select 2;
_name = _this select 3;

//[_uid,0] spawn life_fnc_wantedRemove;

if(isNull _unit) exitWith{};

_containers = nearestObjects[_unit,["WeaponHolderSimulated"],5];
{deleteVehicle _x;} foreach _containers;
deleteVehicle _unit;

_uid spawn TON_fnc_houseCleanup;

{
    _pid = _x getVariable["steam64ID",""];
    if(_uid == _pid OR _pid == "" OR owner _x < 3) then {
        deleteVehicle _x; //Get rid of the corpse.
    };
} foreach allDeadMen;

