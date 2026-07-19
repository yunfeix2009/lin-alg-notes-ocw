#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Diagonalization and Powers],
  route: "diagonalization",
  description: [Diagonalization and Powers],
  label: <sec:diag>,
)
We start from the eigenvector matrix $vb(S)$ whose each column is an eigenvector of $vb(A)$ and assume they are all independent.

#definition[
  Let the diagonal eigenvalue matrix be $ vb(Lambda)_(i j) = cases(lambda_i &"if" i = j, 0 &"if" i !=j). $
]

#theorem[
  Fix square matrix $vb(A)$ with invertible eigenvalue matrix $vb(S)$, then $ vb(S)^(-1) vb(A S) = vb(Lambda); vb(A) = vb(S Lambda S)^(-1). $
]
#proof[
  Notice that $ vb(A S) & = vb(A) mat(vb(x)_1, vb(x)_2, dots, vb(x)_n) \
          & = mat(lambda_1 vb(x)_1, lambda_2, vb(x)_2, dots, lambda_n vb(x)_n) \
          & = vb(S Lambda) \
          & ==> vb(S)^(-1) vb(A S) = vb(Lambda); vb(A) = vb(S Lambda S)^(-1). #qedhere $
]
Thus, after $vb(L U)$ from elimination and $vb(Q R)$ from Gram-Schmidt, we have a new decomposition that is known as diagonalization.

Since the eigenvalues of $vb(A)^2$ are squares of that of $vb(A)$ from @emp:eigen2, $ vb(A)^2 = vb(S Lambda)^2 vb(S)^(-1). $

In fact, $ vb(A)^k = vb(S Lambda)^k vb(S)^(-1). $
From this fact, the diagonalization decomposition works well with taking large powers of $vb(A)$.

#example[
  Find the explicit formula for the Fibonacci Sequence ($a_0 = 0, a_1 = 1, a_k = a_(k-1) + a_(k-2), k >=2$).
]
#solution[
  Let $ vb(u)_k = mat(a_(k+1); a_k). $ Then, $ vb(u)_(k+1) = mat(1, 1; 1, 0) vb(u)_(k). $

  To find the eigenvalues of this matrix $mat(1, 1; 1, 0)$, we solve the equation $ det(mat(1, 1; 1, 0) - lambda vb(I)) =0. $ The left side is $ det mat(1-lambda, 1; 1, -lambda) = lambda^2 - lambda - 1 = 0 \ lambda = (1 plus.minus sqrt(5))/2. $

  Therefore, $ vb(u)_(k) & = mat(1, 1; 1, 0)^k u_0 \
            & = vb(S) mat((1+sqrt(5))/2, 0; 0, (1-sqrt(5))/2)^k vb(S)^(-1) mat(1; 0). $

  The eigenvectors are $mat(lambda; 1)$, so $ vb(S) = mat((1+sqrt(5))/2, (1-sqrt(5))/2; 1, 1). $

  Thus, $ vb(u)_n = mat((1+sqrt(5))/2, (1-sqrt(5))/2; 1, 1) mat((1+sqrt(5))/2, 0; 0, (1-sqrt(5))/2)^(n-1) mat((1+sqrt(5))/2, (1-sqrt(5))/2; 1, 1)^(-1) mat(1; 0). $

  Since $ vb(S)^(-1) = 1/sqrt(5) mat(1, (sqrt(5) - 1)/2; -1, (1+sqrt(5))/2), $
  $ a_n = 1/sqrt(5) (((1+sqrt(5))/2)^n - ((1-sqrt(5))/2)^n). #qedhere $
]
#remark[
  Notice that the recursive matrix is symmetric, making the eigenvalues guaranteed real.

  Moreover, this example reveals something profound about eigenvalues and eigenvectors: when a system is evolving linearly and step-by-step, its state at a certain point is described by the powers of the eigenvalues combined with the initial state's combination of eigenvectors.
]

#example[
  Fix matrix $ vb(C) = mat(2b -a, a-b; 2b-2a, 2a-b). $ Find a formula for $vb(C)^k$.
]
#solution[
  First, we find the eigenvalues of $vb(C)$. $ det(vb(C) - lambda vb(I)) & = det mat(2b-a-lambda, a- b; 2b-2a, 2a- b-lambda) = 0 \
                            & ==> (2b-a - lambda )( 2a-b - lambda) = (a-b)(2b-2a) \
                            & ==> (2b-a)(2a-b) + lambda^2 - (a+b) lambda = (a-b)(2b-2a) \
                            & ==> lambda^2- (a+b) lambda + a b = 0 \
                            & ==> lambda = a, b. $
  Solving for the basis of $N(vb(C) - a vb(I))$ and $N(vb(C) - b vb(I))$ gives $mat(1; 2)$ and $mat(1; 1)$, respectively.
  The eigenvector matrix is $vb(S) = mat(1, 1; 2, 1)$ and its inverse is $vb(S)^(-1) = mat(-1, 1; 2, -1)$.
  Thus, $ vb(C)^k & = vb(S D)^k vb(S)^(-1) \
          & = mat(1, 1; 2, 1) mat(a^k, 0; 0, b^k) mat(-1, 1; 2, -1) \
          & = mat(a^k, b^k; 2 a^k, b^k) mat(-1, 1; 2, -1) \
          & = mat(2b^k - a^k, a^k - b^k; 2b^k - 2a^k, 2a^k - b^k). #qedhere $
]
