
if (hasInterface) then {
	waitUntil {not isNull player && player == player && time > 2};
    _playerUID = getPlayerUID player;

    switch (true) do {
        case (_playerUID in DRA_USE)   : { call {draAvailable=true;};  };
        default { call {draAvailable=false;}; };
    };
    switch (true) do {
        case (_playerUID in DAO_USE)   : { call {daoAvailable=true;};  };
        default { call {daoAvailable=false;}; };
    };
    switch (true) do {
        case (_playerUID in DAO_BOSS)   : { call {daoJTACmode=false;};  };
        default { call {daoJTACmode=true;}; };
    };

};

