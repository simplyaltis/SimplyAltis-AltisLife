/*
	File: fn_stopEscorting.sqf
	
	Description:
	ASFSDFHAGFASF
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Not valid
if(!(_unit getVariable "Escorting")) exitWith {}; //He's not being Escorted.
if (!(side _unit in [civilian,independent,west])) exitWith {};
if(isNull _unit) exitWith {}; //Not valid
detach _unit;
_unit setVariable["Escorting",false,true];