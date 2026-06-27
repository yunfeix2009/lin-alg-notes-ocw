#import "../../../lib.typ":*
== $vb(L U) $ Decomposition 

From elimination, we have a means to transform an invertible matrix $vb(A)$, to an upper triangle matrix $vb(U)$. By combining all the elimination steps into $vb(E)$, we reached the equation $ vb(E A = U). $ Since every single elimination step is invertible, and by the inverse rule$ (product_(i=1)^n vb(A)_n)^(-1) = product_(i=n)^1 vb(A)_n^(-1), $ $vb(E)$ is invertible. Let $ vb(L) := vb(E)^(-1)$, $ vb(A = L U). $

#theorem[
    $vb(L)$, the inverse of the elimination matrix $vb(E)$ is lower triangular, meaning $ forall j<i, vb(E)_(i j) = 0.  $
]
#proof[
    (Assume no row exchanges for now)
    We first show that $vb(e)$ is lower triangular. Examine each elementary elimination matrix, those that turns one element of the coefficient matrix into $0$, they are $vb(I)$ with the change of one element in the lower triangle, as elimination is a downward only process, later rows depending on the rows before. Thus, an elementary elimination matrix that turns $vb(A)_(i j)$ into zero, $vb(E)_(i j)$ could be written as $vb(I) - e_(i j)$, where $e_(i j)$ is a square matrix with $0$ everywhere besides the $(i j)$ position. 

    Notice $ vb(E)_(i j)^(-1) = vb(I) + e_(i J), $ as $ (vb(I) + e_(i j))(vb(I) - e_(i j)) = vb(I)^2 - e_(i j)^2 = vb(I). $
    Since $ vb(L) = vb(E)^(-1) = product_"reverse" vb(E)_(i j)^(-1), $ all that's left to show is that the product of lower triangle matrices is lower triangle. 

    From the column picture, the $i$-th column of the product is a combination of the left lower triangular matrix with the first $i-1$ columns having the coefficient $0$, due to the first $i-1$ elements in the $i$-th vector of the right lower triangular matrix being $0$. 
]

From this result, any invertible matrix could be factorized into the product of a lower triangular matrix and an upper triangular matrix, known as the $vb(L U)$ decomposition. 