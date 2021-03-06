/*
	File: fn_revivePlayer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the revive process on the player.
*/
private["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _target) exitWith {}; //DAFUQ?@!%$!R?EFFD?TGSF?HBS?DHBFNFD?YHDGN?D?FJH

_revivable = _target getVariable["Revive",FALSE];
if(_revivable) exitWith {};
if(_target getVariable ["Reviving",ObjNull] == player) exitWith {hint localize "STR_Medic_AlreadyReviving";};
if(player distance _target > 5) exitWith {}; //Not close enough.

//Fetch their name so we can shout it.
_targetName = _target getVariable["name","Unknown"];
_title = format[localize "STR_Medic_Progress",_targetName];
life_action_inUse = true; //Lockout the controls.

_target setVariable["Reviving",player,TRUE];
//Setup our progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

//Lets reuse the same thing!
while {true} do
{
	_previous = animationState player;
	if(animationState player == _previous) then {
		player playMoveNow "AinvPknlMstpSnonWnonDr_medic0";
	};

	sleep 0.15;
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
	if(life_istazed) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];}; //Tazed
	if(life_interrupted) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
	if((player getVariable["restrained",false])) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
	if(player distance _target > 4) exitWith {_badDistance = true;_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
	if(_target getVariable["Revive",FALSE]) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
	if(_target getVariable["Reviving",ObjNull] != player) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(_target getVariable ["Reviving",ObjNull] != player) exitWith {hint localize "STR_Medic_AlreadyReviving"; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
_target setVariable["Reviving",NIL,TRUE];
if(!alive player OR life_istazed) exitWith {life_action_inUse = false; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
if(_target getVariable["Revive",FALSE]) exitWith {hint localize "STR_Medic_RevivedRespawned"; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_Medic_TooFar","PLAIN"]; life_action_inUse = false; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};

life_rupees = life_rupees + (call life_revive_fee);
life_action_inUse = false;
_target setVariable["Revive",TRUE,TRUE];
[[profileName],"life_fnc_revived",_target,FALSE] spawn life_fnc_MP;
titleText[format[localize "STR_Medic_RevivePayReceive",_targetName,[(call life_revive_fee)] call life_fnc_numberText],"PLAIN"];

sleep 0.6;
player reveal _target;
_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];