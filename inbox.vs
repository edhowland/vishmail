# inbox.vs - handles inbox
hdrs=dosplit(%read_inbox)
hf=hmove(:hdrs)
main=curry(:repl)
inbox=main(:mkeys, :mfmt, :merr)

