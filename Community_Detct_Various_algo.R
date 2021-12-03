
library('igraph')
g <- erdos.renyi.game(100, 1/10)  # first argument is no. of nodes and 2nd argument is a measure of randomly genrated links between the nodes
plot(g,                     
     vertex.color="green",
     vertex.size=10,
      edge.color='red')

girvNew <- cluster_edge_betweenness(g, modularity = TRUE)
plot(girvNew ,g, main="Edge betweenness")
sizes(girvNew) 
modularity(girvNew)

c1 = cluster_fast_greedy(g)
plot(c1 ,g, main="fast greedy")
sizes(c1)
modularity(c1)

lp=label.propagation.community(g)
plot(lp ,g, main="LPA")
modularity(lp)
sizes(lp)


library('igraph')
g <- erdos.renyi.game(1000, 1/500)     
plot(g,
     vertex.color="green",
     vertex.size=10,
     edge.color='red')

girvNew <- cluster_edge_betweenness(g, modularity = TRUE)
plot(girvNew ,g, main="Edge betweenness")
sizes(girvNew) 
modularity(girvNew)

c1 = cluster_fast_greedy(g)
plot(c1 ,g, main="fast greedy")
sizes(c1)
modularity(c1)

lp=label.propagation.community(g)
plot(lp ,g, main="LPA")
modularity(lp)
sizes(lp)  
