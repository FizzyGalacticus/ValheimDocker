#!/bin/bash

# update server's data
/home/steam/steamcmd/steamcmd.sh \
	    +login anonymous \
	        +force_install_dir /home/steam/valheim/server \
		    +app_update 896660 \
		        +exit
