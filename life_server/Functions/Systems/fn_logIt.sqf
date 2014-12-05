
private["_uid","_name","_msg"];

_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

diag_log format["---------- MONEY ---------- %1 - %2 - %3",_uid,_name,_msg];