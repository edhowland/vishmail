# fnlib.vs - library functions
defn ifelse(p, c, a) { {:p && %c} || %a }
# should be a macro
# p: boolean, c - : block for true, a : block for false
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
  defn quiet(h) { '' }
  defn beep() { echo('bad key pressed') | %printe }

  cmds=%cm
  help()

  loop {
    key=%readc
:key == 'q' && break

    action=map_key(:key)
    {undefined?(:cmds[:action]) && action=:quite } || action=:cmds[:action]
    hf(:action) | %fmt | %prints
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


