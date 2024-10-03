# Load the igraph library
install.packages("igraph")
library(igraph)

# a) Create an adjacency list representation for an undirected graph
# Create an empty graph (undirected)
g <- make_empty_graph(directed = FALSE)

# Define vertices
vertices <- c("A", "B", "C", "D", "E")
g <- add_vertices(g, length(vertices), name = vertices)

# Print the adjacency list representation of the graph
print_adj_list <- function(graph) {
  adj_list <- as_adj_list(graph)
  for (i in seq_along(adj_list)) {
    cat(V(graph)[i]$name, "->", paste(V(graph)[adj_list[[i]]]$name, collapse = ", "), "\n") # nolint
  }
}

cat("Initial adjacency list (empty):\n")
print_adj_list(g)

# b) Implement a function to add an edge between two vertices
add_edge_to_graph <- function(graph, v1, v2) {
  graph <- add_edges(graph, c(v1, v2))
  return(graph)
}

# Add edges between vertices (example: A-B, A-C, B-D, C-E)
g <- add_edge_to_graph(g, "A", "B")
g <- add_edge_to_graph(g, "A", "C")
g <- add_edge_to_graph(g, "B", "D")
g <- add_edge_to_graph(g, "C", "E")

cat("\nAdjacency list after adding edges:\n")
print_adj_list(g)

# c) Write a function to perform DFS traversal
dfs_traversal <- function(graph, start_vertex) {
  visited <- rep(FALSE, vcount(graph))  # Create a visited array initialized to FALSE #nolint
  traversal <- c()
  
  # Helper function for DFS
  dfs <- function(v) {
    visited[v] <<- TRUE
    traversal <<- c(traversal, V(graph)[v]$name)
    
    # Visit all adjacent vertices that have not been visited
    neighbors <- neighbors(graph, v)
    for (neighbor in neighbors) {
      if (!visited[neighbor]) {
        dfs(neighbor)
      }
    }
  }
  
  # Start DFS from the specified start vertex
  start_index <- which(V(graph)$name == start_vertex)
  dfs(start_index)
  
  return(traversal)
}

# Perform DFS traversal starting from vertex 'A'
cat("\nDFS traversal starting from 'A':\n")
dfs_result <- dfs_traversal(g, "A")
print(dfs_result)