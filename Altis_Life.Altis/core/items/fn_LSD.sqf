 //////////////////////////////////////////////////////////////////
 //Developed by JackLags for STS
 //File: fn_drugeffect_mar.sqf
 //Description: Marijuana Drug Visual Effect
 //////////////////////////////////////////////////////////////////

closeDialog 0;
hint "I should totally watch 2001 Space Odyssey right now!";
sleep 3; 
 

_force = random 15;
"colorCorrections" ppEffectAdjust [3, 3, 0, [0.0, 0.0, 3.0, 0.0], [0.8*5, 0.8*6, 0.0, 1.9], [0.9, 0.9, 1.9, 0.2]];
"colorCorrections" ppEffectCommit 0;
10 setFog [0.6, 0.022, 66];
"colorCorrections" ppEffectAdjust [1, 0.6, -0.022, [0.0, 0.0, 0.0, 0.0], [0.2*2, 0.2*2, 0.0, 0.7], [0.5, 0.9, 1.9, 0.0]];  
"colorCorrections" ppEffectCommit 1;
"colorCorrections" ppEffectEnable true;
"filmGrain" ppEffectEnable true;
"filmGrain" ppEffectAdjust [0.09, 1, 2, 0.1, 1, false];
"filmGrain" ppEffectCommit 0;
        sleep 60;
0.1 setFog [0.0, 0.00, 0];
"filmGrain" ppEffectEnable false;
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;

if(!alive player) exitWith {};

