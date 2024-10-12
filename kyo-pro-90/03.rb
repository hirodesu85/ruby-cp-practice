def dfs(start, graph)
  stack = []
  distances = Array.new(graph.length, -1)

  stack << [start, -1, 0]
  distances[start] = 0

  max_node = start
  max_dist = 0

  while !stack.empty?
    node, parent, distance = stack.pop

    graph[node].each do |neighbor|
      next if neighbor == parent

      if distances[neighbor] == -1
        distances[neighbor] = distance + 1
        stack << [neighbor, node, distances[neighbor]]
        if distances[neighbor] > max_dist
          max_dist = distances[neighbor]
          max_node = neighbor
        end
      end
    end
  end

  return [max_dist, max_node]
end

n = gets.to_i
graph = Array.new(n) {Array.new()}

(0...(n-1)).each do |_|
  a, b = gets.split(" ").map(&:to_i)
  graph[a-1] << b-1
  graph[b-1] << a-1
end

_, max_node = dfs(0, graph)
max_dist, _ = dfs(max_node, graph)

puts max_dist + 1
