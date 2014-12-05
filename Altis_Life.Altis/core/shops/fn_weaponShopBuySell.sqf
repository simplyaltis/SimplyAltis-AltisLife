#include <macro.h>
/*
	File: fn_weaponShopBuySell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling of the weapon shop for buying / selling an item.
*/
disableSerialization;
private["_price","_item","_itemInfo","_bad","_cash"];
if((lbCurSel 38403) == -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
_price = lbValue[38403,(lbCurSel 38403)]; if(isNil "_price") then {_price = 0;};
_item = lbData[38403,(lbCurSel 38403)];
_itemInfo = [_item] call life_fnc_fetchCfgDetails;

_bad = "";

if((_itemInfo select 6) != "CfgVehicles") then
{
	if((_itemInfo select 4) in [4096,131072]) then
	{
		if(!(player canAdd _item) && (uiNamespace getVariable["Weapon_Shop_Filter",0]) != 1) exitWith {_bad = (localize "STR_NOTF_NoRoom")};
	};
};

if(_bad != "") exitWith {hint _bad};

if((uiNamespace getVariable["Weapon_Shop_Filter",0]) == 1) then
{
	life_dosh = life_dosh + _price;
	[_item,false] call life_fnc_handleItem;
	hint parseText format[localize "STR_Shop_Weapon_Sold",_itemInfo select 1,[_price] call life_fnc_numberText];
	[nil,(uiNamespace getVariable["Weapon_Shop_Filter",0])] call life_fnc_weaponShopFilter; //Update the menu.
}
	else
{
	private["_hideout"];
	_hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
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
			hint parseText format[localize "STR_Shop_Weapon_BoughtGang",_itemInfo select 1,[_price] call life_fnc_numberText];
			_funds = grpPlayer getVariable "gang_bank";
			_funds = _funds - _price;
			grpPlayer setVariable["gang_bank",_funds,true];
			[_item,true] spawn life_fnc_handleItem;
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
            
            if(_price > _cash) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
            
            if(life_usedebit && __GETC__(life_donator) > 1) then
            {
                __SUB__(life_rupees,_price);
            }
            else
            {
                __SUB__(life_dosh,_price);
            };

            playSound "buy";
            
			hint parseText format[localize "STR_Shop_Weapon_BoughtItem",_itemInfo select 1,[_price] call life_fnc_numberText];
			[_item,true] spawn life_fnc_handleItem;
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
        
        if(_price > _cash) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
        
        if(life_usedebit && __GETC__(life_donator) > 1) then
        {
            __SUB__(life_rupees,_price);
        }
        else
        {
            __SUB__(life_dosh,_price);
        };

        playSound "buy";
        
        hint parseText format[localize "STR_Shop_Weapon_BoughtItem",_itemInfo select 1,[_price] call life_fnc_numberText];
        [_item,true] spawn life_fnc_handleItem;
	};
};
[] call life_fnc_saveGear;