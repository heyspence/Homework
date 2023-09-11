class GraphNode
    attr_accessor :value, :neighbors, :visited

    def initialize(value, *neighbors)
        @value = value
        @neighbors = neighbors
        @visited = false
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

def bfs(stating_node, target_value)
    queue = [stating_node]
    visited = []

    until queue.empty?
        current_node = queue.shift
        visited << current_node

        return current_node if current_node == target_value
        
        current_node.neighbors.each do |neighbor|
            if !visited.include?(neighbor)
                queue << neighbor
            end
        end
    end
    nil
end

p bfs(e, a)