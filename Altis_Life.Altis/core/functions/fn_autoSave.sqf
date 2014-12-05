/*
	@Author: =IFD= Cryptonat
	@Created: 2/22/14
	
	Description:
	Saves the player's gear every 10 minutes.
*/
if(isNil "life_session_time") then {life_session_time = false;};

while {true} do {    //Tells the function to continually loop.
	sleep 600 + floor(random 60);   //Sleep for 600 seconds/10 minutes plus up to a minute extra.
	if ((alive player) && (!life_session_time)) then   //If the player is alive and we've not saved for at least 5 mins, then do this
	{
		[] call SOCK_fnc_updateRequest;
		hint "Auto-Save Complete! (Next save in 10 mins).";
	}
	else
	{ 
		if (life_session_time) then {
			//we saved (manually) within the last 5 minutes. Sleep for another 5 mins. Also helps to stop the syncs being continually blocked by another player, if they are..
			sleep 300 + floor(random 60);
		};
	};
};