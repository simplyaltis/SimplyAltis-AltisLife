/*
	File: fn_skyDiving.sqf
	Author: Ciaran Langton
	Desc: Makes the player skydive.
*/
if(life_wonga < 500) exitWith {hint "You do not have £500 to skydive!";};
life_wonga = life_wonga - 500;
if(life_action_inUse) exitWith {};
life_action_inUse = true;
//Save these two vars.
life_skydive_backpack = backpack player;
life_skydive_backpackItems = backpackItems player;

_pos = getPosATL player;
_pos set[2,6000]; //Calculate the position to drop from.

cutText ["", "BLACK OUT", 5];
sleep 3;
cutText ["You are now arriving at the drop zone. Please prepeare to jump!", "BLACK FADED"];
0 cutFadeOut 999999; 
sleep 1;
//SETUP SIM OF PLANE
player setVelocity [0,0,0];
player setPos (getMarkerPos "respawn_civilian"); //Send them to a island to play the audio to simulate the plane.
player addBackpack "B_Parachute";
0 fadeSound 0;
2 fadeSound 1;
//Now play our audio
for "_i" from 0 to 3 do
{
	playSound "airplane";
	sleep 2.2;
};
sleep 5;
player setPosATL _pos; //Set their position
_currentView = viewDistance;
setViewDistance 6000; //Up the view distance
cutText["","PLAIN"];  

waitUntil {isTouchingGround player};
hint "Ill take that backpack back, here is your old one!";
removeBackpack player;
player addBackpack life_skydive_backpack;
clearBackpackCargo player;
{
	[_x,true,true] call life_fnc_handleItem;
} foreach life_skydive_backpackItems;

setViewDistance _currentView;
life_action_inUse = false;