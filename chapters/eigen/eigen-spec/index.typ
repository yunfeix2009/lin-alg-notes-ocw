#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Eigenvalues and Eigenvectors of Special Matrices],
  route: "eigen-spec",
  description: [Eigenvalues and Eigenvectors of Special Matrices],
)
#lbl(<sec:sym>, heading(level: 3)[Symmetric Matrices])
#lbl(<thm:eigensym>, theorem[
  The eigenvalues of a symmetric matrix are real.
])
#lbl(<prf:eigensym>, proof[

  #lemma[
    For complex matrices $vb(A)$ and $vb(B)$, $ overline(vb(A B)) = vb(overline(A) thin overline(B)). $
  ]
  #proof[
    Entrywise, each element of $overline(vb(A B))$ is obtained through sum and multiplication, which are both decomposible with complex conjugate operation.
  ]
  We prove the general case of a Hermitian matrix, as symmetric matrices are Hermitian, where $vb(A) = vb(A)^*$, where $*$ operation is conjugate transpose.

  By definition, $ vb(A x) = lambda vb(x) & ==> vb(x)^* vb(A) = overline(lambda) vb(x)^* ==> overline(lambda) vb(x^* x) = vb(x)^* vb(A x). $ However, $ vb(x^* A x) = lambda vb(x^* x). $ Thus, $ lambda = overline(lambda). #qedhere $
])
anti-symmetric matrices ($vb(A)^top = - vb(A)$) have imaginary eigenvalues.

#theorem[
  The eigenvectors of a symmetric matrix can be chosen to be orthogonal.
]
#proof[
  We once again generalize to the complex domain. Assume $ cases(vb(A x = lambda_1 x), vb(A y = lambda_2 y)), quad lambda_1 != lambda 2. $ $ lambda_1 vb(x^* y= (A x)^* y = x^* A y = x^* y) lambda_2. $ Since $lambda_1 != lambda_2$, $vb(x)^top y = 0$. Therefore, all the eigenvectors are orthogonal.
]

As a consequence of this theorem, in the case where a symmetric matrix $vb(A)$ have $n$ independent eigenvectors, its eigenvector matrix $vb(S)$ is orthogonal, which may be scaled to orthonormal. Let the scaled, orthonormal eigenvector matrix be $vb(Q)$, we have $ vb(A) = vb(Q) vb(Lambda) vb(Q)^(-1) = vb(Q Lambda Q)^top. $ This makes sense as $vb(Q Lambda Q)^top$ is, by itself, symmetric. Moreover, $ vb(Q Lambda Q)^(-1) = sum_(i=1)^n lambda_i vb(q)_i vb(q)^top_i. $ Each individual $vb(q)_i vb(q)^top_i$ is a projection matrix, since the denominator, $vb(q)^top_i vb(q)_i = 1$ as it is normalized, and they are all pairwise orthogonal!. This theorem is known as the _Spectral Theorem_ since the matrix is decomposed to its elementary parts, eigenvectors.


Furthermore, knowing that the eigenvectors of a Hermitian matrix are real, we'd like to know their signs without directly computing them, which would be useful in determining the stability of the solution to the differential equations, for example. We have the following remarkable theorem #lbl(<thm:eigenpivot>, theorem[
  The number of positive (or negative) pivots of a symmetric matrix is equal to the number of positive (or negative) eigenvalues of the matrix.
])
This theorem may also be applied with $vb(A) - c vb(I)$ to determine the number of eigenvalues above a certain number $c$.


#lbl(<sec:pdm>, heading(level: 3)[Positive Definite Matrices])
#definition[
  A symmetric matrix is _positive definite_ iff all of its eigenvalues are positive. More generally, a symmetric matrix is _positive semidefinite_ iff all of its eigenvalues are non-negative.
]
From @thm:eigenpivot, we see that this definition is equivalent to a "symmetric matrix with all of its pivots positive."

Thus, since the determinant is the product of the pivots (eigenvalues), the determinants of all smaller matrices embedded in a positive definite matrix with coinciding diagonals have positive determinants.

#example[
  The only positive definite projection matrix is the identity matrix.
]
#solution[
  One key property, from definition, of a projection matrix $vb(P)$ is that $vb(P)^2 = vb(P)$. However, eigenvalues are squared along the matrix, so the eigenvalues of a projection matrix must be $0$ or $1$. For $vb(P)$ to be positive definite, all of its eigenvalues must be $1$. Hence, $ vb(P = Q Lambda Q^top = Q I Q^top = Q Q^top = I).#qedhere $
]

