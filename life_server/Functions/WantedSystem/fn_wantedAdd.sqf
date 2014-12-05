/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Vehicular Manslaughter",5000]};
	case "187": {_type = ["Manslaughter",25000]};
	case "901": {_type = ["Escaping Jail",4000]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Attempted Auto Theft",2000]};
	case "213": {_type = ["Use of illegal explosives",10000]};
	case "211": {_type = ["Robbery",5000]};
    case "212": {_type = ["Attempted Robbery",5000]};
	case "207": {_type = ["Kidnapping",7500]};
	case "207A": {_type = ["Attempted Kidnapping",3000]};
	case "487": {_type = ["Grand Theft",7500]};
	case "488": {_type = ["Petty Theft",1000]};
	case "480": {_type = ["Hit and run",2500]};
	case "481": {_type = ["Drug Possession",5000]};
	case "482": {_type = ["Intent to distribute",10000]};
	case "483": {_type = ["Drug Trafficking",15000]};
	case "459": {_type = ["Burglary",5500]};
    case "919": {_type = ["Organ Dealing",20000]};
    case "390": {_type = ["Public Intoxication",7500]};
    
    case "1": {_type = ["Aiding escape from custody",5000]};
    case "2": {_type = ["Attempted Bank Robbery",20000]};
    case "3": {_type = ["Attempted Manslaughter",10000]};
    case "4": {_type = ["Aviation altitude violation",2000]};
    case "5": {_type = ["Discharge within City",1500]};
    case "6": {_type = ["Disobeying an Order from an Officer",5000]};
    case "7": {_type = ["Driving an illegal Vehicle",7500]};
    case "8": {_type = ["Driving without license",1000]};
    case "8B": {_type = ["Entering an Illegal Area",5000]};
    case "9": {_type = ["Evading Arrest",5000]};
    case "10": {_type = ["Escaping Prison",4000]};
    case "11": {_type = ["Failure to Headlight",500]};
    case "12": {_type = ["Failure to Stop",4000]};
    case "13": {_type = ["Grand Theft",7500]};
    case "14": {_type = ["Harassment",1000]};
    case "15": {_type = ["Illegally crossing the Border",5000]};
    case "16": {_type = ["Kidnapping",7500]};
    case "17": {_type = ["Petty Theft",1000]};
    case "18": {_type = ["Police Checkpoint Evasion",2500]};
    case "19": {_type = ["Possession of Cocaine",7500]};
    case "20": {_type = ["Possession of Heroin",7500]};
    case "21": {_type = ["Possession of Illegal Firearm",6000]};
    case "22": {_type = ["Possession of LSD",7000]};
    case "23": {_type = ["Possession of Kidney(s)",8000]};
    case "24": {_type = ["Possession of Marijuana",5000]};
    case "25": {_type = ["Possession of Moonshine",5000]};
    case "26": {_type = ["Possession of Meth",7500]};
    case "27": {_type = ["Possession of Police Equipment",6500]};
    case "28": {_type = ["Possession of Reserve Gold",10000]};
    case "29": {_type = ["Possession of Scalpel",7500]};
    case "30": {_type = ["Possession of Turtle Meat",7000]};
    case "31": {_type = ["Reckless Driving",3000]};
    case "32": {_type = ["Robbery",5000]};
    case "33": {_type = ["Speeding",2500]};
    case "34": {_type = ["Terrorism",5500]};
    case "35": {_type = ["Trespassing",1000]};
    case "36": {_type = ["Threatening an Officer",1500]};
    case "37": {_type = ["Trafficking Weaons (3+)",7500]};
    
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
    [[_name,_uid,_crimes,(_type select 1) + _val],_uid] spawn life_fnc_saveBounties;
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
    [[_name,_uid,[(_type select 0)],(_type select 1)],_uid] spawn life_fnc_saveBounties;
};