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
	case "market": {["Simply Altis Market",["apple","craftingmat","bottles","rabbit","fuelF","lockpick","peach","pickaxe","redgull","storagesmall","storagebig","tbacon","water"]]};
    case "medmarket": {["SAS Market",["apple","rabbit","fuelF","lockpick","lollipop","peach","redgull","tbacon","water"]]};
	case "rebel": {["Rebel Market",["apple","blastingcharge","boltcutter","rabbit","fuelF","lockpick","peach","redgull","scalpel","tbacon","water","zipties"]]};
	case "gang": {["Gang Market",["apple","blastingcharge","boltcutter","rabbit","fuelF","lockpick","peach","redgull","scalpel","tbacon","water","zipties"]]};
	case "wongs": {["Taylor's Food Cart",["froglegs","turtle","turtlesoup"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","kidney","crystalmeth","froglsd"]]};
	case "oil": {["Oil Trader",["oilp","fuelF","pickaxe"]]};
	case "fishmarket": {["Simply Altis FishMarket",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["SAPD Item Shop",["apple","coffee","defusekit","donuts","rabbit","fuelF","arrowleft","roadbarrier","roadcone","redgull","arrowright","spikeStrip","tapesign","water"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
    case "bar": {["The Lounge",["bottledbeer","bottledwhiskey"]]};
	case "bootlegger": {["Bootlegger's",["bottles","bottledbeer","bottledshine","bottledwhiskey","cornmeal","moonshine"]]};
    case "pmetal": {["Metal Dealers",["goldr","platinumm"]]};
    case "bountyhunter": {["Bounty Hunter Shop",["apple","rabbit","fuelF","lockpick","peach","redgull","tbacon","water","zipties"]]};
    
    case "italian": {["Ristorante Italiano",["breadsticks","fettuccine","gsalad","neopizza","ofanta","spaghetti","sparkwater","water"]]};
    case "mexican": {["Nacho Crotcho",["hotchoc","burrito","chipsalsa","enchillada","mexrice","nachos","canecola","taco","water"]]};
    case "chinese": {["Fu King Chinese",["dumplings","eggroll","greentea","lomein","springroll","sushi","vegrice","veghakka","water"]]};
    case "bargrill": {["Simply Altis Bar & Grill",["applepie","bottledbeer","curlyfries","icecream","pepsi","unsweettea","vegburger","water"]]};
};