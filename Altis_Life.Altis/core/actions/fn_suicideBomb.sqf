/*
    ALAH SNACKBAR!
    Created By: TAW_Tonic
    Edited By: MidgetGrimm,PeterBeer, and Xetoxyc
    Tested and Approved by: 617th PMC  
*/

private["_boom", "_list"];
if(vest player != "V_HarnessOGL_gry") exitWith {};

if(player distance (getMarkerPos "safe1") < 400) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
if(player distance (getMarkerPos "safe2") < 400) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
if(player distance (getMarkerPos "safe3") < 400) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
if(player distance (getMarkerPos "safe4") < 500) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
if(player distance (getMarkerPos "safe5") < 400) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};

life_isSuicide = true;

[[0,format["Somebody will blow up in 10 seconds"]],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // 10 second warning shown in chat
sleep 10;
//BOOM

if(vest player != "V_HarnessOGL_gry") exitWith {life_isSuicide = false;};
	
removeVest player;
_boom = "Bo_Mk82" createVehicle [0,0,9999];
_boom setPos (getPos player);
_boom setVelocity [100,0,0];

if(alive player) then {player setDamage 1;};

life_isSuicide = false;

[[0,format["%1 blew their load.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;