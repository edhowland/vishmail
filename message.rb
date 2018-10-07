# message.rb - class Message - holds lines of message contents

class Message
  def initialize lines
    @contents = lines
    reset!
  end
  attr_reader :contents, :lines
  def rotatel
    @lines.rotate!
  end
  def rotater
    @lines.rotate!(-1)
  end
  def reset!
    @lines = (0..(@contents.length - 1)).to_a
  end

  ## line - get the current line
  def line
    @contents[@lines.first]
  end

  ## rest - returns from current line until end of document as joined line with newlines
  def rest
    c = @lines.first
    @lines.reject {|e| e < c }.map {|e| @contents[e] }.join("\n")
  end
end