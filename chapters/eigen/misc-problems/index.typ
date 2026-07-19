#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Miscellaneous Practice Problems on Eigenvalues and Eigenvectors],
  route: "misc-problems",
  description: [Miscellaneous Practice Problems on Eigenvalues and Eigenvectors],
)
In this section, we prove a few results regarding eigenvalues and eigenvectors. The following definitions and problems are from Bing while the solutions, unless otherwise mentioned, attribute to the authors of this set of notes.

=== Definitions

#definition[
  *Eigenvalue and eigenvector.*

  Let $A$ be an $n times n$ matrix with entries in $CC$.
  A scalar $lambda in CC$ is called an *eigenvalue* of $A$ if there exists a nonzero vector
  $x in CC^n$ such that

  $
    A x = lambda x.
  $

  Any such nonzero vector $x$ is called an *eigenvector* of $A$
  corresponding to the eigenvalue $lambda$.
]

#definition[
  *Hermitian matrix.*

  An $n times n$ matrix $A$ with complex entries is called *Hermitian* if

  $
    A = A^*,
  $

  where $A^* = overline(A)^T$ denotes the conjugate transpose.
]

#definition[
  *Skew-Hermitian matrix.*

  An $n times n$ matrix $A$ with complex entries is called *skew-Hermitian* if

  $
    A^* = -A.
  $
]

#definition[
  *Unitary matrix.*

  An $n times n$ matrix $U$ with complex entries is called *unitary* if

  $
    U^* U = U U^* = I,
  $

  equivalently,

  $
    U^* = U^(-1).
  $
]

#definition[
  *Normal matrix.*

  A matrix $A$ is called *normal* if

  $
    A A^* = A^* A.
  $

  (Hermitian, skew-Hermitian, and unitary matrices are all special cases of normal matrices.)
]

=== Problems and Solutions

#problem[
  Prove that all eigenvalues of $A$ are real if $A$ is Hermitian.
]
#solution[
  This result is documented in @sec:sym as @thm:eigensym.

  In short, the proof bases on $ lambda vb(x)^* vb(x) = vb(x^* A x) = (vb(x)^* vb(A x))^* = overline(lambda) vb(x)^* vb(x). $ This is true for any eigenvector $vb(x)$ and is by definition non-zero, so $ lambda = overline(lambda) ==> lambda in RR.#qedhere $
]

#problem[
  (a) Prove that if $x$ and $y$ are eigenvectors of a Hermitian matrix $A$
  corresponding to distinct eigenvalues, then $x$ and $y$ are orthogonal.

  (b) Show more generally that this holds whenever $A$ is normal, i.e.,
  $A A^* = A^* A$.
]

#problem[
  What can be said about the eigenvalues of a unitary matrix?
]

#problem[
  What can be said about the eigenvalues of a skew-Hermitian matrix?
]
#solution[
  Given $ vb(A + A)^* = 0 $
]

#problem[
  Let $A$ be the $n times n$ real symmetric, tridiagonal matrix with $0$
  on the main diagonal and $1$ on the superdiagonal (and hence, by
  symmetry, $1$ on the subdiagonal as well):

  $
    A = mat(
      0, 1, 0, dots, 0;
      1, 0, 1, dots, 0;
      0, 1, 0, dots, 0;
      dots.v, dots.v, dots.v, dots.down, dots.v;
      0, 0, 0, dots.c, 0
    ).
  $

  Find the eigenvalues and eigenvectors of $A$.
]
#solution[
  For this problem, I present the path arriving at the solution for me to show what are some likely mistakes in such a solution.

  Initially, I considered the $n=4$ case, which could be eliminated to a permutation matrix. The $n=5$ case cannot as elimination produces one row of $0$'s. Thus, I conjectured that $vb(A)$ is singular if $n$ is odd. However, I falsely assumed that the elimination preserves eigenvalues and eigenvectors, then making false claims.

  Upon realizing that error, I still believed that solving the characteristic equation is unnecessary. Notice that $ vb(A) = vb(J)_n + vb(J)^top_n, $ where $vb(J)_n$ is the Jordan block of size $n$. Hence, I made the following flawed argument.

  Notice $vb(J)$ is similar to $vb(J)^top$ as the eigenvalues of $vb(J)$ is given by $det (vb(J) - lambda vb(I)) = 0$, and $(vb(J) - lambda vb(I))^top = vb(J)^top - lambda vb(I)$. The two equations are identical as $det vb(T) = det vb(T)^top$, a fact that could be shown by showing $ D(vb(A)) = (det vb(A B))/(det vb(B)) $ satisfies the defining properties of the determinant. Then, $ cases(vb(J x) = lambda vb(x), vb(J^top x) = lambda vb(x)) ==> vb((J + J^top)x = lambda vb(x)) $ as $vb(J)$ and $vb(J)^top$ share eigenvalues. Then, because $vb(J)$ has the only eigenvalue $0$ and the only independent eigenvector $mat(a; 0; 0; dots.v)$, that is the final answer.

  However, the problem with this proof was already hinted in $18.06$ lectures but I did not note down thinking I will not make this mistake. the eigenvectors of $vb(J)$ and $vb(J)^top$ are not necessarily the same. This argument falls apart.

  At this point, I resigned to solving the characteristic equation. First, Notice that by the cofactor expansion of the determinant, @eqn:cofactorexpansion, $ det vb(A)_n = - det vb(A)_(n-2). $ Also, $det vb(A)_0 = 0$ and $det vb(A)_1 = -1$, justifying the previous conjecture that $vb(A)$ is singular iff $n$ is odd.

  Let the characteristic polynomial for $vb(A) in RR^(n times n)$ be $p_n (lambda)$. With the cofactor expansion again, $ p_n = -lambda p_(n-1) - p_(n-2), quad p_1 = -lambda, quad p_2 = lambda^2 - 1. $ To solve this recursion the linear algebra way, let $ vb(u)_n:= mat(p_(n+1); p_(n)). $ The recursion becomes $ vb(u)_n = mat(-lambda, -1; 1, 0) vb(u)_(n-1). $ The eigenvalues of $mat(-lambda, -1; 1, 0)$ are $ mu_1 := (-lambda + sqrt(lambda^2 - 4))/2, quad mu_2:= (-lambda -sqrt(lambda^2 - 4))/2, $ corresponding to eigenvectors $ vb(v)_mu = mat(mu; 1). $ The initial condition gives $ vb(u)_1 = mat(lambda^2 - 1; -lambda) = c_1 mat(mu_1, 1) + c_2 mat(mu_2, 1). $ Solving gives $ (c_1, c_2) = (mu_1^2/(mu_1 - mu_2), - mu_2^2/(mu_1 - mu_2)). $ Thus, $ vb(u)_n = c_1 mu_1^(n-1) mat(mu_1; 1) + c_2 mu_2^(n-1) mat(mu_2; 1). $ Giving the Binet style $ p_n = (mu_1^(n+1) - mu_2^(n+1))/(mu_1 - mu_2). $
]

