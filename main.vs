# commands.vs - get commands in binding
defn mkeys() {
  defn menu(h) { help(); :h }

  defn j(h) { rotatel(:h) }
  defn k(h) { rotater(:h) }
  defn space(h) { fname=%{head(:h) | %head}; rmsg(:fname); :h}
  defn m(h) { buf=mkbuf(''); cb=cmove(:buf); repl(:ckeys, :cfmt, :cerr, :cb); :h }
  defn L(h) { :h }


  q=%mkquit

  binding()
}

# mfmt - menu formatter
defn mfmt(l) { head(:l) | %tail | join(' ') | %echo }
# merr - error function for main menu
defn merr(l) { echo('bad key') | %printe; :l}

# mget - get key, map it, then make it a symbol
defn mget() {
  %readc | %map_key | %mksym
}
