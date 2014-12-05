/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","bottles","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","storagesmall","storagebig","craftingmat"]]};
    case "medmarket": {["Medic Market",["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","scalpel","zipties","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","scalpel","zipties","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Taylor's Food Cart",["turtlesoup","turtle","froglegs"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","kidney","crystalmeth","froglsd"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
    case "bar": {["The Lounge",["bottledbeer","bottledwhiskey"]]};
	case "bootlegger": {["Bootlegger's",["bottledwhiskey","bottledshine","bottledbeer","moonshine","bottles","cornmeal"]]};
    case "pmetal": {["Metal Dealers",["goldr","platinumm"]]};
    case "bountyhunter": {["Bounty Hunter Shop",["water","rabbit","apple","redgull","zipties","tbacon","fuelF","peach"]]};
};