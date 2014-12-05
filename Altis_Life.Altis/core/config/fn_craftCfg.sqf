#include <macro.h>
/*
	File: fn_craftCfg.sqf
	Author: EdgeKiller

	Description:
	Master configuration file for the crafting menu.

*/
private["_craft"];
_craft = [_this,0,"",[""]] call BIS_fnc_param;
if(_craft == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_craft) do
{
	case "weapon":
	{
		switch(true) do
		{
			default
			{
				["Weapons",
					[
						//[Object classname, [item #1,quantity item #1,item #2,quantity item #2]],]
						["hgun_Rook40_F", ["life_inv_copperr",5,"life_inv_ironr",6,"life_inv_gold",3,"life_inv_craftingmat",1]],
						["hgun_Pistol_heavy_02_F", ["life_inv_copperr",6,"life_inv_ironr",6,"life_inv_diamondr",3,"life_inv_craftingmat",1]],
                        ["hgun_ACPC2_F", ["life_inv_copperr",6,"life_inv_ironr",6,"life_inv_diamondr",4,"life_inv_craftingmat",1]],
                        ["hgun_Pistol_heavy_01_F", ["life_inv_copperr",8,"life_inv_ironr",7,"life_inv_goldr",6,"life_inv_platinumm",6,"life_inv_craftingmat",3]],
                        
                        ["16Rnd_9x21_Mag", ["life_inv_copperore",1,"life_inv_ironore",1,"life_inv_phosphorous",1]],
                        ["9Rnd_45ACP_Mag", ["life_inv_copperore",1,"life_inv_ironore",1,"life_inv_phosphorous",1]],
                        ["6Rnd_45ACP_Cylinder", ["life_inv_copperore",1,"life_inv_ironore",1,"life_inv_phosphorous",1]],
                        ["11Rnd_45ACP_Mag", ["life_inv_copperore",2,"life_inv_ironore",2,"life_inv_phosphorous",2]]
					]
				];
			};
		};
	};
};