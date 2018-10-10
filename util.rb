# util.rb - Vish FFI utility functions written in Ruby

require 'json'
require 'open3'


# util functions used herein
def to_ctrl(n)
  ('ctrl_' + (n + 96).chr).to_sym#
end

$keys = Hash.new { false }
(1..26).to_a.map {|e| [e.chr, to_ctrl(e)] }.map {|k, v| $keys[k] = v }

    [
      ["\r", :return],
      ["\t", :tab],
      ["\u007f", :backspace],
      ["\e", :escape]
    ].map {|k, v| $keys[k] = v }

module Util
  def self.json_p(string)
    JSON.parse string
  end
  ## chompstring - chomps a string
  def self.chomp(string)
    string.chomp
  end
  ## println string - puts a string w/trailing newline
  def self.println(string)
    puts string
  end
  def self.join(arr, sep)
    arr.join(sep)#
  end
  ## split string, sep - array  
  def self.split(string, sep)
    string.split(sep)
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

  ## sh command - Run the command through the shell and gather stdout and return it
  def self.sh(command)
    begin
      stdin, stdout, stderr = Open3.popen3(command)
      stdout.read
    rescue => err
    err.message
    ensure
      stdout.close unless stdout.nil?
      stderr.close unless stderr.nil?
    end
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
end

Dispatch << Util

