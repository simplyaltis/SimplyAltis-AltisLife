#include <macro.h>
/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bond's Jihadi Shop"];

_return = [];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
        _return =
		[
			["U_IG_Guerilla1_1",nil,7500],
			["U_I_G_Story_Protagonist_F",nil,10000],
			["U_I_G_resistanceLeader_F",nil,15000],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_PilotCoveralls",nil,20000],
			["U_IG_leader","Guerilla Leader",20000],
			["U_O_GhillieSuit",nil,75000]
		];
        
        if(__GETC__(life_donator) > 0) then
		{
            _return pushBack ["U_I_OfficerUniform",nil,10000];
            _return pushBack ["U_O_Wetsuit","Wetsuit",10000];
		};
	};
	
	//Hats
	case 1:
	{
        _return =
		[
			["H_ShemagOpen_tan",nil,2500],
			["H_Shemag_olive",nil,2500],
            ["H_Shemag_khk",nil,2500],
			["H_ShemagOpen_khk",nil,2500],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,2500],
			["H_Bandanna_camo",nil,2500]
		];
	};
	
	//Glasses
	case 2:
	{
        _return =
		[
			["G_Shades_Black",nil,500],
			["G_Shades_Blue",nil,500],
			["G_Sport_Blackred",nil,500],
			["G_Sport_Checkered",nil,500],
			["G_Sport_Blackyellow",nil,500],
			["G_Sport_BlackWhite",nil,500],
			["G_Squares",nil,500],
			["G_Lowprofile",nil,500],
			["G_Combat",nil,500]
		];
	};
	
	//Vest
	case 3:
	{
        _return =
		[
			["V_TacVest_khk",nil,15000],
			["V_BandollierB_cbr",nil,7500],
			["V_HarnessO_brn",nil,10000]
		];
        
        if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["V_TacVest_blk",nil,15000];
            _return pushBack ["V_TacVest_camo",nil,15000];
            _return pushBack ["V_BandollierB_blk",nil,15000];
		};
	};
	
	//Backpacks
	case 4:
	{
        _return =
		[
			["B_AssaultPack_cbr",nil,5000],
			["B_Kitbag_mcamo",nil,5000],
			["B_TacticalPack_oli",nil,5000],
			["B_FieldPack_ocamo",nil,5000],
			["B_Bergen_sgg",nil,5000],
			["B_Kitbag_cbr",nil,5000],
			["B_Carryall_oli",nil,6000],
			["B_Carryall_khk",nil,6000]
		];
        
        if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["B_Carryall_cbr",nil,6000];
            _return pushBack ["B_Carryall_mcamo",nil,6000];
            _return pushBack ["B_Carryall_oucamo",nil,6000];
            _return pushBack ["B_Carryall_ocamo",nil,6000];
		};
	};
};

_return;