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
defn format(fmt, blob, action) {
  blob(:action) | %fmt | %prints
}
format=curry(:format)

defn raction(err, action) {
    ifelse(undefined?(:action), :{:err}, :{:action})
}
raction=curry(:raction)

# the REPL
# params: cm - key command bindings
# fmt - function to format output from key commands
# err : error function compatible with fmt
# hf - movement function 
defn repl(cm, fmt, err, hf) {
  cmds=%cm
  fm=format(:fmt, :hf)
what=raction(:err)
  help()

  loop {
    key=%readc
:key == 'q' && break

    real_key=map_key(:key)
    action=:cmds[:real_key]
  action=what(:action)

    fm(:action)
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


