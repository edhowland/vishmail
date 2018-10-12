# inbox.vs - handles inbox
hdrs=dosplit(%read_inbox)
hf=hmove(:hdrs)
inbox=repl(:mget, :mkeys, :mfmt, :merr)

