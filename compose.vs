# compose.vs - compose functions: see compose.rb and buffer_ffi.rb
defn ckeys() {
  defn j(b) { buf_down(:b); buf_line(:b) }
  defn k(b) { buf_up(:b); buf_line(:b) }
  defn L(b) { buf_line(:b) }

  binding()
}
# cmove buffer - handles dispatch to for key function passed
defn cmove(buf, fn) {
  fn(:buf)
}
cmove=curry(:cmove)
# cfmt - identity function for repl function
defn cfmt(s) {
  :s
}


