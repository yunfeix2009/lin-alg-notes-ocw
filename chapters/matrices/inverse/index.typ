#import "../../../lib.typ":*
== Inverses of Matrices 

  #definition[For a matrix $bold(A)$, matrix $bold(M)$ is its inverse iff $bold(A M) = bold(M A) = bold(I)$, where $bold(I)$ is the identity matrix. ]<def:matrixInverse>
  Observe that a rectangular matrix may have a left or right inverse, but due to dimensions, they will never be equal. It could be shown that, a matrix has an inverse only if it is a square matrix, meaning it has the same number of rows and columns. 
  In fact, a square matrix's left inverse is also its right inverse, and this is a determining property of square matrices. Still, it should be noted that a square matrix is not guaranteed to have an inverse, the criterion will be shown later in the linear equations section and the determinant section. 

  Call a matrix _invertible_ when it has an inverse, then a matrix $vb(A)$ is not invertible iff there exists a non-zero vector $vb(x)$ that $vb(A x) = 0$.

  Moreover, $ (vb(A B))^(-1) = vb(B)^(-1) vb(A)^(-1), $ as $ vb(A B B)^(-1) vb(A)^(-1) = vb(A I A)^(-1) = vb(A A)^(-1) = vb(I). $


  Furthermore, finding the solution to a system of linear equations is equivalent to finding the inverse of a matrix.
  Consider a system of linear equations regarding $n$ variables. If $bold(A)$ is an n-by-n square matrix representing the coefficients of the variables in each equation, $bold(x)$ a vector representing the solutions, and $bold(B)$ representing the vector of the constants on the right side of the equations, then we have $ bold(A x) = bold(B) ==> bold(A)^(-1) bold(A x) = bold(A)^(-1) bold(B) ==> bold(x) = bold(A)^(-1) bold(B) $

  Thus, how to find the inverse of a matrix becomes a natural question. Here, I claim, without proof, that if the adjunct matrix of a square matrix $bold(A)$ is obtained by taking the transpose of the co-factor of the minors of $bold(A)$, then $ bold(A)^(-1) = 1/(det bold(A)) op("adj")(bold(A)). $ The definitions here will be in later sections, they are only included here for completeness of the inverse sections.
