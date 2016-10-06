class RPG_startup
{
	idd = 1222;
	fadeout=1;
	fadein=3;
	duration = 1e+1000;
	movingenable = false;
//  onLoad = "_this call FRAME_01_Load";

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Sinbane, v1.063, #Nepenu)
////////////////////////////////////////////////////////

class RPG_mainBG: IGUIBack
{
	idc = 2200;
	x = 0.396876 * safezoneW + safezoneX;
	y = 0.269 * safezoneH + safezoneY;
	w = 0.216563 * safezoneW;
	h = 0.308 * safezoneH;
};
class RPG_mainFrm1: RscFrame
{
	idc = 1800;
	x = 0.396875 * safezoneW + safezoneX;
	y = 0.269 * safezoneH + safezoneY;
	w = 0.216563 * safezoneW;
	h = 0.308 * safezoneH;
};
class RPG_mainClothingFrame: RscFrame
{
	idc = 1801;
	x = 0.536094 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.242 * safezoneH;
};
class RPG_mainClothingSelect: RscListbox
{
	idc = 12224;
	onLBSelChanged = "[] spawn RPG_fnc_startupMenuUpdate";
	x = 0.54125 * safezoneW + safezoneX;
	y = 0.302 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.209 * safezoneH;
};
class RPG_mainOKbtn: RscButtonMenuOK
{
	idc = 12220;
	text = "ACCEPT"; //--- ToDo: Localize;
	x = 0.536093 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.033 * safezoneH;
};
class RPG_mainClothingText: RscText
{
	idc = 1723;
	text = "SPAWN TYPE"; //--- ToDo: Localize;
	x = 0.546406 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainOverviewFrm: RscFrame
{
	idc = 1802;
	x = 0.402031 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.128906 * safezoneW;
	h = 0.286 * safezoneH;
};
class RPG_mainOverviewText: RscText
{
	idc = 12228;
	text = "TEST. BAWBAG. "; //--- ToDo: Localize;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.118594 * safezoneW;
	h = 0.264 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
