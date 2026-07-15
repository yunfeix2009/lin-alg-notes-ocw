#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Fundamentals of Eigenvalues and Eigenvectors],
  route: "eigenvalue-vector",
  description: [Fundamentals of Eigenvalues and Eigenvectors],
)
#definition[
  Non-zero vector $vb(x)$ is an _eigenvector_ wrt a square matrix $vb(A)$ iff $ vb(A x) = lambda vb(x), $ where $lambda$ is a constant that's termed _eigenvalue_. 
]

Notice that if $vb(A)$ is singular, then by definition, $0$ is an eigenvalue. Hence, all vectors in $N(vb(A))$ are eigenvectors with eigenvalue $0$. 

#example[
  Let $vb(P)$ be a projection matrix. Find its eigenvectors and corresponding eigenvalues. 
]
#solution[
  Firstly, vectors in the subspace projected onto are eigenvectors with eigenvalue $0$. However, those that are orthogonal to the subspace are also eigenvectors (they are in $N(vb(P))$) with eigenvalues $0$. 
]

#lbl(<emp:eigen>, example[
  Find the eigenvectors and eigenvalues of the matrix $ vb(A) = mat(0, 1; 1, 0). $
])
#solution[
  Notice that vectors in form of $mat(x; x)$ are eigenvectors with eigenvalue $1$ and vectors in form of $mat(x; -x)$ are eigenvectors with eigenvalues $-1$. 
]
#definition[
  The _trace_ of a square matrix $vb(A)$ is defined as $ trace vb(A) = sum_(i = 1)^n a_(i i). $
]

From the definition, $vb(A x =) lambda vb(x)$, rewriting gives $ (vb(A) - lambda vb(I) ) vb(x) = 0. $ In other words, $ vb(x) in N(vb(A) - lambda vb(I)). $ Since $vb(x)$ is non-zero, the null space is non-trivial, $vb(A) - lambda vb(I)$ is singular. Thus, $ vb(A x) = lambda vb(x) <==> det (vb(A) - lambda vb(I)) = 0. $
Hence, by the formula for the determinant, this equation results in an $n$-th power polynomial, which by the fundamental theorem of algebra has $n$ complex roots including repeating ones. It is noteworthy, however, that the repeating eigenvalues give rise to repeating eigenvectors. Now we arrive at the following theorem. 
#theorem[
  A square matrix $vb(A) in RR^(n times n)$ has $n$ complex eigenvalues. 
]
The $n$-th degree polynomial $ p(lambda) = det(vb(A) - lambda vb(I)) $ is termed as the _characteristic polynomial_ of the matrix $vb(A)$. By Vieta's Theorem, $ trace vb(A) = sum_"eigenvalues" lambda;quad det vb(A) = product_"eigenvalues" lambda. $

One more realization from the characteristic equation $ det (vb(A) - lambda vb(I)) = 0 $ is that $vb(A)$ and $vb(A)^top$ have the same eigenvalues and eigenvectors. Since $ (vb(A) - lambda vb(I))^top = (vb(A)^top - lambda vb(I)), $ $ det(vb(A) - lambda vb(I))^top = det(vb(A)^top - lambda vb(I)). $ So, $vb(A)$ and $vb(A)^top $ have the same characteristic equation. 

#lbl(<thm:eigentop>, theorem[
  The eigenvalues and eigenvectors of $vb(A)$ and $vb(A)^top$ are the same. 
])

#example[
  Find the eigenvectors and eigenvalues of $ vb(A) = mat(3, 1; 1, 3). $
]
#solution[
  We solve $ det(vb(A) - lambda vb(I)) = 0. $
  $ det(vb(A) - lambda vb(I)) &= det mat(3 - lambda, 1; 1, 3-lambda ) \ &= (3-lambda)^2 - 1 \ &= lambda^2 - 6 + 8 ==> lambda = 2, 4. $

  To find the eigenvectors, we find the basis of the null space of the matrix $vb(A) - lambda vb(I)$. 
  $ det (vb(A) - 2 vb(I)) = det mat(1, 1; 1, 1) = op("span") mat(1; -1); $  $ det(vb(A) - 4 vb(I)) = det mat(-1, 1; 1, -1) = op("span") mat(1; 1); $

  Thus, the eigenvalues are $2$ and $4$ corresponding to eigenvectors multiples of $mat(1; -1)$ and $mat(1; 1)$, respectively. 
]
#remark[
  Notice the matrix from this example problem is $3vb(I) + vb(A)$ from @emp:eigen. The eigenvalues are $3$ more while the eigenvectors did not change. 
]

Notice that no rotation matrix would have a real eigenvalue, by their nature. Thus, they are a significant source of matrices with all eigenvalues complex.

The eigenvalues of a triangular matrix are just its diagonal elements. 

#lbl(<emp:eigen2>, example[
  Fix the invertible matrix $ vb(A) = mat(1, 2, 3; 0, 1, -2; 0, 1, 4). $ Find the eigenvalues and eigenvectors of $vb(A)^2$ and $vb(A)^(-1) - vb(I)$. 
])
#solution[
  From the definition $ vb(A x) = lambda vb(x), $ we have $vb(A)^2 vb(x) = vb(A A x) = vb(A) (lambda vb(x)) = lambda vb(A) vb(x) = lambda^2 vb(x). $ Therefore, the eigenvalues of $vb(A)^2$ are just the square of the eigenvalues of $vb(A)$.

  On the other hand, since $lambda !=0$, which is due to if any eigenvalue is $0$ then $det vb(A) = 0 ==> A$ is singular, $ vb(A)^(-1) vb(x) = vb(A)^(-1) (vb(A x))/lambda = vb(x)/lambda. $ Thus, the new eigenvalue for $vb(A)^(-1) - vb(I) = 1/lambda - 1$. 

  Through direct computation, $lambda = 1, 2, 3$. Therefore, the desired eigenvalues could be found and the eigenvectors are the same.  
]
