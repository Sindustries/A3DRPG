class RPG_startup
{
	idd = 1222;
	fadeout=1;
	fadein=3;
	duration = 1e+1000;
	movingenable = false;

class controls
{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Sinbane, v1.063, #Baqanu)
////////////////////////////////////////////////////////

class RPG_mainBG: IGUIBack
{
	idc = 2200;
	x = 0.438127 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.134062 * safezoneW;
	h = 0.297 * safezoneH;
};
class RPG_mainFrm1: RscFrame
{
	idc = 1800;
	x = 0.438125 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.134062 * safezoneW;
	h = 0.297 * safezoneH;
};
class RPG_mainClothingFrame: RscFrame
{
	idc = 1801;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.324 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.209 * safezoneH;
};
class RPG_mainOverviewText: RscText
{
	idc = 12228;
	text = "TEST. BAWBAG. "; //--- ToDo: Localize;
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.187 * safezoneH;
};
class RPG_mainSpawnSelect: RscCombo
{
	idc = 12224;
	text = "TESTING"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainBtn1: RscButton
{
	idc = 12220;
	text = "CONFIRM"; //--- ToDo: Localize;
	x = 0.453594 * safezoneW + safezoneX;
	y = 0.544 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



};
};
