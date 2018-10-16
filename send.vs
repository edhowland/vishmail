# send.vs - Handles operations for sending and saving mail
# q: quit; s: send; d: save as draft; c: cancel and discard draft
# collect_parts - collects parts: email addr, subject and body in single string
defn collect_parts(email, subject, body) {
  "To: %{%email.email}\n" + "Subject: %{%subject.subject}\n\n" + buf_to_s(:body)
}



# sfmt : just identity
defn sfmt(s) { :s }
send=repl(:mget, :skeys, :sfmt, :merr)
#
defn snd(bmove, rcpt, subj) {
defn skeys() {
  defn q(x) { true }
  q[quitter:] = true
  defn s(x) { println('sent'); :x }
  defn d(b) { 
    collect_parts(:rcpt, :subj, :b) | fwrite('draft')
  'Message saved as draft'
  }
  defn c(x) { println('canceling: discarding draft'); :x }
  c[quitter:]=true

  binding()
}

  println('q: quit. s: send. d: save as draft. c: cancel, discard draft')
  repl(:mget, :skeys, :sfmt, :merr, :bmove)
}

