# options.rb - The Opt parser DSL for ibx.rb
# Meant to be included in the compiled ibx.rb file

require 'optparse'


options = OptionParser.new do |o|
  o.banner = 'VishMail'


  o.on('-h', '--help', 'This help message') do
    puts o.to_s
    exit(0)
  end
  o.on('-v', '--version', 'Prints version of VishMail') do
    puts 'VishMail ' + VishMail::VERSION
    exit(0)
  end
end



options.parse!
