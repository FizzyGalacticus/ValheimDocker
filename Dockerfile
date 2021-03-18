FROM cm2network/steamcmd:latest

ARG HOME=/home/steam

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests python3 && \
	apt-get clean autoclean && \
	apt-get autoremove -y && \
	rm -rf /var/lib/apt/lists/*

USER steam

RUN mkdir -p ${HOME}/valheim/{server,data}
RUN mkdir -p ${HOME}/scripts

WORKDIR ${HOME}

COPY scripts/ ${HOME}/scripts

RUN sh scripts/update.sh

ENTRYPOINT [ "sh", "scripts/server.sh" ]

EXPOSE 2456-2458/udp
