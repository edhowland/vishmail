# inbox.vs - handles inbox
hdrs=dosplit(%read_inbox)
hf=hmove(:hdrs)
inbox=repl(:mget, :mkeys, :mfmt, :merr)
# start
defn ibx() {
  println('Inbox')
  help()
  inbox(:hf)
}


