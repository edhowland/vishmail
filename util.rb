# util.rb - Vish FFI utility functions written in Ruby

require 'time'

require 'json'
require 'open3'

#require_relative 'key_symbol'



# util functions used herein
def to_ctrl(n)
  ('ctrl_' + (n + 96).chr).to_sym#
end

$keys = Hash.new { false }
(1..26).to_a.map {|e| [e.chr, to_ctrl(e)] }.map {|k, v| $keys[k] = v }

    [
      ["\r", :newline],
      ["\t", :tab],
      ["\u007f", :backspace],
      ["\e", :escape],
      [' ', :space]
    ].map {|k, v| $keys[k] = v }

module Util

  ## json string - parses json string
  ### Add to Builtins
  def self.json_p(string)
    JSON.parse string
  end

  ## println string - puts a string w/trailing newline
  def self.println(string)
    puts string
  end

  ## iread - read lines from $stdin
  def self.iread()
    $stdin.read.lines
  end
  ## rotatel arr - rotates arr left
  def self.rotatel(arr)
    arr.rotate
  end
  ## rotater arr - rotates arr right
  def self.rotater(arr)
    arr.rotate(-1)
  end
  ## key_exists? hash, key
  def self.key_exists?(h, k)
    h.has_key?(k)
  end
  ## value_exists? hash, value
  def self.value_exists?(h, v)
    h.has_value?(v)
  end

  ## logsh command - Run the command through the shell and gather stdout and return it
  # Takes stdin, command
  # Returns tuple of [stdout, stderr, status]
  # Capture stuff in sh.log
  def self.logsh(inp, command)
    out, err, status = Builtins.shx(inp, command)
    open('sh.log', 'a+') do |f|
      f.puts "command: #{command}"
      f.puts "stdin: #{inp.to_s}"
      f.puts "output: #{out}"
      f.puts "error: #{err}"
      f.puts "status: #{status}"
    end

    [out, err, status]
  end

  ## printe(string) - Output to stderr
  def self.printe(string)
    $stderr.print(string)
  end
  ## has_key? object, key
  def self.has_key?(object, key)
    object.has_key?(key)
  end

  ## spec_key key - Given raw key, return key or symbol like :tab
  def self.spec_key(key)
    $keys[key] || key
  end

  # now_s - Time.now.rfc822 as string
  def self.now_s
    Time.now.rfc822.to_s
  end

  ## mkfname(template) - returns new numbered filename
  def self.mkfname(template)
    num = Dir[template + '.*'].length + 1
    "#{template}.#{num}"
  end

  # last array - return last element of array
  def self.last(array)
    array.last
  end
end

Dispatch << Util

