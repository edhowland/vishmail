# send.vs - Handles operations for sending and saving mail
# q: quit; s: send; d: save as draft; c: cancel and discard draft
defn skeys() {
  defn q(x) { true }
  q[quitter:] = true
  defn s(x) { println('sent'); :x }
  defn d(x) { println('save as draft'); :x }
  defn c(x) { println('canceling: discarding draft'); :x }
  c[quitter:]=true

  binding()
}
# sfmt : just identity
defn sfmt(s) { :s }
send=repl(:mget, :skeys, :sfmt, :merr)
#
defn snd(bmove) {
  println('q: quit. s: send. d: save as draft. c: cancel, discard draft')
  send(:bmove)
}





