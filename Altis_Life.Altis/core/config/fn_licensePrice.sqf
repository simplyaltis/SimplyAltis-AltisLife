/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {2500}; //Drivers License cost
	case "boat": {2500}; //Boating license cost
	case "pilot": {45000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {15000}; //Oil processing license cost
	case "cair": {20000}; //Cop Pilot License cost
	case "swat": {400000}; //Swat License cost
	case "cg": {10000}; //Coast guard license cost
	case "heroin": {50000}; //Heroin processing license cost
	case "marijuana": {30000}; //Marijuana processing license cost
	case "medmarijuana": {7500}; //Medical Marijuana processing license cost
	case "gang": {25000}; //Gang license cost
	case "rebel": {200000}; //Rebel license cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {15000};
	case "cocaine": {50000};
	case "sand": {20000};
	case "iron": {15000};
	case "copper": {10000};
	case "cement": {10000};
	case "mair": {20000};
	case "home": {125000};
    case "stiller":{30000};
    case "liquor":{25000};
    case "bottler":{25000};
    case "mash":{15000};
    case "crystalmeth":{50000};
    case "froglegs":{20000};
    case "froglsd":{35000};
    case "gold":{40000};
    case "platinum":{40000};
    case "lawyer":{25000};
    case "bountyhunter":{450000};
    case "passport":{50000};
};