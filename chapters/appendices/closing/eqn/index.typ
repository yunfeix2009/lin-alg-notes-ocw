#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Key Equations],
  route: "eqn",
)

Linear algebra could be categorized by equations its trying to solve or the methods used in solving these equations.

+ $vb(A x = b)$

  This set of notes started by analyzing this equation. This equation, per @sec:picture, could be finding the intersection of hyperplanes or finding the linear combination that produces a desired vector. To solve this equation, we developed elimination @sec:elimination, which gives rise to rank, pivots, dependence, @sec:independence etc. and produces the $vb(L U)$ decomposition, lower and upper triangular. Similar to the determinant for the quadratic equation, the determinant of the coefficient matrix @sec:determinants also determines the solvability of this equation. This equation also motivates inverses, for which we developed Cramer's rule @thm:inverse, and pseudo-inverses @sec:pinverse.

  The linear combination interpretation naturally makes one consider the space of linear combinations, a critical concept in math as _vector space_ and subspaces.

  Moreover, the question of what $vb(b)$ makes the equation solvable for $vb(x)$ given $vb(A)$ motivates the four fundamental subspaces of a matrix, a concept deemed fitting enough to be the cover of Strang's Introduction to Linear algebra @strang2009introduction.
+ $vb(A^top A x = A^top b)$

  In experimental sciences, we aim to find the "best" solution given data when there is none. Hence, we developed the concepts related to projection @sec:projection using orthogonality @sec:ortho . With the metric given by least squares @sec:lsa, we developed the given equation to find the optimal solution. In the process, we discover the many properties of $vb(A)^top$ and $vb(A^top A)$ along with $vb(A A^top)$.

  Properties of special matrices such as $vb(A^top A)$ gives considerations of properties of matrices, such as orthogonal, orthonormal, symmetric, etc.

  Discovering the useful properties of orthogonal basis here motivates the method to convert any basis into orthogonal basis, Gram-Schmidt @sec:gram, which further results in the $vb(Q R)$ decomposition, orthogonal and upper triangular.
+ $vb(A x) = lambda vb(x)$

  This equation gives the vectors in the column space of $vb(A)$ that remain in the same direction under the transformation of $vb(A)$. Eigenvalues and Eigenvectors (or even eigenfunctions by treating functions as vectors in infinite dimensional vector space) have extremely wide applications in other fields. Eigens give rise to the frequently used eigen-decomposition, or diagonlization @sec:diag, which is the go-to method when taking large powers of a matrix.

  Categorizing matrices based on their eigenvalues and eigenvectors give rise to the concept of similar matrices @sec:sim-mat and Jordan theory @sec:jordan. We find the orthogonality of eigenvector matrix of symmetric matrices @sec:sym and the usefulness of positive definite matrices @sec:pdm.

  The single value decomposition @sec:svd was implied by Strang as the "climax" of the class, which is confirmed by the lecture of linear algebra in the class of Topics in Mathematics with Applications in Finance
  @MITOCW18_642_Fall2024 as the "most useful decomposition" of a matrix due to its loose constraint of the matrix to be decomposed.
+ $dv(vb(u), t) = vb(A u)$

  This last equation is almost entirely on the application side. In solving differential equations @sec:diff-eq, especially systems of them (or equivalently the variable is a vector) or recursive sequences such as Markov chains @emp:markov, this equation suggests powers of $vb(A)$ (whether directly from recursion or $e^(vb(A) t)$). Taking powers of a matrix then requires diagonalization.

Note: these four equations are from the pedagogical advice essay "Too Much Calculus" @Strang2001TooMuchCalculus; however, analysis is done independently.
