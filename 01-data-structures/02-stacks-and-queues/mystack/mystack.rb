class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
	@stack << item
	self.top = item
  end

  def pop
	temp = @stack.index(self.top)
	if (temp > 0)
		self.top = @stack[temp - 1]
	else 
		self.top = nil
	end
	@stack[temp]
  end

  def empty?
	@stack.length <= 0
  end
end