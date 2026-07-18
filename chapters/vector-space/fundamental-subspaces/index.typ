#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Fundamental Subspaces],
  route: "fundamental-subspaces",
  description: [Fundamental Subspaces],
)
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

Here's a good way to find left null space without doing the whole elimination again for $vb(A)^top$. All we need to do, is to add an identity matrix to the right of $vb(A)$, and then do elimination to $vb(A)$. We will express the elimination steps as a matrix $vb(E)$, so that $vb(E) vb(A)$ will give the result of elimination. According to block multiplication:

$ vb(E) mat(vb(A), vb(I))=mat(vb(R), vb(E)) $

This tells us that if we do elimination with this augmented matrix, we can easily get the matrix $vb(E)$ in the process.

We know that left null space is some combination of the rows that gives the zero vector. We did a lot of row operations during elimination, and they preserve the row space. So we will just look for any zero row, and find the corresponding rows in $vb(E)$, and the rows in $vb(E)$ form the basis of the left null space.

This can be understood easily with the meaning of $vb(E) vb(A)$. Every row $i$ of $vb(E)$ tells us the combination of rows in $vb(A)$ that gives row $i$ in the result. For example, we did elimination to:

$ mat(1, 2, 3, 1, 1, 0, 0; 1, 1, 2, 1, 0, 1, 0; 1, 2, 3, 1, 0, 0, 1) $

We already added an identity matrix to the right of the original three by four matrix. After elimination, we get:

$ mat(1, 2, 3, 1, 1, 0, 0; 0, 1, 1, 0, 1, -1, 0; 0, 0, 0, 0, -1, 0, 1) $

Row $3$ is the zero row, so we take $mat(-1, 0, 1)$. Let's check this, it's clear that row $3$ minus row $1$ gives zero. We reached the conclusion:

$N(A^top)=c mat(-1; 0; 1)$
