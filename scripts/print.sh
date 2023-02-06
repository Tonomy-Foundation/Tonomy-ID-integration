#!/bin/bash

function help {
    echo ""
    echo "Usage:"
    echo "    app.sh [commands]"
    echo ""
    echo "Commands:"
    echo "    gitinit        - initializes all git submodules and checks out master branch"
    echo "    install        - installs all application repositories"
    echo "    init           - starts application components through docker compose and initializes and resets the blockchain and database"
    echo "    start [all]    - starts application components through docker compose"
    echo "    stop           - stops application execution"
    echo "    reset [all]    - stops application execution and resets all data. Optionally specify 'all' to also reset all node_modules"
    echo "    log [service]  - prints logs for the service"
}

function loghelp {
    echo ""
    echo "Prints out last 10 lines of logs for the service"
    echo ""
    echo "Usage:"
    echo "    app.sh log [commands]"
    echo ""
    echo "Commands:"
    echo "    antelope - blockchain node (antelope)"
    echo "    sdk      - Tonomy ID SDK (tsdx)"
    echo "    id       - Tonomy ID app expo packaer (react native)"
    echo "    sso      - Tonomy ID SSO app (react)"
    echo "    market   - Tonomy ID Demo market app (react)"
}

function printservices {
    echo "##################################################"
    echo ""
    echo ""
    echo ""
    echo "Services now running:"
    echo ""
    echo "Tonomy ID expo package (react native) - http://localhost:8081"
    echo "Tonomy ID app debugger                - http://localhost:8081/debugger-ui/"
    echo "Blockchain node (eosio)               - http://localhost:8888/v1/chain/get_info"
    echo "Blockchain explorer                   - https://local.bloks.io/?nodeUrl=http%3A%2F%2Flocalhost%3A8888&coreSymbol=SYS&systemDomain=eosio"
    echo ""
    echo "Your IP = ${ip}"
    echo ""
    echo ""
}

function printWebsiteServices {
    echo "Tonomy ID Demo SSO Website (react)    - http://${ip}:3000 or http://localhost:3000"
    echo "Tonomy ID Demo market app (react)     - http://${ip}:3001 or http://localhost:3001"
    echo "" 
    echo ""
}