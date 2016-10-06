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
// GUI EDITOR OUTPUT START (by Sinbane, v1.063, #Husohu)
////////////////////////////////////////////////////////

class RPG_mainBG: IGUIBack
{
	idc = 2200;
	x = 0.231875 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.53625 * safezoneW;
	h = 0.429 * safezoneH;
};
class RPG_mainFrm1: RscFrame
{
	idc = 1801;
	x = 0.231875 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.53625 * safezoneW;
	h = 0.429 * safezoneH;
};
class RPG_mainFrm2: RscFrame
{
	idc = 1800;
	x = 0.242187 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainBtn1: RscButton
{
	idc = 88881;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.247344 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainStrText1: RscStructuredText
{
	idc = 888811;
	x = 0.247344 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainFrm3: RscFrame
{
	idc = 1802;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainFrm4: RscFrame
{
	idc = 1803;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainFrm5: RscFrame
{
	idc = 1804;
	x = 0.644375 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainStrText2: RscStructuredText
{
	idc = 888822;
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainStrText3: RscStructuredText
{
	idc = 888833;
	x = 0.515469 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainStrText4: RscStructuredText
{
	idc = 888844;
	x = 0.649531 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainBtn2: RscButton
{
	idc = 88882;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainBtn3: RscButton
{
	idc = 88883;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.515469 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainBtn4: RscButton
{
	idc = 88884;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.649531 * safezoneW + safezoneX;
	y = 0.401 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainFrm6: RscFrame
{
	idc = 1805;
	x = 0.242187 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainBtn5: RscButton
{
	idc = 88885;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.247344 * safezoneW + safezoneX;
	y = 0.61 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainFrm7: RscFrame
{
	idc = 1806;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainFrm8: RscFrame
{
	idc = 1807;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.445 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainFrm9: RscFrame
{
	idc = 1808;
	x = 0.644271 * safezoneW + safezoneX;
	y = 0.44537 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.198 * safezoneH;
};
class RPG_mainBtn6: RscButton
{
	idc = 88886;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.61 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainBtn7: RscButton
{
	idc = 88887;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.515469 * safezoneW + safezoneX;
	y = 0.61 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainBtn8: RscButton
{
	idc = 88888;
	text = "SELECT"; //--- ToDo: Localize;
	x = 0.649531 * safezoneW + safezoneX;
	y = 0.61 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_mainStrText5: RscStructuredText
{
	idc = 888855;
	x = 0.247344 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainStrText6: RscStructuredText
{
	idc = 888866;
	x = 0.381406 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainStrText7: RscStructuredText
{
	idc = 888877;
	x = 0.515469 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
class RPG_mainStrText8: RscStructuredText
{
	idc = 888888;
	x = 0.649531 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.143 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};
};
