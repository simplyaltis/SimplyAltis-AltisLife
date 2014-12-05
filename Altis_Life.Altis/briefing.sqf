waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["simplyaltis","Information"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["whattodo","Things you can do"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

	player createDiaryRecord["simplyaltis",
		[
			"SimplyAltis Information",
				"
				Website: www.SimplyAltis.com<br/>
				Teamspeak: ts.simplyaltis.com:7291<br/>
				Server IP: altis.simplyaltis.com:2032<br/>
				
				There is only rule and that is to follow all the rules!<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["simplyaltis",
		[
			"Donations",
				"
				Go to www.SimplyAltis.com to donate and receive your rewards for supporting the server!<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["simplyaltis",
		[
			"Applications",
				"
				If you want to apply to be a SAPD member or a SAS member. Go to www.SimplyAltis.com to fill out the application and we will get back to you.<br/>
				Being on teamspeak greatly increases your chances on being accepted!<br/><br/>
				
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Read the rules", 
				"
				Go to www.simplyaltis.com to read all our rules.<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"Make Money (Legal)",
				"
				* Gather peaches and sell them at the market<br/>
				* Gather apples and sell them at the market<br/><br/>
				* Coming soon...<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"Make Money (Illegal)",
				"
				* Cocaine ($50K for processing license)<br/>
				* Heroine ($50K for procesing license)<br/>
				* Weed ($30K for processing license)<br/>
				* Crystal Meth (Equal Parts Ephedra and Phosphorous processes into unprocessed meth and then can be processed again into Blue Crystal Meth - $50K for processing license)<br/>
				* LSD (Pick up frogs at the frog swamp, take them to Frog LSD to process into LSD - $35K for processing license)<br/>
				* Stealing Kidneys (Knock the person out and scroll over their body to Harvest Organs - You need a scalpel ($12K) found at the rebel and gang markets)<br/>
				* Federal Reserve Robbery (You need boltcutters for the door and a blasting charge for the vault both of which can only be purchased at rebel and gang markets)<br/>
					- Once the vault is blasted open, grab the gold bars and put them in your vehicle - gold bars are too heavy for helicopters<br/>
				* Moonshine (Start by making mash with water(found at any market) and cornmeal (found at the bootlegger) then harvest yeast (found at the yeast swamp) then use the moonshine distillery to process them and bottle them for sale<br/>
				* Stealing Vehicles to chop shop them (Land and Air Vehicles)<br/>
				* Robbing people with a gun (Knock them out with SHIFT + G, and use the Rob person option)<br/>
				* Kidnapping persons to demand money from the SAPD<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"Fun stuff",
				"
				* Coming soon...<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"Brew Alcohol",
				"
				* Coming soon...<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"Crafting",
				"
				* Coming soon...<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"BountyHunter",
				"
				* Coming soon...<br/><br/>
				
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Keyboard Mappings",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop/Medic Siren<br/>
				Left Shift + F: Cop Yelp<br/>
				T: Vehicle Trunk<br/>
				Left Shift + R: Restrain/Ziptie (for Civs, player must be knocked out)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing/harvesting organ/ziptieing)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				Left Shift + H: Holster's your pistol<br/>
				Left Shift + V: Surrender<br/><br/>
				"
		]
	];