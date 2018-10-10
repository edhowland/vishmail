# inbox.vs - handles inbox
hdrs=dosplit(%read_inbox)
hf=hmove(:hdrs)
#main=curry(:repl)
inbox=repl(:mget, :mkeys, :mfmt, :merr)

