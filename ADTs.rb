class Stack
    def initialize
        @ivar = []
    end

    def push(el)
        @ivar << el
    end
    
    def pop
        @ivar.delete_at(@ivar.index(-1))
    end
    
    def peek
        # returns, but doesn't remove, the top element in the stack
        @ivar[-1]
    end
end