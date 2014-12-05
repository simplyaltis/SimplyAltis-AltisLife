enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];
life_versionInfo = "Altis Life RPG v3.1.4.8";

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\fn_statusBar.sqf";
[] execVM "nosidechat.sqf";
[] execVM "zlt_fastrope.sqf";

//Set forced UI color
profilenamespace setvariable ['GUI_BCG_RGB_R',0.0];
profilenamespace setvariable ['GUI_BCG_RGB_G',1.0];
profilenamespace setvariable ['GUI_BCG_RGB_B',0.0];
profilenamespace setvariable ['GUI_BCG_RGB_A',0.7];

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;