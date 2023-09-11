class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value, *neighbors)
        @value = value
        @neighbors = neighbors
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(strating_node, target_value)
    queue = []
end