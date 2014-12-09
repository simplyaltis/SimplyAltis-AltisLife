#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this
life_drink = 0;
life_donDis = 1;
life_smartphoneTarget = ObjNull;
life_channel_send = true;
life_isSuicide = false;
life_action_gathering = false;
life_extrapolice = 0;
life_request_timer = false;
life_is_alive = false;
civ_position = [];

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,4000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,1); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,250000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,50000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,false); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 88; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 88; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 90;
life_hunger = 90;
__CONST__(life_paycheck_period,10); //Five minutes
life_dosh = 0;
__CONST__(life_impound_car,1000);
__CONST__(life_impound_boat,1000);
__CONST__(life_impound_air,1000);
life_istazed = false;
life_isdowned = false;
life_my_gang = ObjNull;
life_usedebit = false;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_rupees = 50000; //Starting Bank Money
		life_paycheck = 2500; //Paycheck Amount
	};
	case civilian: 
	{
		life_rupees = 15000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	
	case independent: {
		life_rupees = 35000;
		life_paycheck = 2000;
	};
};

/* Safe Zones
["markername", safe_radius] */
life_safe_points =
	[
		["safe1", 400],
        ["safe2", 400],
		["safe3", 400],
		["safe4", 500],
		["safe5", 400]
	];
__CONST__(life_safe_points,life_safe_points);

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
    "life_inv_kidney",
    "life_inv_cornmeal",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_moonshine",
	"life_inv_mash",
    "life_inv_zipties",
    "life_inv_phosphorous",
    "life_inv_ephedra",
    "life_inv_methu",
    "life_inv_crystalmeth",
    "life_inv_frog",
    "life_inv_froglsd",
    "life_inv_froglegs",
    "life_inv_platinum",
    "life_inv_gold",
    "life_inv_platinumm",
    "life_inv_goldr",
    "life_inv_scalpel",
    "life_inv_craftingmat",
    "life_inv_spaghetti",
    "life_inv_fettuccine",
    "life_inv_gsalad",
    "life_inv_neopizza",
    "life_inv_breadsticks",
    "life_inv_ofanta",
    "life_inv_sparkwater",
    "life_inv_taco",
    "life_inv_burrito",
    "life_inv_enchillada",
    "life_inv_chipsalsa",
    "life_inv_mexrice",
    "life_inv_nachos",
    "life_inv_canecola",
    "life_inv_hotchoc",
    "life_inv_vegrice",
    "life_inv_lomein",
    "life_inv_eggroll",
    "life_inv_springroll",
    "life_inv_sushi",
    "life_inv_veghakka",
    "life_inv_dumplings",
    "life_inv_greentea",
    "life_inv_vegburger",
    "life_inv_curlyfries",
    "life_inv_unsweettea",
    "life_inv_pepsi",
    "life_inv_icecream",
    "life_inv_applepie",
    "life_inv_lollipop",
    "life_inv_roadcone",
    "life_inv_roadbarrier",
    "life_inv_tapesign",
    "life_inv_arrowleft",
    "life_inv_arrowright"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
    ["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"],
    ["license_civ_meth","civ"],
    ["license_civ_gold","civ"],
    ["license_civ_platinum","civ"],
    ["license_civ_frog","civ"],
    ["license_civ_lawyer","civ"],
    ["license_civ_bountyhunter","civ"],
    ["license_civ_passport","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = 
[
    ["heroinu",900],
    ["heroinp",1900],
    ["cocaine",1000],
    ["cocainep",2300],
    ["marijuana",1150],
    ["cannabis",650],
    ["turtle",1500],
    ["blastingcharge",8000],
    ["boltcutter",5000],
    ["kidney",5000],
    ["moonshine",1300],
    ["bottledshine",1500],
    ["mash",500],
    ["ephedra",1000],
    ["crystalmeth",2600],
    ["methu",1100],
    ["froglsd",1500],
    ["scalpel",4000],
    ["goldbar",5000]
];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1000],
	["heroinp",2500],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",1600],
	["turtle",3000],
	["water",10],
	["coffee",10],
	["turtlesoup",1000],
	["donuts",50],
	["marijuana",1750],
	["tbacon",25],
	["lockpick",100],
	["pickaxe",750],
	["redgull",250],
	["peach",50],
	["cocaine",1100],
	["cocainep",3000],
	["diamond",500],
	["diamondc",1500],
	["iron_r",1500],
	["copper_r",1400],
	["salt_r",1300],
	["glass",1350],
	["fuelF",500],
	["spikeStrip",1000],
	["cement",1550],
	["goldbar",90000],
    ["kidney",20000],
    ["bottledshine",2000], 
    ["bottledwhiskey",1300], 
    ["bottledbeer",1000], 
    ["moonshine",1900], 
    ["whiskey",1100], 
    ["beerp",1000], 
    ["mash",750], 
    ["rye",600], 
    ["hops",600], 
    ["yeast",600], 
    ["cornmeal",100], 
    ["bottles",50],
    ["zipties",1000],
    ["crystalmeth",3500],
    ["methu",2000],
    ["platinumm",1500],
    ["platinum",500],
    ["goldr",2000],
    ["gold",1000],
    ["froglegs",1000],
    ["froglsd",2500],
    ["ephedra",1500],
    ["scalpel",5000],
    ["craftingmat",1500],
    ["spaghetti",100],
    ["fettuccine",100],
    ["gsalad",50],
    ["neopizza",100],
    ["breadsticks",50],
    ["ofanta",25],
    ["sparkwater",25],
    ["taco",100],
    ["burrito",100],
    ["enchillada",125],
    ["chipsalsa",50],
    ["mexrice",100],
    ["nachos",100],
    ["canecola",25],
    ["hotchoc",50],
    ["vegrice",100],
    ["lomein",100],
    ["eggroll",50],
    ["springroll",50],
    ["sushi",100],
    ["veghakka",100],
    ["dumplings",50],
    ["greentea",25],
    ["vegburger",100],
    ["curlyfries",100],
    ["unsweettea",25],
    ["pepsi",25],
    ["icecream",50],
    ["applepie",100],
    ["lollipop",50],
    ["roadcone",500],
    ["roadbarrier",500],
    ["tapesign",500],
    ["arrowleft",500],
    ["arrowright",500]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",100],
	["rabbit",125],
	["salema",135],
	["ornate",140],
	["mackerel",275],
	["tuna",1000],
	["mullet",550],
	["catshark",500],
	["water",50],
	["turtle",4500],
	["turtlesoup",1500],
	["donuts",100],
	["coffee",100],
	["tbacon",100],
	["lockpick",1000],
	["pickaxe",1500],
	["redgull",500],
	["fuelF",1000],
	["peach",100],
	["spikeStrip",1500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",4000],
	["storagesmall",75000],
	["storagebig",150000],
    ["kidney",50000],
    ["bottledshine",3500], 
    ["bottledwhiskey",2500], 
    ["bottledbeer",1500], 
    ["moonshine",3000], 
    ["whiskey",2000], 
    ["beerp",1500], 
    ["cornmeal",500], 
    ["mash",1500], 
    ["bottles",100],
    ["zipties",2000],
    ["scalpel",12000],
    ["craftingmat",2500],
    ["spaghetti",250],
    ["fettuccine",250],
    ["gsalad",100],
    ["neopizza",250],
    ["breadsticks",100],
    ["ofanta",50],
    ["sparkwater",50],
    ["taco",250],
    ["burrito",250],
    ["enchillada",300],
    ["chipsalsa",100],
    ["mexrice",150],
    ["nachos",150],
    ["canecola",50],
    ["hotchoc",100],
    ["vegrice",250],
    ["lomein",250],
    ["eggroll",100],
    ["springroll",100],
    ["sushi",150],
    ["veghakka",250],
    ["dumplings",100],
    ["greentea",50],
    ["vegburger",300],
    ["curlyfries",150],
    ["unsweettea",50],
    ["pepsi",50],
    ["icecream",100],
    ["applepie",150],
    ["lollipop",100],
    ["roadcone",1000],
    ["roadbarrier",1000],
    ["tapesign",1000],
    ["arrowleft",1000],
    ["arrowright",1000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",10],
	["hgun_P07_snds_F",10],
	["hgun_P07_F",10],
	["ItemGPS",10],
	["ToolKit",10],
	["FirstAidKit",10],
	["Medikit",10],
	["NVGoggles",10],
	["16Rnd_9x21_Mag",10],
	["20Rnd_556x45_UW_mag",10],
	["ItemMap",10],
	["ItemCompass",10],
	["Chemlight_blue",10],
	["Chemlight_yellow",10],
	["Chemlight_green",10],
	["Chemlight_red",10],
	["hgun_Rook40_F",10],
	["arifle_Katiba_F",10],
	["30Rnd_556x45_Stanag",10],
	["20Rnd_762x51_Mag",10],
	["30Rnd_65x39_caseless_green",10],
	["DemoCharge_Remote_Mag",10],
	["SLAMDirectionalMine_Wire_Mag",10],
	["optic_ACO_grn",10],
	["acc_flashlight",10],
	["srifle_EBR_F",10],
	["arifle_TRG21_F",10],
	["optic_MRCO",10],
	["optic_Aco",10],
	["arifle_MX_F",10],
	["arifle_MXC_F",10],
	["arifle_MXM_F",10],
	["MineDetector",10],
	["optic_Holosight",10],
	["acc_pointer_IR",10],
	["arifle_TRG20_F",10],
	["SMG_01_F",10],
	["arifle_Mk20C_F",10],
	["30Rnd_45ACP_Mag_SMG_01",10],
	["30Rnd_9x21_Mag",10]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",250],
	["C_Hatchback_01_F",2000],
	["C_Offroad_01_F",3000],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",3500],
	["C_Van_01_transport_F",4000],
	["C_Hatchback_01_sport_F",3500],
	["C_Van_01_fuel_F",1000],
	["I_Heli_Transport_02_F",8000],
	["C_Van_01_box_F",4500],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",5500],
	["B_Truck_01_transport_F",6000],
	["B_Truck_01_box_F",6500],
	["O_MRAP_02_F",10000],
	["B_Heli_Light_01_F",6000],
	["O_Heli_Light_02_unarmed_F",6500],
	["C_Rubberboat",1000],
	["C_Boat_Civil_01_F",2000],
	["B_Boat_Transport_01_F",1000],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",5500],
	["B_SDV_01_F",1000],
	["B_MRAP_01_F",3000],
    ["C_Kart_01_F",2000],
    ["C_Kart_01_Blu_F",2000],
    ["C_Kart_01_Fuel_F",2000],
    ["C_Kart_01_Red_F",2000],
    ["C_Kart_01_Vrana_F",2000],
    ["I_Truck_02_medical_F",4000],
    ["O_Truck_03_medical_F",4500],
    ["B_Truck_01_medical_F",5000],
    ["O_Truck_03_transport_F",6000],
    ["O_Truck_03_covered_F",7000],
    ["O_Truck_03_device_F",7500],
    ["B_Heli_Transport_01_F",10000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",1250],
	["C_Hatchback_01_F",7500],
	["C_Offroad_01_F",9000],
	["B_G_Offroad_01_F",12500],
	["C_SUV_01_F",12500],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",12500],
	["C_Van_01_fuel_F",500],
	["I_Heli_Transport_02_F",200000],
	["C_Van_01_box_F",27500],
	["I_Truck_02_transport_F",37500],
	["I_Truck_02_covered_F",50000],
	["B_Truck_01_transport_F",75000],
	["B_Truck_01_box_F",100000],
	["O_MRAP_02_F",150000],
	["B_Heli_Light_01_F",75000],
	["O_Heli_Light_02_unarmed_F",100000],
	["C_Rubberboat",3000],
	["C_Boat_Civil_01_F",7500],
	["B_Boat_Transport_01_F",2500],
	["C_Boat_Civil_01_police_F",7500],
	["B_Boat_Armed_01_minigun_F",50000],
	["B_SDV_01_F",500],
	["B_MRAP_01_F",30000],
    ["C_Kart_01_F",7500],
    ["C_Kart_01_Blu_F",7500],
    ["C_Kart_01_Fuel_F",7500],
    ["C_Kart_01_Red_F",7500],
    ["C_Kart_01_Vrana_F",7500],
    ["I_Truck_02_medical_F",30000],
    ["O_Truck_03_medical_F",40000],
    ["B_Truck_01_medical_F",50000],
    ["O_Truck_03_transport_F",100000],
    ["O_Truck_03_covered_F",125000],
    ["O_Truck_03_device_F",175000],
    ["B_Heli_Transport_01_F",200000]
];
__CONST__(life_garage_sell,life_garage_sell);