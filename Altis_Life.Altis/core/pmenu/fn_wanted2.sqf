#include <macro.h>

private["_unit","_amount","_text"];

ctrlShow[2001,false];
if((lbCurSel 9902) == -1) exitWith {hint "No one was selected!";ctrlShow[2001,true];};
_unit = lbData [9902,lbCurSel 9902];
_unit = call compile format["%1",_unit];
_amount = lbData [9991,lbCurSel 9991];
_text = lbText [9991,lbCurSel 9991];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
//if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(__GETC__(life_coplevel) < 2) exitWith {hint "Not high enough rank to do that!";ctrlShow[2001,true];};

[[1,format["%3 added %1 to the wanted list for %2.",name _unit,_text,player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

[[getPlayerUID _unit,name _unit,_amount],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;