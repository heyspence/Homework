class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end
    
    def pop
        @stack.delete(@stack.index(-1))
    end
    
    def peek
        # returns, but doesn't remove, the top element in the stack
        print @stack[-1]
    end

end

class Queue
    def initialize
        @queue = []
    end
    


end

s = Stack.new
s.push(5)
s.push(8)
s.push(7)
s.peek
s.pop