/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
        
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
        
        // take them organs
		life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
	
        life_actions = life_actions + [player addAction["Activate Suicide Jacket",life_fnc_suicideBomb,"",0,false,false,"",
        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !life_isSuicide && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
    };
    
    case west: 
    {
        //CopEnter - Driver Seat
		life_actions = life_actions + [player addAction["Driver Seat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Copilot Seat
		life_actions = life_actions + [player addAction["Copilot Seat",life_fnc_copEnter,"copilot",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
        //CopEnter - Passenger Seat
		life_actions = life_actions + [player addAction["Passenger Seat",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//CopEnter - Gunner1 Seat
		life_actions = life_actions + [player addAction["Gunner 1 Seat",life_fnc_copEnter,"gunner1",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
        //CopEnter - Gunner2 Seat
		life_actions = life_actions + [player addAction["Gunner 2 Seat",life_fnc_copEnter,"gunner2",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']]; 
		//CopEnter - Exit
		life_actions = life_actions + [player addAction["Exit Vehicle",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
        
        //Seize PlayerWeapons
        life_actions = life_actions + [player addAction["Seize Weapons",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 3.5 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
    };
    
    case independent:
	{
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Perform Kidney Surgery</t>",life_fnc_kidneySurgery,"",1,false,true,"",' playerSide == independent && !isNull cursorTarget && cursorTarget isKindOf "Man" && (player distance cursorTarget) < 3.5 && speed cursorTarget < 2 && (cursorTarget getVariable ["missingOrgan",TRUE])']];
	};
};