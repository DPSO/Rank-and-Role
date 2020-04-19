
if (hasInterface) then {
	
    _playerUID = getPlayerUID player;

    switch (true) do {
        case (_playerUID in Ranks_CORPORAL)   : { player setRank "CORPORAL"; };
        case (_playerUID in Ranks_SERGEANT)   : { player setRank "SERGEANT"; };
        case (_playerUID in Ranks_LIEUTENANT) : { player setRank "LIEUTENANT"; };
        case (_playerUID in Ranks_CAPTAIN)    : { player setRank "CAPTAIN"; };
        case (_playerUID in Ranks_MAJOR)      : { player setRank "MAJOR"; };
        case (_playerUID in Ranks_COLONEL)    : { player setRank "COLONEL"; };

        default { player setRank "PRIVATE"; };
    };
    switch (true) do {
        case (_playerUID in ACE_MED)    : { player setVariable ["ace_medical_medicclass",1, true]; };
    };
    switch (true) do {
        case (_playerUID in ACE_DR)    : { player setVariable ["ace_medical_medicclass",2, true]; };
    };
    switch (true) do {
        case (_playerUID in ACE_EOD)    : { player setVariable ["ACE_isEOD",1, true]; };
    };
    switch (true) do {
        case (_playerUID in ACE_ENG)    : { player setVariable ["ace_isEngineer",1, true]; };
    };
    switch (true) do {
        case (_playerUID in ACE_AENG)    : { player setVariable ["ace_isEngineer",2, true]; };
    };
    switch (true) do {
        case (_playerUID in USE_SSS)    : { player setVariable ["canUseSSS",true,true]; };
    };

};

