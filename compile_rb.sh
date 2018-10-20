#!/bin/bash
# compile_rb.sh vs files into .ibx.rb
# Differs from h.sh in that removes *.rb files and adds startup.vs
# Use run.sh to execute it
vishc -R  -r ./util.rb -r ./msg.rb -r ./compose.rb -o ibx.rb fnlib.vs main.vs msg.vs inbox.vs insert.vs send.vs compose.vs  bload.vs startup.vs


