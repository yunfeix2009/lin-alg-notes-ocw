#import "../../../lib.typ":*
== Fundamental Subspaces 
In fact, one of the fundamental objects at study of linear algebra, matrices, have four fundamental subspaces, row space, column space, null space, and left null space. We are going to systematically study them in this section. 

Similar to the column space, the row space is the vector space of a matrix's row vectors, or the column space of the matrix's transpose. 
#definition[
  The _row space_ of matrix $vb(A)$ is $vb(C) (vb(A)^top)$. 
]

Similar to the relationship between row space and column space, we can define eh analogue of the null space. Denoting the null space of a matrix $vb(A)$ to be $vb(N) (vb(A))$, we have the following definition. 
#definition[
  The left null space of matrix $vb(A)$ is $vb(N) (vb(A)^top)$. 
]

Fix a matrix $vb(A)$ that is $m times n$, we wish to understand, for each of these subspaces, what space they are in, how to find their basis vectors, and what's their dimensions. 


+ Column Space 
  It is in the space of $RR^m$, as each column vector is $m$ dimensional, whereas its dimension is its own rank. Its pivot columns (see the linear equation section) form a basis. 
+ Null Space
  By definition, it is in the space of $RR^n$, its dimension is the number of free variables, thus $n-r$
+ Row Space 
  Since row space is, by definition, then it is in the space of $RR…n$ and that its dimension is $rank (vb(A)^top)$. Moreover, the pivor columns of $vb(A)^top$ form its basis. 
+ Left Null Space
  It is in the space $RR^m$, with dimension $m-r$. 