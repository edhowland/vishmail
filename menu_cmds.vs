# commands.vs - get commands in binding
defn mkeys() {
  defn menu(h) { help(); :h }

  defn j(h) { rotatel(:h) }
  defn k(h) { rotater(:h) }
  defn space(h) { fname=%{head(:h) | %head}; rmsg(:fname); :h}
  defn L(h) { :h }

  # exit ... probably inside repl loop
  defn qh() { exit }
  binding()
}

# mfmt - menu formatter
defn mfmt(l) { head(:l) | %tail | join(' ') | %echo }
# merr - error function for main menu
defn merr(l) { [[false, 'bad juju']] }
