/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Cop"};
            case 9: {_color = "City"};
			case 10: {_color = "Highway"};
			case 11: {_color = "Coast"};
			case 12: {_color = "Altis Customs"};
            case 13: {_color = "Orange Wolf"};
            case 14: {_color = "Skull"};
            case 15: {_color = "Steel"};
            case 16: {_color = "Pokemon"};
            case 17: {_color = "Nyan Cat"};
            case 18: {_color = "Dodge Ram"};
            case 19: {_color = "SimplyAltis"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
            case 8: {_color = "Hello Kitty"};
            case 9: {_color = "My Little Pony"};
            case 10: {_color = "DayZ"};
            case 11: {_color = "Monster Energy"};
            case 12: {_color = "Ghostbusters"};
            case 13: {_color = "Energy"};
            case 14: {_color = "Redgull"};
            case 15: {_color = "Spongebob"};
            case 16: {_color = "SimplyAltis"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
            case 7: {_color = "Hello Kitty"};
            case 8: {_color = "My Little Pony"};
            case 9: {_color = "DayZ"};
            case 10: {_color = "Monster Energy"};
            case 11: {_color = "Ghostbusters"};
            case 12: {_color = "Energy"};
            case 13: {_color = "Redgull"};
            case 14: {_color = "Spongebob"};
            case 15: {_color = "SimplyAltis"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "White Cop";};
			case 5: {_color = "Medic";};
			case 6: {_color = "Highway Cop";};
			case 7: {_color = "Aussie Cop";};
			case 8: {_color = "Undercover Cop";};
            case 9: {_color = "Freeman";};
            case 10: {_color = "Tokyo Drift";};
            case 11: {_color = "Batman";};
            case 12: {_color = "Ferrari";};
            case 13: {_color = "Superman";};
            case 14: {_color = "Dark Knight";};
            case 15: {_color = "SimplyAltis"};
            case 16: {_color = "SimplyAltis Black"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
            case 2: {_color = "Medic"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
            case 9: {_color = "Police ATV"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Police"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS"};
            case 15: {_color = "Redgull"};
            case 16: {_color = "Cop"};
            case 17: {_color = "Black Cop"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Cop"};
            case 5: {_color = "EMS"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SWAT"};
			case 1: {_color = "Police"};
            case 2: {_color = "Altis Customs"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
            case 2: {_color = "Cop"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
};

_color;