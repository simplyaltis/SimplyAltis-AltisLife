/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_curWep","_curMag"];
_unit = _this select 0;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;


//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
        _curMag = currentMagazine _source;
		if(_projectile in ["B_9x21_Ball","B_556x45_dual"] && _curWep in ["hgun_P07_snds_F","arifle_SDAR_F"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile == "B_556x45_dual") then {100} else {50};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = damage player;
			};
		};
        
        if(_projectile in ["B_9x21_Ball"] && _curWep in ["hgun_PDW2000_F"]) then {
            private["_isVehicle"];
			_damage = damage player;
            _isVehicle = if(vehicle player != player) then {true} else {false};
            
			if(uniform _source == "U_B_CombatUniform_mcam_worn" && player distance _source < 50 && !_isVehicle && side _source == civilian && playerSide == civilian) then { //Bounty hunter clothing and distance check.
				[[player],"life_fnc_bountyTaze",_source,false] spawn life_fnc_MP;
			};
		};
        
        // Paintball
        if(_curMag in ["30Rnd_556x45_Stanag_Tracer_Red"] && _projectile in ["B_556x45_Ball_Tracer_Red"] && _curWep in ["arifle_TRG21_MRCO_F"]) then {
            private["_isVehicle"];
            _isVehicle = if(vehicle player != player) then {true} else {false};
            _damage = damage player; 
            
            if(!_isVehicle) then {
                [_unit,_source] spawn life_fnc_airSoft;
            };
        };
	};
};

if(!isNull _source) then {
   _isVehicle = if(vehicle _source != _source) then {true} else {false};
   if (_isVehicle) then {
        _damage = damage player;
		[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
        //_unit = [_this,0,ObjNull,[Objnull]] call BIS_fnc_param;
		//_anim = [_this,1,"",[""]] call BIS_fnc_param;
		//if(isNull _unit) exitWith {};
		//_unit switchMove _anim;
   };
};

[] call life_fnc_hudUpdate;
_damage;