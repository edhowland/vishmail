# compose.vs - compose functions: see compose.rb and buffer_ffi.rb
# cmove buffer - handles dispatch to for key function passed
defn cmove(buf, fn) {
  fn(:buf)
}
cmove=curry(:cmove)

# For now: just copy :mget into :cget
cget=:mget
defn ckeys() {
  defn h(b) { buf_back(:b); buf_at(:b) }
  defn j(b) { buf_down(:b); buf_line(:b) }
  defn k(b) { buf_up(:b); buf_line(:b) }
  defn l(b) { buf_fwd(:b); buf_at(:b) }
  defn g(b) { buf_beg(:b); buf_line(:b) }
  defn G(b) { buf_fin(:b); buf_line(:b) }
  defn L(b) { buf_line(:b) }

  # Insert mode
  defn i(b) { printe('insert mode'); insert(cmove(:b)); 'command mode' }

  q=%mkquit

  binding()
}

# cfmt - identity function for repl function
defn cfmt(s) {
  :s
}
# cerr - handle error condition
defn cerr(l) { echo('bad key') | %printe;  ''}
# message parts: to, subject
defn mkrcpt() {
  to1=''
  defn email() { :to1 }
  defn email!(a) { to1=:a }
  binding()
}
# mksubject - returns binding
defn mksubject() {
  subj=''
defn subject() { :subj }
  defn subject!(a) { subj=:a }

  binding()
}
# mkmessage - gets metadata for message
defn mkmessage() {
  print('New message')
  prints('to: ')
email=%mkrcpt
%email.email!(%read)
prints(' Subject: ')
subject=%mksubject
%subject.subject!(%read)
  buf=mkbuf('')
bmove=cmove(:buf)
prints('Message body: Enter q to quit')
repl(:cget, :ckeys, :cfmt, :cerr, :bmove)
  snd(:bmove)
[%email.email, %subject.subject, buf_to_s(:buf)]
}
