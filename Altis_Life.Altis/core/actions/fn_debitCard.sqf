#include <macro.h>
/*
	File: fn_debitCard.sqf
	
	Description:
	Donator Perk
*/

if(__GETC__(life_donator) > 1) then
{
    _price = 50000;

    if(life_usedebit) exitWith {hint "You already have a debit card! No need to buy another.";};
    if(life_rupees < _price) exitWith {hint "You do not have $50,000 to purchase a debit card.";};
    
    life_rupees = life_rupees - _price;
    playSound "buy";
    
    life_usedebit = true;
    
    hint "Thank you for purchasing a debit card from the Simply Altis Bank! You do not need to carry any cash! Money will be deducted straight from your bank account.";
    
    [] call life_fnc_atmMenu;
    [6] call SOCK_fnc_updatePartial;
}
else
{
    hint "Only donators have the ability to purchase a debit card. Debit card allows you to purchase anything straight from your bank account! To Donate, Visit us @ www.simplyaltis.com";
    
    life_usedebit = false;
};