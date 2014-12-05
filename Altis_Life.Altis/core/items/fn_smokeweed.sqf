/*
    File: fn_smokeweed.sqf
    Credit thanks to: Kuchiha

    Description:
    Marijuana effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a little before starting drugs effects
hint "Pick it, pack it, fire it up, come aloooong and take hits from the bong...";

player say3D "Hits";

sleep 3;

_smoke = "SmokeShell" createVehicle position player;
if (vehicle player != player) then {
    _smoke attachTo [vehicle player, [0,-1,0]];
} else {
    _smoke attachTo [player, [0,0,1]];
};

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effects
for "_i" from 0 to 30 do
{
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;