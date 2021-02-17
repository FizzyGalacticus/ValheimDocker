FROM cm2network/steamcmd:latest

RUN mkdir -p /home/steam/valheim/{server,data}

WORKDIR /home/steam

COPY update.sh .
COPY server.sh .

RUN sh update.sh

ENTRYPOINT [ "sh", "server.sh" ]

EXPOSE 2456-2458/udp
