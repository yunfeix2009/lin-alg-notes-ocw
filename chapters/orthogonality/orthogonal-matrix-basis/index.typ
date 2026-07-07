#import "../../../lib.typ":*
== Orthogonal Matrices, Orthogonal Basis, and Gram-Schmidt

Often, it is best to have the basis vectors to be normal vectors that are orthogonal to every single other basis vectors. We define this situation with the following. 
#definition[
  A set of vectors ${vb(q)_i} $ are _orthonormal_ iff $ vb(q)_i^top vb(q)_j = cases(1 &"if" i != j, 0 &"if" i = j). $
]

Since many ideas of linear algebra are expressed in terms of matrices, we consider a matrix $vb(Q)$ with columns $vb(q)_i$. Notice, inspired by the frequent appearance of $vb(A)^top vb(A)$ in orthogonality, that $ vb(Q)^top vb(Q) = vb(I). $ 
#definition[
  Define a matrix $vb(Q)$ with columns orthonormal vectors an _orthonormal_ matrix. Furthermore, define a square orthonormal matrix to be an _orthogonal matrix_. 
]
Hence, for an orthogonal matrix $vb(Q)$, $vb(Q)^top = vb(Q)^(-1)$. 

To verify this fact, notice that permutation matrices are orthogonal, and satisfies $vb(Q)^top = vb(Q)^(-1)$. 

Looking back into @emp:adhemar, we see that putting those values into a matrix, we obtain an orthogonal matrix with values, after scaling, $1$'s and $-1$'s.
#definition[
  A Hadamard matrix $vb(H)$ is a $n times n$ matrix such that $vb(H H)^top = n vb(I)$
]
It is known that it exists for $n=1, 2$ and conjectured to exist for every $4 divides n$. 

Now, we explore what's useful regarding orthonormal or orthogonal matrices. 

For one, when taking projections onto the column space of a orthonormal matrix $vb(Q)$, the projection matrix is $ vb(P) = vb(Q) (vb(Q)^top vb(Q))^(-1) vb(Q)^top = vb(Q) vb(Q)^top. $ In the case that $vb(Q)$ is orthogonal, then $vb(P) = vb(I)$. This fact could also be seen from that all of the column vectors are basis of the entire space. 

For the projection equation, $ vb(Q)^top vb(Q) hat(vb(x)) = vb(Q)^top vb(b) $ becomes $hat(vb(x)) = vb(Q)^top vb(b)$

In order to use these properties, a method to convert a set of independent vectors to orthonormal would be convenient. One of such methods is Gram-Schmidt. 

Starting from the simplest problem of turning two independent vectors $vb(a)$ and $vb(b)$ into two orthogonal unit vectors $vb(x)$ and $vb(y)$ in terms of $vb(a)$ and $vb(b)$. 

Hold $vb(a)$ "fixed," let $vb(x) = vb(a)/norm(vb(a))$. Notice that, if $vb(p)$ is the projection of $vb(b)$ onto $vb(a)$, then $vb(x) perp (vb(b) - vb(p))$. Thus, $ vb(y) = (vb(b) - (vb(a)^top vb(b))/(vb(a)^top vb(a)) vb(a))/norm((vb(b) - (vb(a)^top vb(b))/(vb(a)^top vb(a)) vb(a))). $

Now, when adding one more vector $vb(c)$, we aim to obtain the component of it excluding its component in the $vb(x)$ and $vb(y)$ directions. Thus, $ vb(z)= (vb(c) - (vb(a)^top vb(c))/(vb(a)^top vb(a)) vb(a) - (vb(b)^top vb(c))/(vb(b)^top vb(b)) vb(b))/norm(vb(c) - (vb(a)^top vb(c))/(vb(a)^top vb(a)) vb(a) - (vb(b)^top vb(c))/(vb(b)^top vb(b)) vb(b)). $

For more vectors, repeating this recursive process of subtracting off the existing directions' components gives a new orthogonal vector. 

Similar to how elimination could be seen as a matrix factorization of $vb(A = L U)$, Gram-Schmidt could also be seen from the matrix factorization perspective. Specifically, $vb(A = Q R)$. Since $C(vb(A)) = C(vb(Q))$, as they are the basis of the same subspace, a combination of $vb(Q)$ sends it to $vb(A)$, namely $vb(R)$. The specialty about $vb(R)$ is that it is upper triangular, surprisingly similar to the $vb(L U)$ decomposition, as a result of later vectors being orthogonal to the previous ones, making their dot product $0$. For example, when $n = 2$, $ vb(A) := mat(vb(a), vb(b)) = vb(Q R) = mat(vb(q)_1, vb(q)_2) mat(vb(q)_1^top vb(a), vb(q)_2^top vb(b); vb(q)_1^top vb(a), vb(q)_2^top vb(b) ) $