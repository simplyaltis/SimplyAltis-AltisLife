/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {9};
	case "oilp": {7};
	case "heroinu": {8};
	case "heroinp": {6};
	case "cannabis": {6};
	case "marijuana": {5};
	case "apple": {3};
	case "water": {3};
	case "rabbit": {3};
	case "salema": {4};
	case "ornate": {4};
	case "mackerel": {6};
	case "tuna": {8};
	case "mullet": {6};
	case "catshark": {8};
	case "turtle": {8};
	case "fishing": {4};
	case "turtlesoup": {4};
	case "donuts": {3};
	case "coffee": {3};
	case "fuelE": {4};
	case "fuelF": {7};
	case "money": {0};
	case "pickaxe": {4};
	case "copperore": {6};
	case "ironore": {7};
	case "copper_r": {5};
	case "iron_r": {5};
	case "sand": {5};
	case "salt": {5};
	case "salt_r": {3};
	case "glass": {3};
	case "diamond": {6};
	case "diamondc": {4};
	case "cocaine": {8};
	case "cocainep": {6};
	case "spikeStrip": {20};
	case "rock": {8};
	case "cement": {7};
	case "goldbar": {25};
	case "blastingcharge": {20};
	case "boltcutter": {10};
	case "defusekit": {5};
	case "storagesmall": {10};
	case "storagebig": {15};
    case "kidney": {20};
    case "rye": {4};
	case "hops": {4};
	case "yeast": {4};
	case "cornmeal": {4};
	case "mash": {4};
	case "whiskey": {6};
	case "beerp": {6};
	case "moonshine": {7};
	case "bottledwhiskey": {7};
	case "bottledbeer": {7};
	case "bottledshine": {7};
	case "bottles": {3};
    case "zipties": {4};
    case "phosphorous": {4};
    case "ephedra": {6};
    case "methu": {7};
    case "crystalmeth": {6};
    case "platinum": {6};
    case "platinumm": {4};
    case "gold": {6};
    case "goldr": {4};
    case "frog": {4};
    case "froglegs": {5};
    case "froglsd": {6};
    case "scalpel": {10};
    case "craftingmat": {1};
	default {1};
};
