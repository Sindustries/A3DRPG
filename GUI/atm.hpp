class RPG_atm
{
	idd = 1444;
	fadeout=1;
	fadein=3;
	duration = 1e+1000;
	movingenable = false;
	
class controls
{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Sinbane, v1.063, #Mecaty)
////////////////////////////////////////////////////////

class RPG_atmBG: IGUIBack
{
	idc = 14441;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.308 * safezoneH;
};
class RPG_atmMainFRM: RscFrame
{
	idc = 14442;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.12375 * safezoneW;
	h = 0.308 * safezoneH;
};
class RPG_atmStrcText01: RscStructuredText
{
	idc = 144411;
	x = 0.355625 * safezoneW + safezoneX;
	y = 0.324 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.176 * safezoneH;
};
class RPG_atmWithdrawBTN: RscButton
{
	idc = 144412;
	text = "WITHDRAW"; //--- ToDo: Localize;
	onButtonClick = "[] call RPG_fnc_bankWithdraw";
	x = 0.360781 * safezoneW + safezoneX;
	y = 0.555 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_atmDepositBTN: RscButton
{
	idc = 144413;
	text = "DEPOSIT"; //--- ToDo: Localize;
	onButtonClick = "[] call RPG_fnc_bankDeposit";
	x = 0.360781 * safezoneW + safezoneX;
	y = 0.588 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.022 * safezoneH;
};
class RPG_atmInputBOX: RscEdit
{
	idc = 144414;
	text = "4591345"; //--- ToDo: Localize;
	x = 0.360781 * safezoneW + safezoneX;
	y = 0.511 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.033 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////


};
};
