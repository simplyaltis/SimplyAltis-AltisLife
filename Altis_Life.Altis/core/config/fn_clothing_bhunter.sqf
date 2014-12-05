#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_B_CombatUniform_mcam_worn","Bounty Hunter",5000]

		];
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_Bandanna_camo","Camo Bandanna",500],
			["H_Bandanna_surfer","Surfer Bandanna",500],
			["H_Bandanna_gry","Grey Bandanna",500],
			["H_Bandanna_cbr",nil,500],
			["H_Bandanna_surfer",nil,500],
			["H_Bandanna_khk","Khaki Bandanna",500],
			["H_Bandanna_sgg","Sage Bandanna",500],
			["H_StrawHat","Straw Fedora",500],
			["H_BandMask_blk","Hat & Bandanna",500],
			["H_Booniehat_tan",nil,500],
			["H_Hat_blue",nil,500],
			["H_Hat_brown",nil,500],
			["H_Hat_checker",nil,500],
			["H_Hat_grey",nil,500],
			["H_Hat_tan",nil,500],
			["H_Cap_blu",nil,500],
			["H_Cap_grn",nil,500],
			["H_Cap_grn_BI",nil,500],
			["H_Cap_oli",nil,500],
			["H_Cap_red",nil,500],
			["H_Cap_tan",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret= 
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,250],
			["G_Sport_Blackred",nil,250],
			["G_Sport_Checkered",nil,250],
			["G_Sport_Blackyellow",nil,250],
			["G_Sport_BlackWhite",nil,250],
			["G_Squares",nil,250],
			["G_Aviator",nil,250],
			["G_Lady_Mirror",nil,250],
			["G_Lady_Dark",nil,250],
			["G_Lady_Blue",nil,250],
			["G_Lowprofile",nil,250],
			["G_Combat",nil,250]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[
			["V_Rangemaster_belt",nil,1500]
		];	
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_cbr",nil,5000],
			["B_Kitbag_mcamo",nil,5000]
		];
	};
};

_ret;