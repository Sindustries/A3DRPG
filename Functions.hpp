class RPG_Core {
	tag = "RPG";
	class core {
		file = "core\core";
		class checkDist {};
		class emptyVeh {};
		class findPos {};
		class getSetting {};
		class getSettings {};
		class getVehicles {};
	};
	
	class functions {
		file = "core\functions";
		class bank {};
		class bankDeposit {};
		class bankMessage {};
		class bankWithdraw {};
		class keyHandler {};		
	};
	
	class startup {
		file = "core\startup";
		class addActions {};
		class loadOptions {};
		class loadPlayerSpawn {};
		class locationDisplay {};
		class startupMenu {};
	}
	
	class prologue {
		file = "core\prologue";
		class prologueBegin {};
	};
}
	


