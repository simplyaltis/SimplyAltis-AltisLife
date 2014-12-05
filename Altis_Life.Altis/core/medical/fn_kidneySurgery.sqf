#include <macro.h>
/*
	File: Niere wieder einsetzen
	Author: Backer
	
	Discription:
	Notarzt operiert Spieler, sodass er mit einer Niere weiterleben kann
*/
private["_unit"];

_unit = cursorTarget;

if(__GETC__(life_medicLevel) < 3) exitWith {hint "You are not capable do this surgery!"};
if(!(_unit getVariable ["missingOrgan",FALSE])) exitWith {hint "He doesn't need any surgery!"};  //Check if kidney lose
if (side player == independent) then {hint "Stay still while you operate on the patient!"}; 
player playMove "AinvPknlMstpSnonWnonDnon_medic";
sleep 3;//length of action, had weird results with any higher - obv not realistic, but whatever
if(player distance (_this select 0) > 5) exitWith {hint "You are too far away to use your surgical tools"};
if (side player == independent) then {hint "The surgery went quite well! You will be paid for your services."}; 
_unit setVariable["missingOrgan",false,true];
sleep 0.1;
_unit setdamage 0; 
_unit setFatigue .5;
life_dosh = life_dosh + 7500; 