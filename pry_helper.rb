# pry_helper.rb - setups and toools of inspectors, .etc for Pry

require_relative 'key_symbol'


require_relative 'message'
require_relative 'compose'
require_relative 'util'


# create_module - temps create all self methods for BufferFFI
def create_mod
  File.open('buffer_ffi.rb', 'w') do |f|
      f.puts 'module BufferFFI'
    (Buffer.instance_methods - Object.instance_methods).each do |m|
      meth = m.to_s
      f.puts "  ## #{meth}(buf) - "
      f.puts "  def self.#{meth}(buf)"
      f.puts "    buf.#{meth}()"
      f.puts "  end"
    end
    f.puts 'end'
  end
end


def m
  Message.new ['line 1','line 2','line 3','line 4']
end