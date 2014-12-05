#include <macro.h>
/*
	
	file: fn_newMsg.sqf
	Author: Silex
	
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

switch(_type) do
{
	case 0:
	{
		life_smartphoneTarget = call compile format["%1",_playerData];
		ctrlSetText[88886, format["Message: %1",name life_smartphoneTarget]];
		if((__GETC__(life_bondlevel) < 1)) then
		{
			ctrlShow[888897,false];
		};
	};
	//normal message
	case 1:
	{
		if(isNUll life_smartphoneTarget) exitWith {hint format["No one was selected!"];};
		ctrlShow[88885, false];
		if(_msg == "") exitWith {hint "You must enter a message to send!";ctrlShow[88885, true];};
		[[life_smartphoneTarget,_msg,player,0],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["You sent %1 a message: %2",name life_smartphoneTarget,_msg];	
		ctrlShow[88885, true];
		closeDialog 88883;
	};
	//copmessage
	case 2:
	{
		if(({side _x == west} count playableUnits) == 0) exitWith {hint format["The police are busy with donuts. Please try again later."];};
		ctrlShow[888895,false];
		if(_msg == "") exitWith {hint "You must enter a message to send!";ctrlShow[888895,true];};
        _msg = format["%1 - Coord: %2", _msg, mapGridPosition player];
		[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "The Police";
		hint format["You sent %1 a message: %2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
	};
	//msgadmin
	case 3:
	{
		ctrlShow[888896,false];
		if(_msg == "") exitWith {hint "You must enter a message to send!";ctrlShow[888896,true];};
        _msg = format["%1 - Coord: %2", _msg, mapGridPosition player];
		[[ObjNull,_msg,player,2],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "The Admins";
		hint format["You sent %1 a message: %2",_to,_msg];
		ctrlShow[888896,true];
		closeDialog 887890;
	};
	//emsrequest
	case 4:
	{
		if(({side _x == independent} count playableUnits) == 0) exitWith {hint format["All the doctors are busy with the nurses. Please try again later."];};
		ctrlShow[888899,false];
		if(_msg == "") exitWith {hint "You must enter a message to send!";ctrlShow[888899,true];};
        _msg = format["%1 - Coord: %2", _msg, mapGridPosition player];
		[[ObjNull,_msg,player,3],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["You have sent a message to all EMS Units.",_msg];
		ctrlShow[888899,true];
		closeDialog 887890;
	};
	//adminToPerson
	case 5:
	{
		if((call life_bondlevel) < 1) exitWith {hint "You are not an admin!";};
		if(isNULL life_smartphoneTarget) exitWith {hint format["No one was selected!"];};
		if(_msg == "") exitWith {hint "You must enter a message to send!";};
		[[life_smartphoneTarget,_msg,player,4],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Admin Message Sent To: %1 - Message: %2",name life_smartphoneTarget,_msg];
		closeDialog 88883;
	};
	//emergencyloading
	case 6:
	{
		if((__GETC__(life_bondlevel) < 1)) then
		{
			ctrlShow[888898,false];
			ctrlShow[888896,true];
		} else {
			ctrlShow[888898,true];
			ctrlShow[888896,false];
		};
	};
	//adminMsgAll
	case 7:
	{
		if((call life_bondlevel) < 1) exitWith {hint "You are not an admin!";};
		if(_msg == "") exitWith {hint "You must enter a message to send!";};
		[[ObjNull,_msg,player,5],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Admin Message Sent To All: %1",_msg];
		closeDialog 887890;
	};
};