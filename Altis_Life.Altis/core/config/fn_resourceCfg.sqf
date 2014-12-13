
//need to store
// _resource : the name of the resource as input
// _zoneSize : the diameter of the resource zone in meters
// _batchSize : how many items should be gathererd in one go
// _requiredItem : is an item required to grather this resource?
private["_resource","_zoneSize", "_batchSize", "_requiredItem","_resourceZones"];
_resource = [_this,0,"",[""]] call BIS_fnc_param;

//default values
_zoneSize = 30;
_batchSize = 1;
_requiredItem = "";
_resourceZones = [];

//if you want to overwrite a value for one of the resource just add a case for it here
switch(_resource) do {

	case ("apple") : {
		_batchSize = 3;
		_resourceZones = ["apple_1","apple_2","apple_3","apple_4"];
	};
	
	case ("peach") : {
		_batchSize = 3;
		_resourceZones = ["peaches_1","peaches_2","peaches_3"];
	};
	
	case  ("heroinu") : {
		_batchSize = 1 + (round random 2);
		_resourceZones = ["heroin_1"];
	};
	
	case  ("cocaine") : {
		_batchSize = 1 + (round random 2);
		_resourceZones = ["cocaine_1"];
	};
	
	case  ("cannabis") : {
		_batchSize = 1 + (round random 2);
		_resourceZones = ["weed_1","weed_2","weed_3"];
	};
	
	case  ("phosphorous") : {
		_batchSize = 1 + (round random 3);
		_resourceZones = ["phosphorous_1"];
	};
	
	case  ("ephedra") : {
		_batchSize = 1 + (round random 2);
		_resourceZones = ["ephedra_1"];
	};
	
	case  ("frog") : {
		_batchSize = 1 + (round random 2);
		_resourceZones = ["frog_swamp1"];
	};
	
	case  ("hops") : {
		_batchSize = 1 + (round random 3);
		_resourceZones = ["hops_1"];
	};
	
	case  ("rye") : {
		_batchSize = 1 + (round random 3);
		_resourceZones = ["rye_1"];
	};
	
	case  ("yeast") : {
		_batchSize = 1 + (round random 3);
		_resourceZones = ["yeast_1"];
	};
	
	case ("copperore") : {
		_batchSize = 2;
		_requiredItem = "pickaxe";
		_resourceZones = ["lead_1"];
	};
	
	case ("ironore") : {
		_batchSize = 2;
		_requiredItem = "pickaxe";
		_resourceZones = ["iron_1"];
	};
	
	case ("sand") : {
		_batchSize = 5;
		_requiredItem = "pickaxe";
		_resourceZones = ["iron_1"];
		_zoneSize = 75;
	};
	
	case ("salt") : {
		_batchSize = 4;
		_requiredItem = "pickaxe";
		_resourceZones = ["salt_1"];	
		_zoneSize = 120;
	};
	
	case ("platinum") : {
		_batchSize = 1;
		_requiredItem = "pickaxe";
		_resourceZones = ["platinum_1"];
		_zoneSize = 50;
	};
	
	case ("diamond") : {
		_requiredItem = "pickaxe";	
		_resourceZones = ["diamond_1"];
		_zoneSize = 50;
	};
	
	case ("oilu") : {
		_requiredItem = "pickaxe"; //could be changed to a drill or something?
		_resourceZones = ["oil_1","oil_2"];
		_zoneSize = 40;
	};
	
	case ("rock") : {
		_batchSize = 2;
		_requiredItem = "pickaxe";
		_resourceZones = ["rock_1"];
		_zoneSize = 50;
	};
	
	case ("gold") : {
		_requiredItem = "pickaxe";
		_resourceZones = ["gold_1"];
		_zoneSize = 50;
	};
};

[_resourceZones, _zoneSize, _batchSize, _requiredItem];