#!/bin/bash
# compile vs files into .vsc file
# Differs from h.sh in that removes *.rb files and adds startup.vs
# Use run.sh to execute it
vishc -o ibx.vsc  fnlib.vs main.vs msg.vs inbox.vs insert.vs send.vs compose.vs  bload.vs startup.vs


