#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
            ["C_Kart_01_F",15000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",20000],
            ["C_SUV_01_F",25000]
		];
        
        if(__GETC__(life_medicLevel) > 1) then
		{
			_return pushBack ["C_Van_01_box_F",55000];
		};
        
        if(__GETC__(life_medicLevel) > 2) then
		{
			_return pushBack ["I_Truck_02_medical_F",70000];
		};
        
        if(__GETC__(life_medicLevel) > 3) then
		{
			_return pushBack ["O_Truck_03_medical_F",85000];
            _return pushBack ["B_Truck_01_medical_F",100000];
		};
	};
	
	case "med_air_hs": {
        if(__GETC__(life_medicLevel) > 1) then
		{
			_return pushBack ["B_Heli_Light_01_F",150000];  // Hummingbird
		};
        
        if(__GETC__(life_medicLevel) > 2) then
		{
			_return pushBack ["O_Heli_Light_02_unarmed_F",200000];  // Orca
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],           // Quakebike
			["C_Hatchback_01_F",15000],         // Hatchback
			["C_Offroad_01_F",20000],           // Offroad
			["C_SUV_01_F",25000],               // SUV
			["C_Van_01_transport_F",50000],     // Truck
            ["C_Van_01_box_F",55000]            // Truck Boxer
		];
        
        if(__GETC__(life_donator) > 1) then
		{
			_return pushBack ["C_Hatchback_01_sport_F",25000]; // Hatchback (sport)
		};
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",55000],           // Truck Boxer
			["I_Truck_02_transport_F",75000],   // Zamak Transport
			["I_Truck_02_covered_F",100000],     // Zamak Transport Covered
			["B_Truck_01_transport_F",150000],  // HEMTT Transport
			["O_Truck_03_transport_F",200000],  // Tempest Transport
			["O_Truck_03_covered_F",250000],    // Tempest Transport Covered
			["B_Truck_01_box_F",200000],        // HEMTT Box
			["O_Truck_03_device_F",350000]      // Tempest Device
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],       // Quakebike
			["B_G_Offroad_01_F",25000],     // Offroad (guerilla)
			["O_MRAP_02_F",300000],          // Iffrit
			["B_Heli_Light_01_F",150000]    // Hummingbird
		];
	};
	
	case "cop_car":
	{
        _return pushBack ["B_Quadbike_01_F",2500];   // Quakebike
		_return pushBack ["C_Offroad_01_F",20000];   // Offroad
        
        if(__GETC__(life_coplevel) > 1) then
		{
            _return pushBack ["C_SUV_01_F",25000];       // SUV
        };
        
		if(__GETC__(life_coplevel) > 3) then
		{
            _return pushBack ["I_Truck_02_covered_F",100000]; // Zam
		};
        
        if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["B_MRAP_01_F",95000]; // Hunter
		};
        
        if(__GETC__(life_donator) > 1 && __GETC__(life_coplevel) > 2) then
		{
			_return pushBack ["C_Hatchback_01_sport_F",25000]; // Hatchback (sport)
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",150000],
			["O_Heli_Light_02_unarmed_F",200000],
            ["I_Heli_Transport_02_F",400000]
		];
	};
	
	case "cop_air":
	{
        if(__GETC__(life_coplevel) > 2) then
		{
            _return pushBack ["B_Heli_Light_01_F",150000];
        };
        
        if(__GETC__(life_coplevel) > 3) then
		{
            _return pushBack ["O_Heli_Light_02_unarmed_F",200000];
        };
        
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["B_Heli_Transport_01_F",950000];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
            _return pushBack ["B_Heli_Light_01_F",150000];
        };
        
        if(__GETC__(life_coplevel) > 3) then
		{
            _return pushBack ["O_Heli_Light_02_unarmed_F",200000];
        };
        
		if(__GETC__(life_coplevel) > 5) then
		{
			_return pushBack ["B_Heli_Transport_01_F",950000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",7500],
			["C_Boat_Civil_01_F",15000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",5500],
			["C_Boat_Civil_01_police_F",15000],
			["B_Boat_Armed_01_minigun_F",100000]
		];
	};
};

_return;
