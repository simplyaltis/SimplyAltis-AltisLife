/*
	@author Mario2002 
	edited by Timothy "TimmaE" Hladky
*/

if(playerSide == west) then {
	switch(true) do {
		case (uniform player == "U_Rangemaster") : {
            if( (call life_coplevel) > 0) then
            {
                player setObjectTextureGlobal [0,"textures\clothing\grunt.jpg"];
            };
            
            if( (call life_coplevel) > 1) then
            {
                player setObjectTextureGlobal [0,"textures\clothing\uniform.jpg"];
            };
		};
		case (uniform player == "U_B_CombatUniform_mcam") : {
			player setObjectTextureGlobal [0,"textures\clothing\constableuniform.jpg"];
		};
		case (uniform player == "U_B_CombatUniform_mcam_worn") : {
			player setObjectTextureGlobal [0,"textures\clothing\aosuniform.jpg"];
		};	
		case (uniform player == "U_B_SpecopsUniform_sgg") : {
			player setObjectTextureGlobal [0,"textures\clothing\commisioneruniform.jpg"];
		};	
	};
	switch (true) do {
		case (backpack player == "B_Kitbag_cbr") : {
		(backpackContainer player) setObjectTextureGlobal [0, "textures\clothing\copbackpack.jpg"];
		};
		case (backpack player == "B_Kitbag_sgg") : {
		(backpackContainer player) setObjectTextureGlobal [0, "textures\clothing\aosbackpack.jpg"];
		};
	};
};

if(playerSide == independent) then {
	switch(true) do {
		case (uniform player == "U_C_WorkerCoveralls") : {
			player setObjectTextureGlobal [0,"textures\clothing\medic_uniform.jpg"];
		};	
		case(backpack player == "B_Carryall_khk") : {
		(backpackContainer player) setObjectTextureGlobal [0, "textures\clothing\medic_backpack.jpg"];
		};
	};
};

if(playerSide == civilian) then {
	switch(true) do {
		case (uniform player == "U_C_Poloshirt_burgundy") : {
			player setObjectTextureGlobal  [0, "textures\clothing\power.jpg"]; 
		};

		case (uniform player == "U_C_Poloshirt_blue") : {
			player setObjectTextureGlobal  [0, "textures\clothing\mob.jpg"];
		};

		case (uniform player == "U_C_Poloshirt_redwhite") : {
			player setObjectTextureGlobal  [0, "textures\clothing\head.jpg"];
		};

		case (uniform player == "U_C_Poloshirt_salmon") : {
			player setObjectTextureGlobal  [0, "textures\clothing\kiwi.jpg"];
		};

		case (uniform player == "U_C_Poloshirt_stripped") : {
			player setObjectTextureGlobal  [0, "textures\clothing\maori.jpg"];
		};

		case (uniform player == "U_C_Poloshirt_tricolour") : {
			player setObjectTextureGlobal  [0, "textures\clothing\allblacks.jpg"];
		};
        
		case (uniform player == "U_Competitor") : {
			player setObjectTextureGlobal  [0, "textures\clothing\rebel_mob.jpg"];
		};
        
        case (uniform player == "U_C_WorkerCoveralls") : {
			player setObjectTextureGlobal  [0, "textures\clothing\jail.jpg"]; 
		};
        
        case (uniform player == "U_B_CombatUniform_mcam_worn") : {
			player setObjectTextureGlobal [0,"textures\clothing\bountyhunteruniform.jpg"];
		};	
	};
};