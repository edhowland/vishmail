#!/usr/bin/env ruby
# base.erb - template for compiler output to Ruby file.rb
# 

require_relative "/home/edh/dev/vish/lib/vish"

require_relative "/home/edh/dev/vish/runtime/vish_runtime"

### Foreign requires with -r, --require vishc compiler flag(s)
require_relative './util.rb'

###

### Included files with -i, --include vishc compiler flag(s)

###

ctx = Context.new
bc = ByteCodes.new
### emission of bytecodes
bc.codes = [:cls, :pushl, :failure, :pushl, [:msg, :k], :pushl, [:pushv, :msg, :pushl, 1, :pushv, :print, :lcall], :pushl, :Object_2aba49b59914, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :except, :pushv, :failure, :pushl, 1, :pushv, :curry, :lcall, :assign, :pushl, :mkattr, :pushl, [:k, :v], :pushl, [:pushl, :s, :pushv, :k, :pushl, "!", :pushl, 2, :pushl, :cat, :icall, :pushl, 1, :pushv, :mksym, :lcall, :assign, :pushv, :k, :pushl, [], :pushl, [:pushv, :v], :pushl, :Object_2aba49b58f8c, :pushl, 3, :pushl, :_mklambda, :icall, :pushl, 2, :pushv, :mkpair, :lcall, :pushv, :s, :pushl, [:x], :pushl, [:pushl, :v, :pushv, :x, :assign, :pushv, :v], :pushl, :Object_2aba49b58910, :pushl, 3, :pushl, :_mklambda, :icall, :pushl, 2, :pushv, :mkpair, :lcall, :pushl, 2, :pushv, :mkobject, :lcall], :pushl, :Object_2aba49b58438, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :keys, :pushl, [:obj], :pushl, [:pushv, :obj, :pushl, :keys, :pushl, 2, :pushv, :xmit, :lcall], :pushl, :Object_2aba49b58050, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :values, :pushl, [:obj], :pushl, [:pushv, :obj, :pushl, :values, :pushl, 2, :pushv, :xmit, :lcall], :pushl, :Object_2aba49b57b28, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :car, :pushl, [:l], :pushl, [:pushv, :l, :pushl, 1, :pushv, :key, :lcall], :pushl, :Object_2aba49b576b4, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :cdr, :pushl, [:l], :pushl, [:pushv, :l, :pushl, 1, :pushv, :value, :lcall], :pushl, :Object_2aba49b57254, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :undefined?, :pushl, [:key], :pushl, [:pushv, :key, :pushl, 0, :pushv, :binding, :lcall, :pushl, 2, :pushv, :_undefined?, :lcall], :pushl, :Object_2aba49b56bd8, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :map, :pushl, [:coll, :fn], :pushl, [:pushv, :coll, :pushl, 1, :pushv, :empty?, :lcall, :jmprf, 7, :pushl, 0, :pushl, :mkvector, :icall, :fret, :pushv, :coll, :pushl, 1, :pushv, :head, :lcall, :pushl, 1, :pushv, :fn, :lcall, :pushl, 1, :pushl, :mkvector, :icall, :pushv, :coll, :pushl, 1, :pushv, :tail, :lcall, :pushv, :fn, :pushl, 2, :pushv, :map, :lcall, :add], :pushl, :Object_2aba49b53eb0, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :__frames, :pushl, 0, :pushl, :mkvector, :icall, :pushl, :frame, :pushl, 1, :pushl, :mkvector, :icall, :pushl, 0, :pushv, :gensym, :lcall, :pushl, 3, :pushv, :_mklambda, :lcall, :assign, :pushl, :unwind_one, :pushl, [:s], :pushl, [:pushv, :s, :pushl, :pop, :pushl, 2, :pushv, :xmit, :lcall, :pushv, :s], :pushl, :Object_2aba49b535c8, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :callcc, :pushl, [:l], :pushl, [:pushl, 0, :pushv, :__frames, :lcall, :pushl, 1, :pushv, :unwind_one, :lcall, :pushv, :callcc, :pushl, 2, :pushv, :_mkcontinuation, :lcall, :pushl, 1, :pushv, :l, :lcall], :pushl, :Object_2aba49b52e20, :pushl, 3, :pushl, :_mklambda, :icall, :assign, :pushl, :null, :pushl, 0, :pushv, :mknull, :lcall, :assign, :pushl, :version, :pushl, 0, :pushv, :version, :lcall, :assign, :pushl, 0, :pushv, :vish_base, :lcall, :pushl, 1, :pushv, :println, :lcall, :halt]
###
ci = CodeInterpreter.new bc, ctx

# Main
result=ci.run

# exit
exit(0)

