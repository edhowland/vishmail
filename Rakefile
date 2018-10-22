# Rakefile - compile VishMail ibx.rb file and others

ENV['RAKEOPT'] = '--silent'

VISHBase=%x{./vishbase.rb}.chomp
VISHC=VISHBase + "/bin/vishc"

load VISHC

# Util functions

def quiet_sh(*cmd)
  options = (Hash === cmd.last) ? cmd.pop : {}
  options = { verbose: false }.merge(options)

  sh *cmd, options do |ok, status|
    unless ok
      fail "Command failed with status (#{status.exitstatus}): [command hidden]"
    end
  end
end



task :ok do
#  sh('echo hi', silent: true)
#  quiet_sh('echo hello')
  sh('echo hello > ok.out', verbose: false)
end

def checkvs(vs)
  check(File.read(vs)).zero? || abort
end

def checkrb(source)
  sh("ruby -c #{source} >#{source}.err 2>&1 && rm -f #{source}.err",verbose: false) 
end

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

desc 'allfiles.vs: pack all .vs files into allfiles.vs'
file 'allfiles.vs' do
  sh("cat #{vsfiles.join(' ')} > allfiles.vs", verbose: false)
end


task :check_vs do
  vsfiles.each do |vs|
    checkvs(vs)
  end
end

desc 'check: checks for both Ruby and Vish syntax correctness'
task :check_rb do  
  #sh "ruby -c buffer_ffi.rb"
  checkrb('buffer_ffi.rb')
  rbfiles.each do |rb|
    checkrb(rb)
  end
end

desc 'check: checks syntax of Ruby and Vish sources'
task :check => [:check_rb, :check_vs]


task :compile => ['allfiles.vs'] do
  compiler, result = compile(compose(File.read('allfiles.vs')))
    abort("Failed to compile #{t.source}") unless result
  save(compiler,  'ibx.vsc')
end

task :compile_rb=> ['allfiles.vs'] do
  compiler, result = compile(compose(File.read('allfiles.vs')))
    abort("Failed to compile #{t.source}") unless result

  @options[:ofile] = 'ibx.rb'
@options[:requires] = rbfiles
  render(compiler, @options)
end

task :clean do
  rm_f 'allfiles.vs'
  rm_f 'ibx.vsc'
  rm_f 'ibx.rb'
  Dir['*.err'].each {|e| rm_f e }
end

task :clean_logs do
  rm_f Dir['*.log']
end



desc 'default: compiles ibx.rb'
task :default => [:check, :compile_rb]