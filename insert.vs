# insert.vs - Insert mode for compose/reply and buffer
defn _ikeys() {
  defn space(b) { buf_ins(:b, ' '); ' ' }
  defn newline(b) { buf_ins(:b, "\n"); "\n" }
  defn tab(b) { buf_ins(:b, "  "); 'tab' }
  defn self_insert(k, b) { buf_ins(:b, :k); :k }
  self_insert=curry(:self_insert)

  # special control keys
  defn ctrl_l(b) { buf_line(:b) }


  defn escape(b) { true }
  escape[quitter:]=true

  binding()
}
# ikeys - real ikeys wrapper over :_ikeys
defn ikeys() {
    k=%_ikeys

  ->(v) {
    ifelse(symbol?(:v), :{ :k[:v] }, :{ si=:k[self_insert:]; si(:v) })
  }
}

# iget - get key and translate from spec_key
defn iget() { %readc | %spec_key }


# ierr - error message 
defn ierr(b) { 'key is not bound' }

# ifmt - formats output - probably just identity fn.
defn ifmt(b) { :b }


insert=repl(:iget, :ikeys, :ifmt, :ierr)
