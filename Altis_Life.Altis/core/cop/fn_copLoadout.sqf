#include <macro.h>
/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.


switch(true) do
{
    case (__GETC__(life_coplevel) == 1) : {player addUniform "U_Rangemaster";};
    case (__GETC__(life_coplevel) == 2) : {player addUniform "U_Rangemaster";};
    case (__GETC__(life_coplevel) == 3) : {player addUniform "U_Rangemaster";};
    case (__GETC__(life_coplevel) == 4) : {player addUniform "U_B_CombatUniform_mcam";};
    case (__GETC__(life_coplevel) == 5) : {player addUniform "U_B_CombatUniform_mcam";};
    case (__GETC__(life_coplevel) == 6) : {player addUniform "U_B_CombatUniform_mcam_worn";};
    case (__GETC__(life_coplevel) == 7) : {player addUniform "U_B_SpecopsUniform_sgg";};
};

[] call life_fnc_updateClothing;

player addWeapon "hgun_P07_snds_F";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;