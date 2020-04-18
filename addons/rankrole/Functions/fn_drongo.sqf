if (hasInterface) then {
    waitUntil{!(isNil"draAvailable") && time > 5};
    _playerUID = getPlayerUID player;

    switch (true) do {
        case (_playerUID in DRA_USE)   : { call {draAvailable=true;};  };
        default { call {draAvailable=false;}; };
    };
    waitUntil{!(isNil"daoReady") && time > 5};
    waitUntil{daoReady};
    switch (true) do {
        case (_playerUID in DAO_USE)   : { call {daoJTACmode=true;};  };
        default { call {daoAvailable=false;}; };
    };
    switch (true) do {
        case (_playerUID in DAO_BOSS)   : { call {daoAvailable=true;daoJTACmode=false;};  };
    };
};

