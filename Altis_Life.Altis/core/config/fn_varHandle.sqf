/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_dosh"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
            case "kidney": {"life_inv_kidney"};
            case "rye": {"life_inv_rye"};
			case "hops": {"life_inv_hops"};
			case "yeast": {"life_inv_yeast"};
			case "cornmeal": {"life_inv_cornmeal"};
			case "moonshine": {"life_inv_moonshine"};
			case "bottles": {"life_inv_bottles"};
			case "bottledshine": {"life_inv_bottledshine"};
			case "bottledbeer": {"life_inv_bottledbeer"};
			case "bottledwhiskey": {"life_inv_bottledwhiskey"};
			case "beerp": {"life_inv_beerp"};
			case "whiskey": {"life_inv_whiskey"};
			case "mash": {"life_inv_mash"};
            case "zipties": {"life_inv_zipties"};
            case "phosphorous": {"life_inv_phosphorous"};
            case "ephedra": {"life_inv_ephedra"};
            case "methu": {"life_inv_methu"};
            case "crystalmeth": {"life_inv_crystalmeth"};
            case "frog": {"life_inv_frog"};
            case "froglsd": {"life_inv_froglsd"};
            case "froglegs": {"life_inv_froglegs"};
            case "platinum": {"life_inv_platinum"};
            case "gold": {"life_inv_gold"};
            case "platinumm": {"life_inv_platinumm"};
            case "goldr": {"life_inv_goldr"};
            case "scalpel": {"life_inv_scalpel"};
            case "craftingmat": {"life_inv_craftingmat"};
            
            case "spaghetti": {"life_inv_spaghetti"};
            case "fettuccine": {"life_inv_fettuccine"};
            case "gsalad": {"life_inv_gsalad"};
            case "neopizza": {"life_inv_neopizza"};
            case "breadsticks": {"life_inv_breadsticks"};
            case "ofanta": {"life_inv_ofanta"};
            case "sparkwater": {"life_inv_sparkwater"};
            case "taco": {"life_inv_taco"};
            case "burrito": {"life_inv_burrito"};
            case "enchillada": {"life_inv_enchillada"};
            case "chipsalsa": {"life_inv_chipsalsa"};
            case "mexrice": {"life_inv_mexrice"};
            case "nachos": {"life_inv_nachos"};
            case "canecola": {"life_inv_canecola"};
            case "hotchoc": {"life_inv_hotchoc"};
            case "vegrice": {"life_inv_vegrice"};
            case "lomein": {"life_inv_lomein"};
            case "eggroll": {"life_inv_eggroll"};
            case "springroll": {"life_inv_springroll"};
            case "sushi": {"life_inv_sushi"};
            case "veghakka": {"life_inv_veghakka"};
            case "dumplings": {"life_inv_dumplings"};
            case "greentea": {"life_inv_greentea"};
            case "vegburger": {"life_inv_vegburger"};
            case "curlyfries": {"life_inv_curlyfries"};
            case "unsweettea": {"life_inv_unsweettea"};
            case "pepsi": {"life_inv_pepsi"};
            case "icecream": {"life_inv_icecream"};
            case "applepie": {"life_inv_applepie"};
            case "lollipop": {"life_inv_lollipop"};
            
            case "roadcone": {"life_inv_roadcone"};
			case "roadbarrier": {"life_inv_roadbarrier"};
			case "tapesign": {"life_inv_tapesign"};
			case "arrowleft": {"life_inv_arrowleft"};
			case "arrowright": {"life_inv_arrowright"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_dosh": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
            case "life_inv_kidney": {"kidney"}; 
            case "life_inv_mash": {"mash"};
			case "life_inv_yeast": {"yeast"};
			case "life_inv_rye": {"rye"};
			case "life_inv_hops": {"hops"};
			case "life_inv_whiskey": {"whiskey"};
			case "life_inv_beerp": {"beerp"};
			case "life_inv_bottles": {"bottles"};
			case "life_inv_cornmeal": {"cornmeal"};
			case "life_inv_bottledwhiskey": {"bottledwhiskey"};
			case "life_inv_bottledbeer": {"bottledbeer"};
			case "life_inv_bottledshine": {"bottledshine"};
			case "life_inv_moonshine": {"moonshine"};
            case "life_inv_zipties": {"zipties"};
            case "life_inv_phosphorous": {"phosphorous"};
            case "life_inv_ephedra": {"ephedra"};
            case "life_inv_methu": {"methu"};
            case "life_inv_crystalmeth": {"crystalmeth"};
            case "life_inv_frog": {"frog"};
            case "life_inv_froglsd": {"froglsd"};
            case "life_inv_froglegs": {"froglegs"};
            case "life_inv_platinum": {"platinum"};
            case "life_inv_gold": {"gold"};
            case "life_inv_platinumm": {"platinumm"};
            case "life_inv_goldr": {"goldr"};
            case "life_inv_scalpel": {"scalpel"};
            case "life_inv_craftingmat": {"craftingmat"};
            
            case "life_inv_spaghetti": {"spaghetti"};
            case "life_inv_fettuccine": {"fettuccine"};
            case "life_inv_gsalad": {"gsalad"};
            case "life_inv_neopizza": {"neopizza"};
            case "life_inv_breadsticks": {"breadsticks"};
            case "life_inv_ofanta": {"ofanta"};
            case "life_inv_sparkwater": {"sparkwater"};
            case "life_inv_taco": {"taco"};
            case "life_inv_burrito": {"burrito"};
            case "life_inv_enchillada": {"enchillada"};
            case "life_inv_chipsalsa": {"chipsalsa"};
            case "life_inv_mexrice": {"mexrice"};
            case "life_inv_nachos": {"nachos"};
            case "life_inv_canecola": {"canecola"};
            case "life_inv_hotchoc": {"hotchoc"};
            case "life_inv_vegrice": {"vegrice"};
            case "life_inv_lomein": {"lomein"};
            case "life_inv_eggroll": {"eggroll"};
            case "life_inv_springroll": {"springroll"};
            case "life_inv_sushi": {"sushi"};
            case "life_inv_veghakka": {"veghakka"};
            case "life_inv_dumplings": {"dumplings"};
            case "life_inv_greentea": {"greentea"};
            case "life_inv_vegburger": {"vegburger"};
            case "life_inv_curlyfries": {"curlyfries"};
            case "life_inv_unsweettea": {"unsweettea"};
            case "life_inv_pepsi": {"pepsi"};
            case "life_inv_icecream": {"icecream"};
            case "life_inv_applepie": {"applepie"};
            case "life_inv_lollipop": {"lollipop"};
            
            case "life_inv_roadcone": {"roadcone"};
			case "life_inv_roadbarrier": {"roadbarrier"};
			case "life_inv_tapesign": {"tapesign"};
			case "life_inv_arrowleft": {"arrowleft"};
			case "life_inv_arrowright": {"arrowright"};
		};
	};
};
