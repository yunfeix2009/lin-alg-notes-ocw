#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *
#import fletcher: diagram, edge, node

#show: docs-subchapter.with(
  title: [Graphs, Networks, Incidence Matrices],
  route: "graphs",
  description: [Graphs, Networks, Incidence Matrices],
  label: <sec:graph>,
)
Linear algebra, partially due to its high level of abstraction and generality of vector spaces, have many applications. Here, we examine a discrete example of graphs, and their often useful representation with matrices.

#definition[
  A _graph_ is a set of nodes and edges, such that each edge represents a connection between exactly two nodes. A _directed graph_ is a graph where each edge represent a connection that is not symmetric wrt two nodes it is connecting.
]

To represent this relationship, we represent a graph $G$, with $m$ edges and $n$ nodes, with an incidence matrix $vb(A)$, defined as following.
#definition[
  $vb(A)$ has $m$ rows and $n$ columns, where an element $ vb(A)_(i j) = cases(1 &"if edge" i "points to node" j, -1 &"if edge" i "points away from node" j, 0 &"if edge" i "does not connect node" j). $
]

Now that we have a matrix, many tools from linear algebra is enabled. First, we examine the translation of dependency.

#theorem[
  A set of edges forms a loop iff their corresponding row vectors in the incidence matrix of the graph are dependent.
]

Given the importance of the four subspaces is to a matrix, we explore the implications of them on the graph.

+ Null space

  Call the incidence matrix $vb(A)$. The null space is defined by $vb(A) vb(x)=vb(0)$.

  $vb(A) vb(x)$ gives the potential difference across each edge. To make all potential differences zero, the nodes should have the same potential. So

  $ N(vb(A))=c mat(1; 1; dots.v; 1) $

+ Left null space

  We know that loops result in dependent rows. To make some combination of rows zero, we need to focus on each loop. Let's do an example.

  #figure-wrapper(
    figure(
      diagram(
        node-stroke: .6pt,
        node((1, 0), $1$, name: <n1>),
        node((0, 1), $2$, name: <n2>),
        node((2, 1), $3$, name: <n3>),
        node((0, 2), $4$, name: <n4>),
        node((2, 2), $5$, name: <n5>),
        edge(<n1>, <n2>, "->", label: $1$),
        edge(<n2>, <n3>, "->", label: $2$),
        edge(<n1>, <n3>, "->", label: $3$),
        edge(<n2>, <n4>, "->", label: $4$),
        edge(<n4>, <n5>, "->", label: $5$),
        edge(<n5>, <n3>, "->", label: $6$),
      ),
    ),
  )

  The incidence matrix is provided below.

  $ mat(-1, 1, 0, 0, 0; 0, -1, 1, 0, 0; -1, 0, 1, 0, 0; 0, -1, 0, 1, 0; 0, 0, 0, -1, 1; 0, 0, 1, 0, -1) $

  But we will only use this for checking. We'll find the left null space with the graph. First, determine a direction. For example, clockwise. Second, go to every small loop. Give $1$ for edges that point clockwise, and $-1$ otherwise.

  For the loop on top, edge $1$ points counter-clockwise, so we give it $-1$. Edge $2$ gets $-1$, and edge $3$ gets $1$. Form a vector with them:

  $ mat(-1; -1; 1; 0; 0; 0) $

  Now move to the loop at the bottom. Edge $2$ points clockwise, so we give it $1$. Edge $6$ gets $-1$, edge $5$ gets $-1$, and edge $4$ gets $-1$.

  $ mat(0; 1; 0; -1; -1; -1) $

  So we get the left null space:

  $ N(vb(A)^top)=c_1 mat(-1; -1; 1; 0; 0; 0) + c_2 mat(0; 1; 0; -1; -1; -1) $

  We only need to consider the small loops on our graph drawn, since all the bigger loops are made up of small loops. And if you set the $c_1$ and $c_2$ above to $1$, you get the vector for the largest loop on the graph. You can also check the answer with the incidence matrix.

+ Column space

  We know that $vb(A) vb(x)$ gives us a combination of potential differences. The column space is just all possible combinations of potential differences across the edges.

+ Row space

  Combination of the rows gives possible combinations of potentials at the nodes.

  There's a quick way to check if some vector is in the row space without trying hard to find the correct combination. A vector is in the row space iff it is perpendicular to every vector in the null space, according to @thm:row-space-is-the-orthogonal-compliment-of-null-space.

  In this case, we know the null space is

  $ mat(1; 1; dots.v; 1), $

  so we only need to check if the sum of the components is $0$, since the dot product of a vector and the null space is the sum of the components.
