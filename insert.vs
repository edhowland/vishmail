# insert.vs - Insert mode for compose/reply and buffer
defn ikeys() {
  defn escape(b) { true }
  escape[quitter:]=true

  binding()
}
# iget - get key and translate from spec_key
defn iget() { %readc | %spec_key }


# ierr - error message 
defn ierr(b) { 'key is not bound' }

# ifmt - formats output - probably just identity fn.
defn ifmt(b) { :b }

