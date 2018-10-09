#!/bin/bash
# h.sh - spin up Vish code to handle inbox.txt manipulation
ivs -r ./json_vs.rb -r ./msg.rb -r ./compose.rb fnlib.vs msg.vs main.vs inbox.vs compose.vs bload.vs

