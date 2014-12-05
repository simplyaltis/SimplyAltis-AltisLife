#include <macro.h>
/*
	File: fn_RestrictSlingLoad.sqf
	Author: Paul "Jerico" Smith
	
	Description:
	Disables a vehicle from being Sling Loaded.
*/

private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//if(__GETC__(life_medicLevel) < 3) then
//{
	_vehicle enableRopeAttach false;
//};