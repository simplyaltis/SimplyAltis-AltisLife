//file: fn_initMoneyPickup.sqf

_obj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_unit = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

_unit = owner _unit;

if(isNull _obj) exitWith {}; //Bad.

if(!(_obj getVariable["inUse",false])) then
{
	_obj setVariable["inUse",true,true];
	[[_obj],"life_fnc_pickupMoney",_unit,false] spawn life_fnc_MP;
};

