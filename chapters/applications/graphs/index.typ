#import "../../../lib.typ":*
== Graphs, Networks, Incidence Matrices 

Linear algebra, partially due to its high level of abstraction and generality of vector spaces, have many applications. Here, we examine a discrete example of graphs, and their often useful representation with matrices. 

#definition[
  A _graph_ is a set of nodes and edges, such that each edge represents a connection between exactly two nodes. A _directed graph_ is a graph where each edge represent a connection that is not symmetric wrt two nodes it is connecting. 
]

To represent this relationship, we represent a graph $G$, with $m$ edges and $n$ nodes, with an incidence matrix $vb(A)$, defined as following.
#definition[
  $vb(A)$ has $m$ rows and $n$ columns, where an element $ vb(A)_(i j) = cases(1 &"if edge" i "points to node" j, -1 &"if edge" i "points away from node" j, 0 &"if edge" i "does not connect node" j ). $ 
] 

Now that we have a matrix, many tools from linear algebra is enabled. First, we examine the translation of dependency. 

#theorem[
  A set of edges forms a loop iff their corresponding row vectors in the incidence matrix of the graph are dependent. 
]

Given the importance of the four subspaces is to a matrix, we explore the implications of them on the graph. 

+ Null space




