# fnlib.vs - library functions
# should be a macro
# p: boolean, c - : block for true, a : block for false
defn ifelse(p, c, a) { {:p && %c} || %a }
# mkhow (:gkey, %keys,  err) - compose these together to create how function
# that takes no args and returns actual function to run
defn mkhow(gkey, keys, err) {
  fetch=ifelse(lambda?(:keys), :{ :keys }, :{->(k) { :keys[:k] }})
  what=raction(:err)
  ->() {
    %gkey | %fetch | %what
  }
}
# can we quit?
defn quit?(action) { has_key?(:action, quitter:) }
# make a common quit action key for everybody
defn mkquit() {
  defn q(x) { quit: }
  q[quitter:]=true
  :q
}
# split the headers
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
defn repl(gkey, keys, fmt, err, hf) {
  fm=format(:fmt, :hf)
how=mkhow(:gkey, %keys, :err)
  help()

  loop {
    ac=%how
  quit?(:ac) && break
fm(:ac)
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


