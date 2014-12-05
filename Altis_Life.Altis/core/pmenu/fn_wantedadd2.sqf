//fn_wantedadd2.sqf

private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 9900)};
_display = findDisplay 9900;
_list = _display displayCtrl 9902;

//Purge List
lbClear _list;


{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _list lbAdd format["%1 - %2", name _x,_side];
    _list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;


_list2 = _display displayCtrl 9991;
lbClear _list2;


//_index = lbAdd [_list2, "Name"];
//lbSetData [_list2, _index, "pfad/zum/bild.paa"];
//lbSetValue [_list2, _index, "pfad/zum/bild.paa"];

_text = "Aiding escape from custody";
_data = "1";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Auto Theft";
_data = "215";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Bank Robbery";
_data = "2";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Manslaughter";
_data = "3";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Aviation altitude violation";
_data = "4";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Discharge within City";
_data = "5";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Disobeying an Order from an Officer";
_data = "6";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Driving an illegal Vehicle";
_data = "7";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Driving without license";
_data = "8";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Entering an Illegal Area";
_data = "8B";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Evading Arrest";
_data = "9";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Escaping Prison";
_data = "10";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Failure to Headlight";
_data = "11";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Failure to Stop";
_data = "12";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Grand Theft";
_data = "13";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Harassment";
_data = "14";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Illegally crossing the Border";
_data = "15";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Kidnapping";
_data = "16";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Petty Theft";
_data = "17";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Police Checkpoint Evasion";
_data = "18";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Cocaine";
_data = "19";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Heroin";
_data = "20";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Illegal Firearm";
_data = "21";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of LSD";
_data = "22";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Kidney(s)";
_data = "23";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Marijuana";
_data = "24";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Moonshine";
_data = "25";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Meth";
_data = "26";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Police Equipment";
_data = "27";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Reserve Gold";
_data = "28";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Scalpel";
_data = "29";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Possession of Turtle Meat";
_data = "30";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Reckless Driving";
_data = "31";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Robbery";
_data = "32";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Speeding";
_data = "33";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Terrorism";
_data = "34";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Trespassing";
_data = "35";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Threatening an Officer";
_data = "36";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Trafficking Weaons (3+)";
_data = "37";
_list2 lbAdd format["%1",_text];
_list2 lbSetData [(lbSize _list2)-1,_data];