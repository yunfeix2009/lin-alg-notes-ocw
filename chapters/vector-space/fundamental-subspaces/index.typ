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
  Since row space is, by definition, then it is in the space of $RR…n$ and that its dimension is $rank (vb(A)^top)$. Moreover, the pivot columns of $vb(A)^top$ form its basis.
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

$ N(A^top)=c mat(-1; 0; 1) $

I also want to talk a bit more about column space. We know that after elimination, the pivot columns will correspond to the basis of the column space in the original matrix.

Although it feels intuitive, you should have a question: how do row operations find the independent columns? That's kinda weird. Let's try to prove this.

So first, we know that reducing a matrix $vb(A)$ into it's reduced row echelon form $vb(R)$ will not change the solution to $vb(A)vb(x)=vb(0)$.

In $vb(R)$, the columns with pivots are clearly independent. According to the definition of RREF form, all columns with pivots can only have zeros in the positions other than the pivots. More specifically, the pivot columns looks like an identity matrix when you put them together. I want to give the matrix a name $vb(R^prime)$. It contains all the pivot columns in $vb(R)$.

Let's go back to the corresponding columns in $vb(A)$. We "extract" the corresponding pivot columns out and put them into a matrix $vb(A^prime)$. We If the columns are dependent, there exists some non-zero solution to $vb(A^prime) vb(x)=vb(0)$.

Since row operations doesn't change the solution to an linear equation, and doing some row operations to $vb(A^prime)$ gives $vb(R^prime)$, so there should be a non-zero solution to $vb(R^prime) vb(x)=vb(0)$. But we've already proven that the columns of $vb(R^prime)$ are independent, so this equation doesn't stand. So the columns in $vb(A^prime)$ are also independent. Statement proved.

In order to further specify and develop the concept of subspaces being orthogonal, we make the following definition of orthogonal subspaces.

#definition[
  Given subspace $S$, a subspace $T$ is the _orthogonal compliment_ of $S$ iff $ forall vb(v) in T, quad forall vb(s) in S, quad vb(v) perp vb(s). $ Denote this relation as $T = S^perp$, or equivalently $S = T^perp$.
]

It is easy to show that $S^perp$ is a subspace. Any linear combination of the vectors in it still produces a zero dot product with any vector in $S$.

A nice property about this $S^perp$ is that $dim(S^perp)+dim(S)=n$, if $S in RR^n$. Intuitively, if $S$ have $k$ directions, than $S^perp$ can't have these directions, so $S^perp$ has $n-k$ directions. If this still seems confusing(probably), then look at the 3D space. For a plane, there are some lines perpendicular to it. For a line, there are some planes perpendicular to it.

#theorem[
  A vector is in the row space iff it is perpendicular to every vector in the null space.
]
#proof[
  Let's first prove that the vectors in the row space are perpendicular to every vector in the null space.

  $ vb(A)vb(x)=vb(0) $

  Let $vb(r_i)$ be the rows in $vb(A)$. According to row times column multiplication,

  $ vb(r_i) dot vb(x) = vb(0). $

  For any combination of the rows $c_1 vb(r_1)+c_2 vb(r_2) + dots + c_m vb(r_m)$,

  $
    (c_1 vb(r_1)+c_2 vb(r_2) + dots + c_m vb(r_m)) dot vb(x) = c_1 (vb(r_1) dot vb(x))+ c_2 (vb(r_2) dot vb(x)) + dots + c_m (vb(r_m) dot vb(x)) = vb(0)
  $

  Now we need to prove that any vector that is orthogonal to the null space is in the row space.

  An easy way is to look at the dimensions. The row space and the null space are both in $RR^n$, where $n$ is the number of columns, and $dim(C(vb(A)^top))+dim(N(vb(A)))=n$. It is known that $dim(N(vb(A))^perp)+dim(N(vb(A)))=n$, and $C(vb(A)^top) subset.eq N(vb(A))^perp$. Since $dim(C(vb(A)^top))=dim(N(vb(A))^perp)$, we can conclude that they are actually the same subspace.
]