Now we have coupled pivots, eigenvalues, and determinants all positive to be all equivalent to the matrix being positive definite. In fact, they are connected with one more condition.
#lbl(<thm:pdm>, theorem[
  A symmetric matrix is positive definite iff $ vb(x)^top vb(A x) > 0 $ for all $vb(x) in RR^n without (0, 0, dots, 0)^top$.
])
#proof[
  Since $vb(A)$ is symmetric, assume its eigenvector matrix $vb(S)$ is invertible, then $vb(A)$ could be diagonalized as $ vb(A) = vb(S Lambda S)^(-1) = vb(S Lambda S)^top. $ So, $ vb(x^top A x) = vb(x^top S Lambda S)^top vb(x). $ Let $vb(y) = vb(S^top x)$, then $ vb(x^top A x) = vb(y^top Lambda y) = sum_(lambda_i "is eigenvalue") lambda_i vb(y)_i^2 >=0. $
  Notice equality is achieved when $vb(y) = 0$. Also, $vb(S)^top$ is invertible as $vb(S)$ is invertible, $vb(x) = 0 <==> vb(y) = 0$. So, all $lambda_i>0$ is equivalent to $vb(x^top A x)>0$ for all $vb(x)$.
]

Here, $vb(x^top A x)$ is a pure quadratic of $n$ variables. Hence, $vb(x^top A x)>0$ for all $vb(x)$ is equivalent to $vb(x) = 0$ being the minima of the function. In fact, $vb(x^top A x)$ represents all pure quadratics of $n$ variables, as the coefficient of each term that is not a variable squared may be split in half to ensure $vb(A)$ is symmetric.


#example[
  Find the value of $c$ that makes the $ vb(A) = mat(2, -1, -1; -1, 2, -1; -1, -1, 2+c) $
  + positive definite.
  + positive semi-definite.
]
#solution[
  Directly solving the characteristic equation is unnecessary. Hence, we present three tests involving quantities that connect with eigenvalues, namely determinants, pivots, and completing the square.

  + determinants

    One may verify that the determinants of the two upper sub-matrices are positive. The only one involving $c$ is the determinant of the entire matrix. $ det vb(A) & = 2 (2 dot (2+c) - 1) + (-(2+c) -1) -(1 - (-2)) = 3c. $
    Thus, $vb(A)$ is positive definite if $c>0$ and positive semi-definite when $c>=0$.
  + pivots

    By elimination, $ vb(E A) = mat(2, -1, -1; 0, 3/2, -3/2; 0, 0, c). $ Thus, $vb(A)$ is positive definite if $c>0$ and positive semi-definite when $c>=0$. Notice that the pivots' product is $det vb(A)$, verifying the elimination process.
  + completing the square

    For the pure quadratic $ mat(x; y; z) vb(A) mat(x, y, z), $ we complete the square to show when it is positive (non-negative) for all $x$, $y$, $z$.

    $ mat(x; y; z) vb(A) mat(x, y, z) & = 2x^2 + 2y^2 + (2+c)^2 - 2 x y - 2 y z - 2 z x \
                                    & = (x-y)^2 + (y-z)^2 + (z-x)^2 + c z^2. $ This gives the same result.

    As a side note, another valid factorization gives $ 2(x - y/2 - z/2)^2 + 3/2 (y-z)^2 + c z^2, $ showing remarkable similarity to the result of elimination. In fact, elimination of the coefficient matrix is identical to completing the square of a pure quadratic. #qedhere
]
#remark[
  Relatively, the method of determinants is the most convenient method for this problem. However, when determining whether a matrix is positive definite, an open eye shall be kept for all methods.
]

Due to the eigenvalues of $vb(A)^(-1)$ to be the reciprocal of that of $vb(A)$, $vb(A)$ being positive definite is equivalent to $vb(A)^(-1)$ being positive definite. Similarly, powers of $vb(A)$ are positive definite if $vb(A)$ is positive definite. Also, $vb(A)$ and $vb(A)^top$ have the same determinant and so do their sub-matrices (square matrices containing its $vb(A)_11$ element), so $vb(A)^top$ is positive definite if $vb(A)$ is positive definite. Due to @thm:pdm, $vb(A)$ and $vb(B)$ positive definite implies that $vb(A + B)$ is positive definite.

