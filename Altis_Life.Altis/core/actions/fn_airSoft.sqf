/*
    File: fn_handleDowned.sqf
    Author: Skalicon modded by Mahribar
    
    Description: Original Script for rubber bullets Modified for Airsoft
*/
private["_unit","_shooter","_curWep","_curMags","_attach"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_isdowned = false;};

if(_shooter isKindOf "Man" && alive player) then
{
    hint "You were shot by a paintball, returning to the spawn!";
    player allowDamage true;
    _pos = getMarkerPos "paintball_spawn" ;
    (vehicle player) setpos [_pos select 0, _pos select 1, 0];
}
    else
{
    _unit allowDamage true;
};