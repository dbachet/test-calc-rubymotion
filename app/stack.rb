class Stack

  attr_accessor :string, :stack

  def initialize(string)
    @string = string
    @stack = []
  end

  def perform
    @string.each_char do |char|
      if char.match(/[0-9]/)
        @stack << char.to_i
      elsif char == '+'
        @stack << @stack.pop + @stack.pop
      elsif char == '*'
        @stack << @stack.pop * @stack.pop
      end
    end
    @stack.first
  end
end