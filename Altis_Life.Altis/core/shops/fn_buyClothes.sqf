#include <macro.h>
/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price","_cash"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    _cash = life_rupees;
}
else
{
    _cash = life_dosh;
};

if(_price > _cash) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};

if(life_usedebit && __GETC__(life_donator) > 1) then
{
    life_rupees = life_rupees - _price;
}
else
{
    life_dosh = life_dosh - _price;
};

playSound "buy";

life_clothesPurchased = true;
closeDialog 0;