#!/bin/bash
# compile_rb.sh vs files into .ibx.rb
# Differs from h.sh in that removes *.rb files and adds startup.vs
# Use run.sh to execute it
vishc -R  -r ./util.rb -r ./msg.rb -r ./compose.rb -o ibx.rb -l fnlib.vs -l main.vs -l msg.vs -l inbox.vs -l insert.vs -l send.vs -l compose.vs -l bload.vs startup.vs


