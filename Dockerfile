FROM cm2network/steamcmd:latest

ARG HOME=/home/steam

RUN mkdir -p ${HOME}/valheim/{server,data}
RUN mkdir -p ${HOME}/scripts

WORKDIR ${HOME}

COPY scripts/ ${HOME}/scripts

RUN sh scripts/update.sh

ENTRYPOINT [ "sh", "scripts/server.sh" ]

EXPOSE 2456-2458/udp
