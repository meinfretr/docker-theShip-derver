#!/bin/bash

if [$STEAM_USERNAME == ""]
then
    read -p "Steam Username: " STEAM_USERNAME
    read -s -p "Steam Password: " STEAM_PASSWORD
fi

/steamcmd/steamcmd.sh +@sSteamCmdForcePlatformType linux +@ShutdownOnFailedCommand 1 +login $STEAM_USERNAME $STEAM_PASSWORD +force_install_dir /theShip +app_update 2403 +quit

cd theShip
mv ship/GameInfo.txt ship/gameinfo.txt

./srcds_run -game ship -maxplayers $MAX_PLAYERS +map $GAME_MAP +hostname "$SERVER_HOSTNAME" +rcon_password $SERVER_PASSWORD +ship_game_mode $GAME_MODE +mapcyclefile mapcycle.txt -autoupdate
