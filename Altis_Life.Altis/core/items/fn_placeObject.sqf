/*
	File: fn_placeobject.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a object and preps it.
*/
private["_position","_object"];
if(!isNull life_object) exitWith {};
_type = _this select 0;

if(([false,_type,1] call life_fnc_handleInv)) then {
	//What are we placing today?
	_name = switch (_type) do
	{
		case "roadcone": {"RoadCone_L_F"};
		case "roadbarrier": {"RoadBarrier_F"};
		case "tapesign": {"TapeSign_F"};
		case "arrowleft": {"ArrowDesk_L_F"};
		case "arrowright": {"ArrowDesk_R_F"};
	};

	_object = createVehicle [_name, [0,0,0], [], 0, "NONE"];  
	_object attachTo[player,[0,2,1]];
	_object setVariable["item","objectDeployed",true];

	life_action_objectDeploy = player addAction["Place object",{if(!isNull life_object) then {detach life_object; life_object = ObjNull;}; player removeAction life_action_objectDeploy; life_action_objectDeploy = nil;},"",999,false,false,"",'!isNull life_object'];
	life_object = _object;
	waitUntil {isNull life_object};
	if(!isNil "life_action_objectDeploy") then {player removeAction life_action_objectDeploy;};
	if(isNull _object) exitWith {life_object = ObjNull;};
	_object setPos [(getPos _object select 0),(getPos _object select 1),0];
	_object enableSimulation false;
	[10] call life_fnc_addXP;
};