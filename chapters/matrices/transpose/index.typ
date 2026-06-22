#import "../../../lib.typ":*
== Transpose

#definition[
  The transpose of a matrix, $vb(A)$, is $vb(A)^top$, such that $(vb(A)^top)_(i j) = vb(A)_(j i)$.
]

Then, we have the following rules for transpose
+ Addition
  $ (vb(A + B))^top = vb(A)^top + vb(B)^top. $
+ multiplication
  $ vb(A B)^top = vb(B)^top vb(A)^top. $
  The reverse of $vb(A)$ and $vb(B)$ is due to $vb(A B)_(i j)$ is $vb(A)$'s $i$-th row dot $vb(B)$'s $j$-th column, which is $vb(B)$'s $j$-th row dot $vb(A)$'s i-th column.
+ Inverse
  $ (vb(A)^(-1))^top = (vb(A)^top)^(-1). $
  It suffices to show $ (vb(A)^(-1))^top vb(A)^top = vb(I). $
  Therefore, the dot product, also as known as the inner product of two vectors, $vb(x)$ and $vb(y)$ is $vb(x) dot vb(y) = vb(x)^top vb(y)$. 

  $ vb(A) vb(A)^(-1) = vb(I) &==> (vb(A) vb(A)^(-1))^top = vb(I)^top= vb(I) 
  \ &==> (vb(A)^(-1))^top vb(A)^top = vb(I). $


Interestingly, we have $ (vb(A x))^top vb(y) = vb(x)^top vb(A)^top vb(y) = vb(x)^top (vb(A)^top vb(y)). $ 
#definition[
  A matrix $vb(A)$ is _symmetric_ iff $vb(A)^top = vb(A)$. 
]

We have the following properties of symmetric matrices. 
+ If matrix $vb(A)$ is invertible and symmetric, then $vb(A)^(-1)$ is symmetric. 
  $ (vb(A)^(-1))^top = (vb(A)^top)^(-1) = vb(A)^(-1). $
+ $vb(A) vb(A)^top $ is symmetric 
  $ (vb(A) vb(A)^top)^top = vb(A) vb(A)^top. $
+ In elimination, $vb(A) = vb(L) vb(U)$, introduce the diagonal matrix $vb(D)$ such that $vb(L)$ and $vb(U)$ both have all $1$'s on their diagonals, $vb(A) = vb(L D U) = vb(L D L)^top$. 
  In this way, storage and amount of computation for solving a symmetric linear system are both cut in half. 