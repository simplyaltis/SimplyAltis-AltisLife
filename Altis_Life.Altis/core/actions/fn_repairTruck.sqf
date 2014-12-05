#include <macro.h>
/*
	File: fn_repairTruck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for toolkits, to be revised in later version.
*/
private["_veh","_upp","_ui","_progress","_pgText","_cP","_displayName"];
_veh = cursorTarget;
life_interrupted = false;
if(isNull _veh) exitwith {};
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air")) then
{
	if("ToolKit" in (items player)) then
	{
		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format[localize "STR_NOTF_Repairing",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			sleep 0.27;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if(_cP >= 1) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
			if(!alive player) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
			if(player != vehicle player) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
			if(life_interrupted) exitWith {_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
		if(player != vehicle player) exitWith {titleText[localize "STR_NOTF_RepairingInVehicle","PLAIN"]; _ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];};
        
        if ((side player == independent) && (__GETC__(life_medicLevel) > 1)) then {
            life_rupees = life_rupees + 2500;
        } else {
            player removeItem "ToolKit";
        };
		_veh setDamage 0;
		titleText[localize "STR_NOTF_RepairedVehicle","PLAIN"];
	};
};
_ui = "statusBar" call BIS_fnc_rscLayer;_ui cutRsc["statusBar","PLAIN"];