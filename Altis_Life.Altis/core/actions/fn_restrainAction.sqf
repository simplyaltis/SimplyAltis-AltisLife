/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
if (side player == civilian) then {

    if(player distance (getMarkerPos "safe1") < 400 && !license_civ_bountyhunter) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
    if(player distance (getMarkerPos "safe2") < 400 && !license_civ_bountyhunter) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
    if(player distance (getMarkerPos "safe3") < 400 && !license_civ_bountyhunter) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
    if(player distance (getMarkerPos "safe4") < 500 && !license_civ_bountyhunter) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
    if(player distance (getMarkerPos "safe5") < 400 && !license_civ_bountyhunter) exitWith {titleText ["You Are In A Safe Zone!", "PLAIN", 3];};
    
	//if(life_inv_zipties < 1) exitWith { hint "You have no zipties."; };
	//life_inv_zipties = life_inv_zipties - 1;
	hint "You have ziptied the citizen";
    
    player say3D "ZipTie";
    
    _unit setVariable["restrained",true,true];
    if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
    [[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
    [[0,"STR_NOTF_Ziptied",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
}
else
{
    player say3D "handcuffs";
    
    _unit setVariable["restrained",true,true];
    if((player getVariable["surrender",FALSE])) then { player setVariable["surrender",FALSE,TRUE]; player switchMove ""; };
    [[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
    [[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
};