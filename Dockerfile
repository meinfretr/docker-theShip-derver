FROM ubuntu:latest

MAINTAINER meinfretr

RUN apt-get update
RUN apt-get install -y \
    lib32gcc1 \
    curl
RUN mkdir /steamcmd
RUN mkdir /theShip
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar -v -C /steamcmd -zx

COPY startServer.sh /startServer.sh
RUN chmod +x /startServer.sh

EXPOSE 27015

# Steam Credentials
# If preferred, leave blank to enter manually when you start the container
ENV STEAM_USERNAME=""
ENV STEAM_PASSWORD=""

# General server configuration settings
ENV MAX_PLAYERS="10"
ENV SERVER_HOSTNAME=""
ENV SERVER_PASSWORD=""

# Game modes are as follows:
# 0 - Hunt, 1 - Elimination  2 - Duel, 3 - Deathmatch, 4 - Team VIP
# 5 - Team Elimination, 6 - World Leader Hunt, 7 - WL Elim, 8 - WL DM
ENV GAME_MODE="0"

# Game Maps are:
# batavier, atalanta, rubicon, huronian, andrea_doria, cyclops, cotopaxi,
# connemara, cotopaxi_sp, tutorial, mrx_intro_map, singleplayerendtest
# batavier_christmas, raifucu_maru, krassin, batavier
ENV GAME_MAP="atalanta"

ENTRYPOINT ["./startServer.sh"]
