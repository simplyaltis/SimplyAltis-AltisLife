/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};
removeUniform player;

player forceAddUniform "U_C_WorkerCoveralls";
player addBackpack "B_Carryall_khk";
player addItem "Medikit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addUniform "U_C_WorkerCoveralls";

[[player,0,"textures\clothing\medic_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
[] spawn life_fnc_updateClothing;

[] call life_fnc_saveGear;