class CfgPatches
{
	class ghostb_ghostb_rankrole
	{
		name = "$STR_ghostb_rankrole_Title";
		requiredAddons[] = {
			"ace_medical_engine"
		};
		units[] = {};
		weapons[] = {};
		author = "$STR_ghostb_rankrole_Author";
		authors[] = {
			"YonV"
		};
		url = "$STR_ghostb_rankrole_URL";
	};
};

class CfgFunctions {
	class ghostb_rankrole {

		tag = "ghostb_rankrole";
		class RankRole {

			file = "ghostb_rankrole\Functions";
			class rankrole {postInit = 1;};
		};
	};
	class ghostb_drongo {

		tag = "ghostb_drongo";
		class RankRole {

			file = "ghostb_rankrole\Functions";
			class drongo {postInit = 1;};
		};
	};
};

class Extended_PreInit_EventHandlers {
	ghostbrankrole = "call compile preprocessFileLineNumbers '\ghostb_rankrole\XEH_preInit.sqf'";
};
class Extended_PostInit_EventHandlers {
	ghostbrankrole = "call ghostb_rankrole_fnc_rankrole";	
};
