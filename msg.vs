# msg.vs - commands to handle reading of message contents - pass to repl()
# rget - readkey - just clone of :mget
rget=:mget


defn rmove(msg, fn) { fn(:msg) }
rmove=curry(:rmove)

# rkeys - Read message keys functions
defn rkeys() {
  defn j(m) { mrotatel(:m) }
  defn k(m) { mrotater(:m) }
  defn L(m) { mline(:m) }
defn g(m) { mreset(:m) }
defn A(m) { mrest(:m) }
  q=%mkquit

  binding()
}
# rfmt - format a line of the message
defn rfmt(l) { chomp(:l) | %echo }
# rerr - handle error case
defn rerr(l) { 'bad juju' }
defn rshow(fname) { 
  sh("./showm %{:fname}")
}
defn rmsg(fname) {
  contents=rshow(:fname)
  buffer=xmit(:contents, lines:)
  msg=mkmsg(:buffer)
  bf=rmove(:msg)
# now recursively call repl
  repl(:rget, :rkeys, :rfmt,:rerr, :bf) 
}
