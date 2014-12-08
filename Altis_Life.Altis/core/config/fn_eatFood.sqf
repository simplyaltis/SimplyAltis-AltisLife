/*
	File: fn_eatFood.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main handling system for eating food.
	*Needs to be revised and made more modular and more indept effects*
*/
private["_food","_val","_sum"];
_food = [_this,0,"",[""]] call BIS_fnc_param;
if(_food == "") exitWith {};

if([false,_food,1] call life_fnc_handleInv) then {
	switch (_food) do
	{
		case "apple": {_val = 10};
		case "rabbit":{ _val = 20};
		case "salema": {_val = 30};
		case "ornate": {_val = 25};
		case "mackerel": {_val = 30};
		case "tuna": {_val = 100};
		case "mullet": {_val = 80};
		case "catshark": {_val = 100};
		case "turtle": {_val = 100};
		case "turtlesoup": {_val = 100};
		case "donuts": {_val = 30};
		case "tbacon": {_val = 40};
		case "peach": {_val = 10};
        
        case "spaghetti": {_val = 100};
        case "fettuccine": {_val = 100};
        case "gsalad": {_val = 100};
        case "neopizza": {_val = 100};
        case "breadsticks": {_val = 100};
        case "taco": {_val = 100};
        case "burrito": {_val = 100};
        case "enchillada": {_val = 100};
        case "chipsalsa": {_val = 100};
        case "mexrice": {_val = 100};
        case "nachos": {_val = 100};
        case "vegrice": {_val = 100};
        case "lomein": {_val = 100};
        case "eggroll": {_val = 100};
        case "springroll": {_val = 100};
        case "sushi": {_val = 100};
        case "veghakka": {_val = 100};
        case "dumplings": {_val = 100};
        case "vegburger": {_val = 100};
        case "curlyfries": {_val = 100};
        case "icecream": {_val = 100};
        case "applepie": {_val = 100};
        case "lollipop": {_val = 100};
	};

	_sum = life_hunger + _val;
	if(_sum > 100) then
    {
        _sum = 100; 
        
        if(_food in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","froglegs"]) then
        {
            player setFatigue 0.5; 
            hint "You have over eaten, you are now feeling fatigued.";
        };
    };
	life_hunger = _sum;
    
    player say3D "eat";
};