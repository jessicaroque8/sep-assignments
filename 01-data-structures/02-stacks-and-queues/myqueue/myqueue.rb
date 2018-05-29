class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
	@head = @queue[0]
	@tail = nil
  end

  def enqueue(element)
	if @queue.index(@head) == nil
		@queue[0] = element
		@head = element
		@tail = element
		tail_index = @queue.index(@tail)
		return @queue[tail_index]
	else
		tail_index = @queue.index(@tail)
		@queue[tail_index + 1] = element
		@tail = element
		return @queue[tail_index]
	end
  end

  def dequeue
	@queue.delete_at(0)
	@head = @queue[0]
	if @queue.length <= 1
		@tail = @queue[0]
	else
		@tail = @queue[@queue.length - 1]
	end
	@head
  end

  def empty?
	@queue.length == 0
  end
end