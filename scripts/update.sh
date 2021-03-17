#!/bin/bash

echo "Checking for updates..."

# update server's data
/home/steam/steamcmd/steamcmd.sh \
	    +login anonymous \
	        +force_install_dir /home/steam/valheim/server \
		    +app_update 896660 \
		        +exit

# patch network limit
python3 /home/steam/scripts/fix-network-limit.py
