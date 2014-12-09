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
				* Picking Apples<br/>
				* Picking Peaches<br/>
				* Delivery Missions<br/>
				* Catching fish<br/>
				* Mining Copper (L)<br/>
				* Mining Iron (L)<br/>
				* Mixing Cement (L)<br/>
				* Glass Production (L)<br/>
				* Processing Salt (L)<br/>
				* Refining Oil (L)<br/>
				* Brewing Beer (L)<br/>
				* Aging Whiskey (L)<br/>
				* Smelting Gold (L)<br/>
				* Mining Platinum (L)<br/>
				* Cutting Diamonds (L)<br/>
				* Catching wanted criminals (L) (G)<br/>
				* Tipping the SAPD<br/>
				* Cooking frog legs<br/>
				* Crafting guns<br/>
				* Join the SAPD (W)<br/>
				* Signup for the SAS (W)<br/>
				* Donate to the Server<br/>
				* Become a Lawyer (L)<br/>
				* Bodyguarding<br/>
				* Begging<br/><br/>
				
				"
		]
	];
    
    player createDiaryRecord["whattodo",
		[
			"Make Money (Illegal)",
				"
				* Weed harvesting (L)<br/>
				* Extracting LSD (L)<br/>
				* Picking Cocaine (L)<br/>
				* Picking Heroin (L)<br/>
				* Crystalizing Meth (L)<br/>
				* Brewing Moonshine (L)<br/>
				* Robbing civilians<br/>
				* Federal Reserve Heist<br/>
				* Holding up a Gas Station (G)<br/>
				* Organ theft (G)<br/>
				* Kidnapping and Ransoming<br/>
				* Chopshopping Any Vehicles<br/>
				* Capturing turtles (G)<br/>
				* Selling Weapons (G)<br/><br/>
				
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