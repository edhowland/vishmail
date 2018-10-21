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
rbfiles=['./util.rb', './msg.rb', './compose.rb']

task :allfiles do
  sh("cat #{vsfiles.join(' ')} > allfiles.vs")
end



task :compile => [:allfiles] do
  compiler, result = compile(compose(File.read('allfiles.vs')))
  # add back in abort if
  save(compiler,  'ibx.vsc')
end

task :compile_rb=> [:allfiles] do
  compiler, result = compile(compose(File.read('allfiles.vs')))
  @options[:ofile] = 'ibx.rb'
@options[:requires] = rbfiles
  render(compiler, @options)
end

task :clean do
  rm_f 'allfiles.vs'
  rm_f 'ibx.vsc'
  rm_f 'ibx.rb'
end

task :clean_logs do
  rm_f Dir['*.log']
end