However, the positive definiteness of the product of two matrices is more intricate and we discuss it in the similar matrices section as its proof uses similar matrices, see @thm:posdefproduct.


In @sec:lsa, the method of least squares, we discussed the matrix $vb(A^top A)$, for example, @thm:keyeqnsolvability that states $N(vb(A)) = N(vb(A^top A))$ that gives the solvability of the projection equation.
#theorem[
  Fix matrix $vb(A) in RR^(m times n)$, $vb(A^top A)$ is positive semi-definite.
]
#proof[
  $ vb(x^top A^top A x) = vb((A x)^top (A x)) = norm(vb(A x))^2>=0. #qedhere $
]
#corollary[
  $rank vb(A) = n$ ensures $N(vb(A)) = emptyset$, meaning $vb(A)$ is positive definite.
]

Note: for applications of positive definite matrices, see @sec:extremum and @sec:qs.
#lbl(<sec:complex>, heading(level: 3)[Complex Vectors and Matrices])

Since this section already discussed Hermitian matrix and the conjugate transpose operation $*$, topics related to complex vectors and matrices are here as well.

First, to find the norm of a complex vector, $vb(v)^top vb(v)$ does not suffice as it may sometimes be negative, which is not even a valid metric. Thus, for a complex vector $vb(v)$, $ norm(vb(v))^2 = vb(v^* v). $ Similar to how $vb(x^top y)$ is dot product for real vectors, $vb(x^*y)$ is termed as the _complex inner product_.
#lbl(<sec:sim-mat>, heading(level: 3)[Similar Matrices])

#definition[
  Square matrices $vb(A)$ and $vb(B)$ are similar iff $ exists vb(M): vb(B) = vb(M)^(-1) vb(A M). $
]
Firstly, similarity is well-defined as $ vb(B) = vb(M)^(-1) vb(A M) ==> vb(A) = vb(M)^(-1) vb(B M). $

Also, in particular, $vb(A) = vb(S) vb(Lambda) vb(S)^(-1)$, so a matrix and its eigenvalue matrix are similar.
#theorem[
  Matrix similarity is transitive.
]
#proof[
  Assume $ cases(vb(A) = vb(P)^(-1) vb(B P), vb(B) = vb(Q)^(-1) vb(C Q)). $ Then, $ vb(a) = vb(P)^(-1) vb(Q)^(-1) C vb(P Q = (vb(P Q))^(-1) vb(C (P Q))). $
]
#corollary[
  Similar matrices have the same eigenvalues as a matrix is similar to its eigenvalue matrix.
]
Thus, every set of eigenvalues corresponds to a family of similar matrices.

However, sometimes the eigenvalues repeat. Then, we may further conclude that matrices in the same family have the same number of eigenvectors.
#example[
  Find the families with $lambda_1 = lambda_2 = 4$.
]
#lbl(<sol:jordan>, solution[
  First, $vb(T):= mat(4, 0; 0, 4)$ is a family of its own as it satisfies the condition and, if $vb(A)$ is similar to it, then $ vb(A) = vb(M)^(-1) vb(T) vb(M) = 4 vb(M)^(-1) vb(I M) = 4 vb(I) = vb(T). $

  However, there are still matrices with both of its eigenvalues $4$ but not similar to $vb(T)$.  Those are the ones with only one eigenvector. Hence, they are not diagonalizable to the form which makes them similar to $vb(T)$.  In fact, if $vb(A)_1 = mat(a; b), quad b!=0$, then $ vb(A) = mat(a, 16/b; b, 8-a) $ is in the family as $trace vb(A) = 8$ and $det vb(A) = 16$. Thus, there are two families that could be represented by $ mat(4, 0; 0, 4) "and" mat(4, 1; 0, 4).#qedhere $
])