We also present a solution from Bing, 7/11/26.
#solution[

]

#problem[
  Let $B$ be the $n times n$ real skew-symmetric, tridiagonal matrix with
  $0$ on the main diagonal and $1$ on the superdiagonal (and hence, by
  skew-symmetry, $-1$ on the subdiagonal):

  $
    B = mat(
      0, 1, 0, dots, 0;
      -1, 0, 1, dots, 0;
      0, -1, 0, dots, 0;
      dots.v, dots.v, dots.v, dots.down, dots.v;
      0, 0, 0, dots.c, 0
    ).
  $

  Find the eigenvalues and eigenvectors of $B$.
]
#solution[
  Similar to the last problem, we first analyze the determinants. Notice that by the permutation way of computing the determinant, $ det D $
]

The following problems are from Bing, 7/18/26.

#example[
  Fix $theta$, let $ vb(A):= mat(cos theta, sin theta; -sin theta, cos theta); vb(B) := vb(A + A)^4. $ Find $ det(vb(B)) $ for $theta = pi/5$ and $theta = pi/9$.
]
#solution[
  The key to this problem is to notice the geometry nature of $vb(A)$. When $vb(A)$ is applied to a vector on $RR^2$, it rotates it by $theta$ counterclockwise. Hence, assume $theta = pi/5$, the net result of the transformation is a $90^degree$ counterclockwise rotation with a scaling factor of $2 sin(pi/5)$. Thus, $ vb(B)_(theta = pi/5) = mat(0, 2 sin(pi/5); -2sin(pi/5), 0), $ $ det(vb(B)) = 4 sin^2 (pi/5). $ On the other hand, assume $theta = pi/9$, geometry (Law of Sines for example) gives the transformation to be a $50^degree$ counterclockwise rotation with a scaling of $sqrt(3)$.$ det bold(B)
  = 4 cos^2 frac(pi, 6)
  = 4 dot frac(3, 4)
  = 3. #qedhere $
]

#example[
  Let $ vb(A) := mat(-1, 2; 3, 4). $ Solve the following equation for scalars $p$ and $q$, $ vb(A)^n = p vb(A) + q vb(I). $
]
Obviously, it is technically possible to manually compute $vb(A)^n$ for small $n$, it is advisable to use eigen-decomposition. However, even then the computation is non-trivial: first find the eigen-parameters, then solve the equation with $p$ and $q$. However, it is possible to solve this problem with a more elegant approach by treating the matrix holistically rather than as a combination of scalars.
#solution[
  First, recall that given $vb(A)$ with eigenvalue $lambda$ and eigenvector $vb(x)$, $ vb(A)^2 vb(x) = vb(A) lambda vb(x) = lambda^2 vb(x), $ which may be readily generalized to $ vb(A)^n vb(x) = lambda^n vb(x), quad n in NN. $

  The given equation $ vb(A)^n = p vb(A) + q vb(I) & ==> vb(A)^n - q vb(I) = p vb(A) \
                              & ==> (vb(A)^n - q vb(I)) vb(x) = p vb(A) vb(x) = lambda p vb(x). $ However, $ (vb(A)^n - q vb(I)) vb(x) = (lambda^n -q) vb(x). $ Thus, $ lambda^n - q = p lambda ==> lambda^n = p lambda + q. $ With $trace(vb(A)) = sum lambda, quad det(vb(A)) = product lambda$, $ lambda^2 -3lambda -10 = 0 ==> lambda = -2, 5. $ Thus, solving $ cases((-2)^n = (-2)p+ q, 5^n = 5p + q) $ gives $(p, q)$.
]


Moreover, with the recursive nature of this problem, this problem may also be solved with the following recursive relation $ cases(p = 3p + q, q = 10p). $
