# send.vs - Handles operations for sending and saving mail
# q: quit; s: send; d: save as draft; c: cancel and discard draft
# formatters
defn fmt_send(draft, rcpt) {
  "./send.sh " + :draft + " " + %rcpt.email
}
defn fmt_to(fn) { "To: %{%fn.email}\n" }
defn fmt_date(fn) { "Date: %{%fn}\n" }
defn fmt_subject(fn) { "Subject: %{%fn.subject}\n" }
# collect_parts - collects parts: email addr, subject and body in single string
defn collect_parts(email, subject, body) {
  fmt_date(:now_s) + fmt_to(:email) + fmt_subject(:subject) + "\n\n" + buf_to_s(:body)
}



# sfmt : just identity
defn sfmt(s) { :s }
send=repl(:mget, :skeys, :sfmt, :merr)
#
defn snd(bmove, rcpt, subj) {
  draft=mkfname('draft')
  collect_parts(:rcpt, :subj, bmove(->(x) { buf_to_s(:x) })) | fwrite(:draft)

defn skeys() {
  defn q(x) { true }
  q[quitter:] = true
  defn s(x) {
  println('Sending message')
    sh(fmt_send(:draft, :rcpt))
    println('Message sent')
}
  defn d(b) { 
    frm(:draft)
    println(:draft + ' file deleted')
  }
  defn c(x) { true }
  c[quitter:]=true
  defn menu(x) {println('q: quit. s: send. d: Discard draft. c: cancel, leaves draft') }

  binding()
}

#  println('q: quit. s: send. d: Discard draft. c: cancel, leaves draft')
  %{ _x=%skeys; %_x.menu(1) }
  repl(:mget, :skeys, :sfmt, :merr, :bmove)
}

