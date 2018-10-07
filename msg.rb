# msg.rb - Vish internal fns for dealing with Message class

require_relative 'message'


module Msg
  ## Create new Message from array of lines
  def self.mkmsg(lines)
    Message.new(lines)
  end
  ## rotatel msg - rotate it left, return current line
  def self.mrotatel(msg)
    msg.rotatel
    msg.line
  end
  def self.mrotater(msg)
    msg.rotater
    msg.line
  end
  ## mline - the current line
  def self.mline(msg)
    msg.line
  end
  ## mreset msg - resets the message lines to top
  def self.mreset(msg)
    msg.reset!
    msg.line
  end
## mrest msg - returns rest of message from current line
def self.mrest(msg)
  msg.rest
end
end

Dispatch << Msg
