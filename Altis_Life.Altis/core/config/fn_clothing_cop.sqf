#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_B_Wetsuit","Wetsuit",2000]
		];
        if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Cadet Uniform",2000]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["U_Rangemaster","Constable Uniform",2000]];
		};
        if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_Rangemaster","Corporal Uniform",2000]];
		};
        if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Sergeant Uniform",2000]];
		};
        if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Lieutenant Uniform",2000]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","Captain Uniform",2000]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","Chief Uniform",2000]];
		};
        
        if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_NikosBody","Undercover Uniform",2000]];
		};
		
		[] call life_fnc_updateClothing;
	};

	//Hats
	case 1:
	{
		_ret =
		[
			["H_MilCap_blue","Cop Blue Hat",500],
			["H_MilCap_gry","Cop Grey Hat",500],
            ["H_Cap_blk","Cap",500]
		];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE","Sergeant Hat",500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_Colonel","Lieutenant Hat",500]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_CrewHelmetHeli_B","Heli Helmet",500]];
			_ret set[count _ret,["H_Watchcap_blk","Beanie Hat",500]];
			_ret set[count _ret,["H_HelmetSpecB_blk","Helmet",500]];
		};
	};

		//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black","Black Shades",500],
			["G_Shades_Blue","Blue Shades",500],
			["G_Sport_Blackred","Black Red Shades",500],
			["G_Sport_Checkered","Checkered Shades",500],
			["G_Sport_Blackyellow","Black Yellow Shades",500],
			["G_Sport_BlackWhite","Black White Shades",500],
			["G_Aviator","Aviators",500],
			["G_Squares","Square Glasses",500],
			["G_Lowprofile","Lowprofile Glasses",500],
			["G_Combat","Combat Goggles",500]
		];
	};

		//Vest
	case 3:
	{
		_ret =
		[
			["V_RebreatherB","Rebreather", 2000],
			["V_TacVest_blk_POLICE","Cop Vest",2000]
		];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_TacVestIR_blk","Sergeant Vest",2000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk","Lieutenant Vest",2000]];
		};
	};


	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr","Police Backpack",5000]
		];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_Kitbag_sgg","SAPD Backpack",5000]];
		};
        
        [] call life_fnc_updateClothing;
	};
};


_ret;