#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Singular Value Decomposition],
  route: "svd",
  description: [Singular Value Decomposition],
)
Here, we discuss one factorization of a matrix that is especially useful. Singular value decomposition is a diagonalization in the form of $ vb(A = U Sigma V^top), $ where $vb(A) in CC^(m times n)$ (_ does not have to be a square_) and $vb(U)$ and $vb(V)^top$ are orthogonal and $vb(Lambda)$ is diagonal. 

Hence, in the case where $vb(A)$ is symmetric, due to its diagonalization with eigenvector matrix, $ vb(A = Q Lambda Q^top) $ where $vb(Q)$ is orthogonal, such factorization is a special case of singular value decomposition in the case that $vb(U = V)$. Even more specially, when $vb(A)$ is positive definite, $vb(Lambda)$ is positive. 

However, the general diagonalization with eigenvector matrix is not a singular value decomposition as the eigenvector matrix may not be orthogonal. 

Since for an orthogonal matrix $vb(V)$, $vb(V^top = V)^(-1)$, the svd equation could be manipulated to $ vb(A V =U  Sigma). $
This view opens a new visualization of this factorization. A matrix $vb(A)$ multiplying to an orthogonal basis becomes another stretched orthogonal basis. Any vector of $vb(A)$ is multiplied to an orthogonal basis that becomes a scaled basis vector of another orthogonal basis. In equations, $ vb(A v)_i = sigma_i vb(u)_i, $ resembling equations for eigenvectors and eigenvalues. 

In fact, any square matrices may be decomposed this way, making singular value decomposition an incredibly useful tool. 
To find $vb(V)$ and $vb(U)$ given any $vb(A)$, we convert $vb(A)$ to a symmetric form such that $vb(U)$ or $vb(V)$ becomes its eigenvector matrix. To find $vb(V)$, take $ vb(A^top A &= (U Sigma V^top)^top (U Sigma V^top)) \ &= vb(V Sigma U^top U Sigma V^top) \ &= vb(V) diag(sigma_i^2) vb(V)^top. $ Hence, $vb(Sigma)$ could be found by square rooting the eigenvalues of $vb(A^top A)$ and $vb(V)$ is the eigenvector matrix of $vb(A^top A)$. Also, notice that due to squares, the eigenvalues of $vb(A^top A)$ are non-negative. Therefore, $vb(A^top A)$ is not only symmetric, but positive semi-definite!

To find $vb(U)$ take $ vb(A A^top) &= vb((U Sigma V^top) (U Sigma V^top)^top) \ &= vb(U Sigma V^top V Sigma U^top) \ &= vb(U) diag(sigma_i)^2 vb(U^top). $
Thus, $vb(U)$ is the eigenvector matrix of $vb(A A^top)$.

#example[
  Find the singular value decomposition of $ vb(A)= mat(4, -3; 4, 3). $
]
#solution[
  We first find the eigenvalues and eigenvectors of $vb(A^top A)$. $ vb(A^top A) = mat(4, -3; 4, 3) mat(4, 4; -3, 3)  = mat(25, 7; 7, 25). $ Observe that its eigenvectors are $mat(1; 1)$, $mat(1; -1)$,  corresponding to eigenvalues $32$ and $18$. Thus, $ vb(Lambda) = mat(sqrt(32), 0; 0, sqrt(18)). $ And normalizing to orthonormal gives, $ vb(V) = mat(1/sqrt(2), 1/sqrt(2); 1/sqrt(2), -1/sqrt(2)). $
  To find $vb(U)$, we find the eigenvectors of $vb(A A^top)$. 
  
  $ vb(A A^top) = mat(4, 4; -3, 3) mat(4, -3; 4, 3) = mat(32, 0; 0, 18). $ Symmetric as expected. Since it is diagonal, its eigenvectors are just $mat(1; 0)$ and $mat(0; 1)$. 

  Therefore, $ vb(A)= mat(1, 0; 0, 1) mat(4 sqrt(2), 0; 0, 3 sqrt(2)) mat(1/sqrt(2), 1/sqrt(2); 1/sqrt(2), -1/sqrt(2))^top. #qedhere $
]

As a side note, in the linear algebra lecture (lecture 2) of $18.642$, Topics in Mathematics with Applications in Finance, (when it was taught by Prof. Lee), eigenvalue and eigenvector and singular value decomposition are heavily emphasized. To an extent marking their importance of applied linear algebra. 