# fnlib.vs - library functions
defn dosplit(arr) {
  {empty?(:arr) && []} || [split(head(:arr), '|')] + dosplit(tail(:arr))
}
# map_key(key)  returns symbol for true key fn
defn map_key(key) {
  :key == ' ' && return space:
  :key == '?' && return menu:
  mksym(:key)
}


defn help() {
  println('q: quit j: down k: up l: line ?: help')
}


# the REPL
# params: cm - key command bindings
# fmt - function to format output from key commands
# hf - movement function 
defn repl(cm, fmt, hf) {
  defn beep(h) { println('bad juju'); :h }

  cmds=%cm
  help()

  loop {
    key=%readc
:key == 'q' && break

    action=map_key(:key)
    {undefined?(:cmds[:action]) && action=:beep} || action=:cmds[:action]
    hf(:action) | %fmt | %println
  }
}
repl=curry(:repl)

# read_inbox attempt 2 - shell out to load_inbox script
defn read_inbox() {
  sh('./load_inbox') | xmit(lines:)
}
# hmove - take a header arrary and rotate in some direction
defn hmove(hs, fn) {
  hs=fn(:hs)
}
hmove=curry(:hmove)


