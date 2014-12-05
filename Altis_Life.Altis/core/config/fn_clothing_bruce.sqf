#include <macro.h>
/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter","_return"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Hannah's Outback Outfits"];

_return = [];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
        _return =
		[
            ["U_C_Poloshirt_blue","Poloshirt Blue",500],
            ["U_C_Poloshirt_burgundy","Poloshirt Burgundy",500],
            ["U_C_Poloshirt_redwhite","Poloshirt Red/White",500],
            ["U_C_Poloshirt_salmon","Poloshirt Salmon",500],
            ["U_C_Poloshirt_stripped","Poloshirt stripped",500],
            ["U_C_Poloshirt_tricolour","Poloshirt Tricolor",500],
            ["U_C_Poor_2","Rag tagged clothes",500],
            ["U_IG_Guerilla2_2","Green stripped shirt & Pants",500],
            ["U_IG_Guerilla3_1","Brown Jacket & Pants",1000],
            ["U_IG_Guerilla2_3","The Outback Rangler",1000],
            ["U_C_HunterBody_grn","The Hunters Look",1500],
            ["U_OrestesBody","Surfing On Land",1000],
            ["U_NikosAgedBody","Casual Wears",6000]
		];
        
        if(__GETC__(life_donator) > 0) then
		{
            _return pushBack ["U_C_Journalist","Journalist",6000];
			_return pushBack ["U_C_Scientist","Scientist",6000];
            _return pushBack ["U_O_Wetsuit","Wetsuit",6000];
		};
        
        [] call life_fnc_updateClothing;
	};
	
	//Hats
	case 1:
	{
        _return =
		[
			["H_Bandanna_camo","Camo Bandanna",250],
			["H_Bandanna_surfer","Surfer Bandanna",250],
			["H_Bandanna_gry","Grey Bandanna",250],
			["H_Bandanna_cbr",nil,250],
			["H_Bandanna_surfer",nil,250],
			["H_Bandanna_khk","Khaki Bandanna",250],
			["H_Bandanna_sgg","Sage Bandanna",250],
			["H_StrawHat","Straw Fedora",250],
			["H_BandMask_blk","Hat & Bandanna",250],
			["H_Booniehat_tan",nil,250],
			["H_Hat_blue",nil,250],
			["H_Hat_brown",nil,250],
			["H_Hat_checker",nil,250],
			["H_Hat_grey",nil,250],
			["H_Hat_tan",nil,250],
			["H_Cap_blu",nil,250],
			["H_Cap_grn",nil,250],
			["H_Cap_grn_BI",nil,250],
			["H_Cap_oli",nil,250],
			["H_Cap_red",nil,250],
			["H_Cap_tan",nil,250]
		];
        
        if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["H_Cap_press","Press Hat",500];
            _return pushBack ["H_Booniehat_khk",nill,500];
            _return pushBack ["H_Booniehat_indp",nill,500];
            _return pushBack ["H_Booniehat_mcamo",nill,500];
            _return pushBack ["H_Booniehat_grn",nill,500];
            _return pushBack ["H_Booniehat_khk_hs",nill,500];
            _return pushBack ["H_Booniehat_dgtl",nill,500];
            _return pushBack ["H_Cap_blk_CMMG",nill,500];
            _return pushBack ["H_Cap_brn_SPECOPS",nill,500];
            _return pushBack ["H_Cap_tan_specops_US",nill,500];
            _return pushBack ["H_Cap_khaki_specops_UK",nill,500];
            _return pushBack ["H_Cap_blk_Raven",nill,500];
		};
	};
	
	//Glasses
	case 2:
	{
        _return =
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
        _return =
		[
		];
        
        if(__GETC__(life_donator) > 0) then
		{
			_return pushBack ["V_Press_F","Press Vest",1000];
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