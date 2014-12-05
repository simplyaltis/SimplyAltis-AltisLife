#include <macro.h>
/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_hideout","_cash"];
if((lbCurSel 2401) == -1) exitWith {hint localize "STR_Shop_Virt_Nothing"};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint localize "STR_NOTF_NoSpace"};
_amount = _diff;
_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    _cash = life_rupees;
}
else
{
    _cash = life_dosh;
};

if((_price * _amount) > _cash && {!isNil "_hideout" && {!isNil {grpPlayer getVariable "gang_bank"}} && {(grpPlayer getVariable "gang_bank") <= _price * _amount}}) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};


_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;

if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	if(!isNil "_hideout" && {!isNil {grpPlayer getVariable "gang_bank"}} && {(grpPlayer getVariable "gang_bank") >= _price}) then {
		_action = [
			format[(localize "STR_Shop_Virt_Gang_FundsMSG")+ "<br/><br/>" +(localize "STR_Shop_Virt_Gang_Funds")+ " <t color='#8cff9b'>$%1</t><br/>" +(localize "STR_Shop_Virt_YourFunds")+ " <t color='#8cff9b'>$%2</t>",
				[(grpPlayer getVariable "gang_bank")] call life_fnc_numberText,
				[life_dosh] call life_fnc_numberText
			],
			localize "STR_Shop_Virt_YourorGang",
			localize "STR_Shop_Virt_UI_GangFunds",
			localize "STR_Shop_Virt_UI_YourCash"
		] call BIS_fnc_guiMessage;
		if(_action) then {
			hint format[localize "STR_Shop_Virt_BoughtGang",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
			_funds = grpPlayer getVariable "gang_bank";
			_funds = _funds - (_price * _amount);
			grpPlayer setVariable["gang_bank",_funds,true];
			[[1,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
		} else {
            if(life_usedebit && __GETC__(life_donator) > 1) then
            {
                _cash = life_rupees;
            }
            else
            {
                _cash = life_dosh;
            };
            
            if((_price * _amount) > _cash) exitWith {[false,_type,_amount] call life_fnc_handleInv; hint localize "STR_NOTF_NotEnoughMoney";};
            
            if(life_usedebit && __GETC__(life_donator) > 1) then
            {
                __SUB__(life_rupees,(_price * _amount));
            }
            else
            {
                __SUB__(life_dosh,(_price * _amount));
            };
            
            playSound "buy";
			hint format[localize "STR_Shop_Virt_BoughtItem",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
		};
	} else {
        if(life_usedebit && __GETC__(life_donator) > 1) then
        {
            _cash = life_rupees;
        }
        else
        {
            _cash = life_dosh;
        };
        
        if((_price * _amount) > _cash) exitWith {[false,_type,_amount] call life_fnc_handleInv; hint localize "STR_NOTF_NotEnoughMoney";};
        
        if(life_usedebit && __GETC__(life_donator) > 1) then
        {
            __SUB__(life_rupees,(_price * _amount));
        }
        else
        {
            __SUB__(life_dosh,(_price * _amount));
        };
        
        playSound "buy";
        hint format[localize "STR_Shop_Virt_BoughtItem",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
	};
	[] call life_fnc_virt_update;
};

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;