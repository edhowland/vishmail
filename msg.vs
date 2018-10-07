# msg.vs - commands to handle reading of message contents - pass to repl()
defn rmove(msg, fn) { fn(:msg) }
rmove=curry(:rmove)

defn rkeys() {
  defn j(m) { mrotatel(:m) }
  defn k(m) { mrotater(:m) }
  defn l(m) { mline(:m) }
defn g(m) { mreset(:m) }
defn a(m) { mrest(:m) }
  defn q(m) { exit }
  binding()
}
# rfmt - format a line of the message
defn rfmt(l) { chomp(:l) }

defn rshow(fname) { 
  sh("./showm %{:fname}")
}
defn rmsg(fname) {
  contents=rshow(:fname)
  buffer=xmit(:contents, lines:)
  msg=mkmsg(:buffer)
  bf=rmove(:msg)
# now recursively call repl
  repl(:rkeys, :rfmt,:bf) 
}
