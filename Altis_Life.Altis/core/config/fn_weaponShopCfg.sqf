#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_equipment":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Simply Altis Cop Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",5000],
						["Binocular",nil,500],
						["ItemGPS",nil,500],
                        ["ItemMap",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag","Stun Pistol Magazine",250]
					]
				];
			};
		};
	};
    
    case "cop_const":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You need to be a Constable!"};
			default
			{
				["SAPD Constable Shop",
					[
                        ["arifle_sdar_F","Taser Rifle",15000],
                        ["hgun_P07_F",nil,10000],
						["HandGrenade_Stone","Flashbang",2500],
						["30Rnd_9x21_Mag",nil,500],
                        ["20Rnd_556x45_UW_mag","Taser Rifle Magazine",500]
					]
				];
			};
		};
	};
    
    case "cop_corp":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You need to be a Corporal!"};
			default
			{
				["SAPD Corporal Shop",
					[
						["arifle_MX_F",nil,25000],
                        ["hgun_P07_F",nil,10000],
						["HandGrenade_Stone","Flashbang",2500],
                        ["SmokeShellBlue","Teargas",4000],
						["acc_flashlight",nil,1000],
                        ["acc_pointer_IR",nil,2000],
						["optic_Arco",nil,2500],
                        ["optic_Hamr",nil,3000],
						["muzzle_snds_H",nil,5500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_9x21_Mag",nil,500]
					]
				];
			};
		};
	};
    
    
    case "cop_sgt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You need to be a Sergeant!"};
			default
			{
				["SAPD Sergeant Shop",
					[
						["arifle_MX_F",nil,25000],
                        ["arifle_MXC_F",nil,35000],
                        ["arifle_MX_Black_F",nil,30000],
                        ["arifle_MXC_Black_F",nil,40000],
                        ["hgun_P07_F",nil,10000],
						["HandGrenade_Stone","Flashbang",2500],
                        ["SmokeShellBlue","Teargas",4000],
						["acc_flashlight",nil,1000],
                        ["acc_pointer_IR",nil,2000],
						["optic_Holosight",nil,2000],
						["optic_Arco",nil,2500],
                        ["optic_Hamr",nil,3000],
                        ["optic_ACO",nil,5500],
						["muzzle_snds_H",nil,5500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_9x21_Mag",nil,500]
					]
				];
			};
		};
	};
    
    case "cop_lieut":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You need to be a Lieutenant!"};
			default
			{
				["SAPD Lieutenant Shop",
					[
						["arifle_MX_F",nil,25000],
                        ["arifle_MXC_F",nil,35000],
                        ["arifle_MX_Black_F",nil,30000],
                        ["arifle_MXC_Black_F",nil,40000],
                        ["hgun_P07_F",nil,10000],
						["HandGrenade_Stone","Flashbang",2500],
                        ["SmokeShellBlue","Teargas",4000],
						["acc_flashlight",nil,1000],
                        ["acc_pointer_IR",nil,2000],
						["optic_Holosight",nil,2000],
						["optic_Arco",nil,2500],
                        ["optic_Hamr",nil,3000],
                        ["optic_ACO",nil,5500],
                        ["optic_SOS",nil,10000],
						["muzzle_snds_H",nil,5500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_9x21_Mag",nil,500]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,500],
                        ["ItemMap",nil,500],
						["Binocular",nil,500],
						["ToolKit",nil,500],
						["FirstAidKit",nil,500],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
                        ["U_C_WorkerCoveralls","Uniform",1000],
                        ["B_Carryall_khk","Backpack",3000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,35000],
						["arifle_Katiba_F",nil,40000],
						["srifle_DMR_01_F",nil,60000],
						["arifle_SDAR_F",nil,30000],
						["optic_ACO_grn",nil,7500],
						["optic_Holosight",nil,7500],
						["acc_flashlight",nil,2000],
						["optic_Hamr",nil,10000],
						["30Rnd_9x21_Mag",nil,500],
						["20Rnd_556x45_UW_mag",nil,500],
						["30Rnd_556x45_Stanag",nil,500],
						["10Rnd_762x51_Mag",nil,1000],
						["30Rnd_65x39_caseless_green",nil,500],
                        ["V_HarnessOGL_gry",nil,350000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,9000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,16000],
						["V_Rangemaster_belt",nil,8500],
						["16Rnd_9x21_Mag",nil,250],
						["9Rnd_45ACP_Mag",nil,500],
						["6Rnd_45ACP_Cylinder",nil,500]
					]
				];
			};
		};
	};
    
    case "bountyhunter":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_bountyhunter): {"You don't have a Bounty Hunter license!"};
			default
			{
				["Bounty Hunter Weapons",
					[
						["hgun_PDW2000_F",nil,30000],
						["optic_ACO_grn_smg",nil,7500],
                        ["optic_Aco_smg",nil,7500],
						["16Rnd_9x21_Mag",nil,1000],
						["FirstAidKit",nil,500],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
    
    case "paintball": 
	{ 
		["Paintball Store", 
			[ 
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,1500],
				["Chemlight_yellow",nil,1500],
				["Chemlight_green",nil,1500],
				["Chemlight_blue",nil,1500],
				["arifle_TRG21_MRCO_F",nil,20000],
				["30Rnd_556x45_Stanag_Tracer_Red",nil,500]
			] 
		];
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,9000],
						["hgun_Pistol_heavy_02_F",nil,15000],
						["hgun_ACPC2_F",nil,16000],
						["V_Rangemaster_belt",nil,8500],
						["16Rnd_9x21_Mag",nil,500],
						["9Rnd_45ACP_Mag",nil,500],
						["6Rnd_45ACP_Cylinder",nil,500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,500],
                ["ItemMap",nil,500],
				["ItemGPS",nil,500],
				["ToolKit",nil,500],
				["FirstAidKit",nil,500],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,1500],
				["Chemlight_yellow",nil,1500],
				["Chemlight_green",nil,1500],
				["Chemlight_blue",nil,1500]
			]
		];
	};
    
    case "hannah":
	{
		switch(true) do
		{
			case (__GETC__(life_bondlevel) < 5): {"You are not an admin!"};
			default
			{
				["Hannah's Shop",
					[
						["arifle_MX_F",nil,1],
                        ["arifle_MXC_F",nil,1],
                        ["arifle_MX_Black_F",nil,1],
                        ["arifle_MXC_Black_F",nil,1],
                        ["hgun_P07_F",nil,10000],
						["HandGrenade_Stone","Flashbang",1],
                        ["SmokeShellBlue","Teargas",1],
						["acc_flashlight",nil,1],
                        ["acc_pointer_IR",nil,1],
						["optic_Holosight",nil,1],
						["optic_Arco",nil,1],
                        ["optic_Hamr",nil,1],
                        ["optic_ACO",nil,1],
                        ["optic_SOS",nil,1],
						["muzzle_snds_H",nil,1],
						["30Rnd_65x39_caseless_mag",nil,1],
						["30Rnd_9x21_Mag",nil,1],
                        ["hgun_Rook40_F",nil,1],
						["hgun_Pistol_heavy_02_F",nil,1],
						["hgun_ACPC2_F",nil,1],
						["V_Rangemaster_belt",nil,1],
						["16Rnd_9x21_Mag",nil,1],
						["9Rnd_45ACP_Mag",nil,1],
						["6Rnd_45ACP_Cylinder",nil,1],
                        ["Binocular",nil,1],
                        ["ItemMap",nil,1],
                        ["ItemGPS",nil,1],
                        ["ToolKit",nil,1],
                        ["FirstAidKit",nil,1],
                        ["NVGoggles",nil,1],
                        ["Chemlight_red",nil,1],
                        ["Chemlight_yellow",nil,1],
                        ["Chemlight_green",nil,1],
                        ["Chemlight_blue",nil,1],
                        ["hgun_PDW2000_F",nil,1],
						["optic_ACO_grn_smg",nil,1],
                        ["optic_Aco_smg",nil,1],
                        ["arifle_TRG20_F",nil,1],
						["arifle_Katiba_F",nil,1],
						["srifle_DMR_01_F",nil,1],
						["arifle_SDAR_F",nil,1],
						["optic_ACO_grn",nil,1],
						["20Rnd_556x45_UW_mag",nil,1],
						["30Rnd_556x45_Stanag",nil,1],
						["10Rnd_762x51_Mag",nil,1],
						["30Rnd_65x39_caseless_green",nil,1],
                        ["V_HarnessOGL_gry",nil,1]
					]
				];
			};
		};
	};
};
