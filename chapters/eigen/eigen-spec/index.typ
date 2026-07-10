#import "../../../lib.typ":*
== Eigenvalues and Eigenvectors of Special Matrices 


=== Symmetric Matrices
#theorem[
  The eigenvalues of a symmetric matrix are real. 
]
#proof[
  
#lemma[
  For complex matrices $vb(A)$ and $vb(B)$, $ overline(vb(A B)) = vb(overline(A) overline(B)). $
]
#proof[
  Entrywise, each element of $overline(vb(A B))$ is obtained through sum and multiplication, which are both decomposible with complex conjugate operation. 
]
  We prove the general case of a Hermitian matrix, as symmetric matrices are Hermitian, where $vb(A) = vb(A)^*$, where $*$ operation is conjugate transpose. 

  By definition, $ vb(A x) = lambda vb(x)&==> vb(x)^* vb(A) = overline(lambda) vb(x)^* vb(x) ==> overline(lambda) vb(x^* x) = vb(x)^* vb(A x). $ However, $ vb(x^* A x) = lambda vb(x^* x). $ Thus, $ lambda = overline(lambda). #qedhere $
]
anti-symmetric matrices ($vb(A)^top = - vb(A)$) have imaginary eigenvalues. 

#theorem[
  The eigenvectors of a symmetric matrix can be chosen to be orthogonal. 
]
#proof[
  We once again generalize to the complex domain. Assume $ cases(vb(A x = lambda_1 x), vb(A y = lambda_2 y)), quad lambda_1 != lambda 2. $ $ lambda_1 vb( x^* y= (A x)^* y = x^* A y = x^* y) lambda_2. $ Since $lambda_1 != lambda_2$, $vb(x)^top y = 0$. Therefore, all the eigenvectors are orthogonal. 
]

As a consequence of this theorem, in the case where a symmetric matrix $vb(A)$ have $n$ independent eigenvectors, its eigenvector matrix $vb(S)$ is orthogonal, which may be scaled to orthonormal. Let the scaled, orthonormal eigenvector matrix be $vb(Q)$, we have $ vb(A) = vb(Q) vb(Lambda) vb(Q)^(-1) = vb(Q Lambda Q)^top. $ This makes sense as $vb(Q Lambda Q)^top$ is, by itself, symmetric. Moreover, $ vb(Q Lambda Q)^(-1) = sum_(i=1)^n lambda_i vb(q)_i vb(q)^top_i. $ Each individual $vb(q)_i vb(q)^top_i$ is a projection matrix, since the denominator, $vb(q)^top_i vb(q)_i = 1$ as it is normalized, and they are all pairwise orthogonal!. This theorem is known as the _Spectral Theorem_ since the matrix is decomposed to its elementary parts, eigenvectors. 


Furthermore, knowing that the eigenvectors of a Hermitian matrix are real, we'd like to know their signs without directly computing them, which would be useful in determining the stability of the solution to the differential equations, for example. We have the following remarkable theorem #theorem[
  The number of positive (or negative) pivots of a symmetric matrix is equal to the number of positive (or negative) eigenvalues of the matrix. 
]<thm:eigenpivot>
This theorem may also be applied with $vb(A) - c vb(I)$ to determine the number of eigenvalues above a certain number $c$. 


=== Positive Definite Matrices 
#definition[
  A symmetric matrix is _positive definite_ iff all of its eigenvalues are positive. 
]
From @thm:eigenpivot, we see that this definition is equivalent to a "symmetric matrix with all of its pivots positive."

Thus, since the determinant is the product of the pivots (eigenvalues), the determinants of all smaller matrices embedded in a positive definite matrix with coinciding diagonals have positive determinants. 

#example[
  The only positive definite projection matrix is the identity matrix. 
]
#solution[
  One key property, from definition, of a projection matrix $vb(P)$ is that $vb(P)^2 = vb(P)$. However, eigenvalues are squared along the matrix, so the eigenvalues of a projection matrix must be $0$ or $ 1$. For $vb(P)$ to be positive definite, all of its eigenvalues must be $1$. Hence, $ vb(P = Q Lambda Q^top = Q I Q^top = Q Q^top = I).#qedhere  $
]

Now we have coupled pivots, eigenvalues, and determinants all positive to be all equivalent to the matrix being positive definite. In fact, they are connected with one more condition. 
#theorem[
  A symmetric matrix is positive definite iff $ vb(x)^top vb(A x) > 0 $ for all $vb(x) in RR^n without (0, 0, dots, 0)^top$. 
]
#proof[
  Since $vb(A)$ is symmetric, assume its eigenvector matrix $vb(S)$ is invertible, then $vb(A)$ could be diagonalized as $ vb(A) = vb(S Lambda S)^(-1) = vb(S Lambda S)^top. $ So, $ vb(x^top A x) = vb(x^top S Lambda S)^top vb(x). $ Let $vb(y) = vb(S^top x)$, then $ vb(x^top A x) = vb(y^top Lambda y) = sum_(lambda_i "is eigenvalue") lambda_i vb(y)_i^2 >=0. $
  Notice equality is achieved when $vb(y) = 0$. Also, $vb(S)^top$ is invertible as $vb(S)$ is invertible, $vb(x) = 0 <==> vb(y) = 0$. So, all $lambda_i>0$ is equivalent to $vb(x^top A x)>0$ for all $vb(x)$. 
]

Here, $vb(x^top A x)$ is a pure quadratic of $n$ variables. Hence, $vb(x^top A x)>0$ for all $vb(x)$ is equivalent to $vb(x) = 0$ being the minima of the function. In fact, $vb(x^top A x)$ represents all pure quadratics of $n$ variables, as the coefficient of each term that is not a variable squared may be split in half to ensure $vb(A)$ is symmetric. 

To determine the form of a quadratic surface in two dimensions when there is a critical point, transform the origin such that the function becomes a quadratic form. Construct $vb(A)$ such that it is symmetric. Then, $vb(A)$ having $2$ positive eigenvalues (positive definite) is equivalent to the function to be an upward parabloid ; $vb(A)$ having $1$ positive and $1$ negative eigenvalue is equivalent to the function being a saddle; $vb(A)$ having two negative eigenvalues implies the function is a downward parabloid. 

#example[
  Find the value of $c$ that makes the $ vb(A) = mat(2, -1, -1; -1, 2, -1; -1, -1; 2+c) $ 
  + positive definite. 
  + positive semi-definite.
]
#solution[
  Directly solving the characteristic equation is unnecessary. Hence, we present three tests involving quantities that connect with eigenvalues, namely determinants, pivots, and quadratic. #text(red)[do this!]
]

=== Complex Vectors and Matrices 

Since this section already discussed Hermitian matrix and the conjugate transpose operation $*$, topics related to complex vectors and matrices are here as well. 

First, to find the norm of a complex vector, $vb(v)^top vb(v)$ does not suffice as it may sometimes be negative, which is not even a valid metric. Thus, for a complex vector $vb(v)$, $ norm(vb(v))^2 = vb(v^* v). $ Similar to how $vb(x^top y)$ is dot product for real vectors, $vb(x^*y)$ is termed as the _complex inner product_. 