#lbl(<thm:posdefproduct>, theorem[
  Given positive definite matrices $vb(A)$ and $vb(B)$, $vb(A B)$ is positive definite iff $vb(A)$ and $vb(B)$ commute, meaning $vb(A B = B A)$.
])
#proof[
  Since $vb(A)$ is symmetric, diagonalize $vb(A)$ as $vb(A):= vb(Q) diag(lambda_i) vb(Q)^top.$
  Let the square root of $vb(A)$ be its principal square root, $ vb(A)^(1/2):= vb(Q) diag(sqrt(lambda_i)) vb(Q^top). $
  Hence, $(vb(A)^(1/2))^2 = vb(A)$ and $vb(A)^(1/2)$ is also positive definite, so symmetric and invertible (none of the eigenvalues are $0$, so determinant is non-zero).

  Notice $ vb(A B) = vb(A)^(1/2) (vb(A)^(1/2) vb(B) vb(A)^(1/2)) vb(A)^(-1/2). $ So, $vb(A B)$ is similar to $vb(A)^(1/2) vb(B) vb(A)^(1/2)$.

  $ vb(x^top A)^(1/2) vb(B) vb(A)^(1/2) vb(x) & = (vb(x^top) (vb(A)^(1/2))^top) vb(B) (vb(A)^(1/2) vb(x)) \
                                            & = (vb(A)^(1/2) vb(x))^top vb(B (vb(A)^(1/2) vb(x))). $ Since $vb(A)$ is invertible, $ vb(A)^(1/2) vb(x) = 0 <==> vb(x) = 0 $. Also, $vb(B)$ is positive definite, so $ (vb(A)^(1/2) vb(x))^top vb(B (vb(A)^(1/2) vb(x)))>0. $ Applying @thm:pdm again shows that $vb(A)^(1/2) vb(B) vb(A)^(1/2)$ is positive definite, meaning all eigenvalues of $vb(A B)$ are positive.

  Also, $ "vb(A B) is symmetric" & <==> (vb(A B))^top = vb(A B) \
                         & <==> vb(B)^top vb(A)^top = vb(A B) \
                         & <==> vb(B A) = vb(A B). $

  Since  all of $vb(A B)$'s  eigenvalues are positive, and it is symmetric iff $vb(A)$ and $vb(B)$ commute, $vb(A B)$ is positive definite iff $vb(A)$ and $vb(B)$ commute. #qedhere
]

#lbl(<sec:jordan>, heading(level: 3)[Jordan Forms])

Jordan forms completes the theory on categorizing matrices based on their families by drawing the lines between matrices with duplicating eigenvalues.

#definition[
  A Jordan block is a square matrix with diagonal elements to be equal to a fixed value (its eigenvalue) and the entry above the diagonal element $1$ with the exception of the first column. In particular, a unit matrix, one that contains only one entry, is also taken as a Jordan form.
  $
    J = mat(
      lambda, 1, 0, dots.h, 0;
      0, lambda, 1, dots.h, 0;
      dots.v, dots.down, dots.down, dots.down, dots.v;
      0, dots.h, 0, lambda, 1;
      0, dots.h, dots.h, 0, lambda
    )
  $
]
Thus, the representative matrix of a family in @sol:jordan, $ mat(4, 1; 0, 4) $ family is a Jordan block.
#theorem[
  A Jordan block has exactly one eigenvector.
]
#proof[

]
#definition[
  The direct sum operation, $xor$ of two matrices $vb(A)$ and $vb(B)$ is $mat(vb(A), 0; 0, vb(B))$, where the $0$'s represent the zero matrix of appropriate size.
]
#definition[
  A Jordan form is the direct sum of Jordan blocks.
]

#theorem[
  Jordan's Theorem states that any matrix is similar to a Jordan form $vb(J)$ (that is obtained by taking the direct sum of Jordan blocks of each of its eigenvalue with size $dim (vb(A) - lambda vb(I))$).
]
In the case that the matrix's eigenvalues are all distinct, $vb(J = Lambda)$. However, in the case that there are repeating eigenvalues, Jordan's theorem gives a method of uniquely determining its family.

Also notice that no two Jordan blocks are similar and that Jordan forms are unique up to the order of direct sum of its constituent Jordan blocks.

#example[
  The following two Jordan forms, both has dimension $4$, only eigenvalue being $0$, two eigenvectors (as their null spaces have the same dimension due to same rank), are not similar.
  $
    vb(J)_1 = mat(
      0, 1, 0, 0;
      0, 0, 1, 0;
      0, 0, 0, 0;
      0, 0, 0, 0
    ) "and" vb(J)_2 = mat(
      0, 1, 0, 0;
      0, 0, 0, 0;
      0, 0, 0, 1;
      0, 0, 0, 0
    ).
  $
]
