waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Loading game server info...", _rscLayer];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Cops: %2 | Civs: %3 | Medics: %4 | CASH: %5 | BANK: %6 | GRIDREF: %7", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[life_dosh] call life_fnc_numberText,[life_rupees] call life_fnc_numberText,mapGridPosition player, _counter];
	};
};
