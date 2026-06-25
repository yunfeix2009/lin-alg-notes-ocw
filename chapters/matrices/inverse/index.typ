#import "../../../lib.typ":*
== Inverses of Matrices
In fact, any square matrix with a non-zero determinant has an inverse.
  Furthermore, finding the solution to a system of linear equations is equivalent to finding the inverse of a matrix.
  Consider a system of linear equations regarding $n$ variables. If $bold(A)$ is an n-by-n square matrix representing the coefficients of the variables in each equation, $bold(X)$ a vector representing the solutions, and $bold(B)$ representing the vector of the constants on the right side of the equations, then we have $ bold(A X) = bold(B) ==> bold(A)^(-1) bold(A X) = bold(A)^(-1) bold(B) ==> bold(X) = bold(A)^(-1) bold(B) $

  Thus, how to find the inverse of a matrix becomes a natural question. Here, I claim, without proof, that if the adjunct matrix of a square matrix $bold(A)$ is obtained by taking the transpose of the co-factor of the minors of $bold(A)$, then $ bold(A)^(-1) = 1/(det bold(A)) op("adj")(bold(A)). $
