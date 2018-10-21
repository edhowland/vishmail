# Rakefile - compile VishMail ibx.rb file and others

VISHBase=%x{./vishbase.rb}.chomp
VISHC=VISHBase + "/bin/vishc"

load VISHC
desc 'base: prints the base of Vish lang stuff'
task :base do
  puts VISHBase
end

desc 'vishc: path to vishc Ruby file'
task :vishc do
  puts VISHC
end

# Real stuff 
vsfiles=['fnlib.vs', 'main.vs', 'msg.vs', 'inbox.vs', 'insert.vs', 'send.vs', 'compose.vs', 'startup.vs']

task :allfiles do
  sh("cat #{vsfiles.join(' ')} > allfiles.vs")
end



task :compile => [:allfiles] do
  compiler, result = compile(compose(File.read('allfiles.vs')))
  save(compiler,  'ibx.vsc')

end


task :clean do
  rm_f 'allfiles.vs'
  rm_f 'ibx.vsc'
end

task :clean_logs do
  rm_f Dir['*.log']
end

