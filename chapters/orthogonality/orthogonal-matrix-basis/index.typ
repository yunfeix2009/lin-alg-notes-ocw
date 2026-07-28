#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Orthogonal Matrices, Orthogonal Basis, and Gram-Schmidt],
  route: "orthogonal-matrix-basis",
  description: [Orthogonal Matrices, Orthogonal Basis, and Gram-Schmidt],
  label: <sec:gram>,
)
Often, it is best to have the basis vectors to be normal vectors that are orthogonal to every single other basis vectors. We define this situation with the following.
#definition[
  A set of vectors ${vb(q)_i}$ are _orthonormal_ iff $ vb(q)_i^top vb(q)_j = cases(1 &"if" i != j, 0 &"if" i = j). $
]

Since many ideas of linear algebra are expressed in terms of matrices, we consider a matrix $vb(Q)$ with columns $vb(q)_i$. Notice, inspired by the frequent appearance of $vb(A)^top vb(A)$ in orthogonality, that $ vb(Q)^top vb(Q) = vb(I). $
#definition[
  Define a matrix $vb(Q)$ with columns orthonormal vectors an _orthonormal_ matrix. Furthermore, define a square orthonormal matrix to be an _orthogonal matrix_.
]
Hence, for an orthogonal matrix $vb(Q)$, $vb(Q)^top = vb(Q)^(-1)$.

To verify this fact, notice that permutation matrices are orthogonal, and satisfy $vb(Q)^top = vb(Q)^(-1)$.

Looking back into @emp:adhemar, we see that putting those values into a matrix, we obtain an orthogonal matrix with values, after scaling, $1$'s and $-1$'s.
#definition[
  A Hadamard matrix $vb(H)$ is a $n times n$ matrix such that $vb(H H)^top = n vb(I)$
]
It is known that to exists for $n=1, 2$ and conjectured to exist for every $4 divides n$.

Now, we explore what's useful regarding orthonormal or orthogonal matrices.

For one, when taking projections onto the column space of a orthonormal matrix $vb(Q)$, the projection matrix is $ vb(P) = vb(Q) (vb(Q)^top vb(Q))^(-1) vb(Q)^top = vb(Q) vb(Q)^top. $ In the case that $vb(Q)$ is orthogonal, then $vb(P) = vb(I)$. This fact could also be seen from that all of the column vectors are basis of the entire space.

For the projection equation, $ vb(Q)^top vb(Q) hat(vb(x)) = vb(Q)^top vb(b) $ becomes $hat(vb(x)) = vb(Q)^top vb(b)$

In order to use these properties, a method to convert a set of independent vectors to orthonormal would be convenient. One of such methods is Gram-Schmidt.

Starting from the simplest problem of turning two independent vectors $vb(a)$ and $vb(b)$ into two orthogonal unit vectors $vb(x)$ and $vb(y)$ in terms of $vb(a)$ and $vb(b)$.

Hold $vb(a)$ "fixed," let $vb(x) = vb(a)/norm(vb(a))$. Notice that, if $vb(p)$ is the projection of $vb(b)$ onto $vb(a)$, then $vb(x) perp (vb(b) - vb(p))$. Thus, $ vb(y) = (vb(b) - (vb(a)^top vb(b))/(vb(a)^top vb(a)) vb(a))/norm((vb(b) - (vb(a)^top vb(b))/(vb(a)^top vb(a)) vb(a))). $

Now, when adding one more vector $vb(c)$, we aim to obtain the component of it excluding its component in the $vb(x)$ and $vb(y)$ directions. Thus, $ vb(z)= (vb(c) - (vb(a)^top vb(c))/(vb(a)^top vb(a)) vb(a) - (vb(b)^top vb(c))/(vb(b)^top vb(b)) vb(b))/norm(vb(c) - (vb(a)^top vb(c))/(vb(a)^top vb(a)) vb(a) - (vb(b)^top vb(c))/(vb(b)^top vb(b)) vb(b)). $

For more vectors, repeating this recursive process of subtracting off the existing directions' components gives a new orthogonal vector.

Similar to how elimination could be seen as a matrix factorization of $vb(A = L U)$, Gram-Schmidt could also be seen from the matrix factorization perspective. Specifically, $vb(A = Q R)$. Since $C(vb(A)) = C(vb(Q))$, as they are the basis of the same subspace, a combination of $vb(Q)$ sends it to $vb(A)$, namely $vb(R)$. The specialty about $vb(R)$ is that it is upper triangular, surprisingly similar to the $vb(L U)$ decomposition, as a result of later vectors being orthogonal to the previous ones, making their dot product $0$. For example, when $n = 2$, $ vb(A) := mat(vb(a), vb(b)) = vb(Q R) = mat(vb(q)_1, vb(q)_2) mat(vb(q)_1^top vb(a), vb(q)_1^top vb(b); vb(q)_2^top vb(a), vb(q)_2^top vb(b)) $

$------------------------------------------$
The general form of the $vb(Q R)$ representation is as the following theorem.
#lbl(<thm:qr>, theorem[
  Given matrix $vb(A)$, it could be factorized into $vb(Q R)$ where $ vb(Q):= mat(vb(q)_1, vb(q)_2, vb(q)_3, dots, vb(q)_n) $ is an orthonormal matrix and
  $
    vb(R) := mat(
      bold(q)_1^T bold(a)_1, bold(q)_1^T bold(a)_2, bold(q)_1^T bold(a)_3, dots.c, bold(q)_1^T bold(a)_n;
      bold(q)_2^T bold(a)_1, bold(q)_2^T bold(a)_2, bold(q)_2^T bold(a)_3, dots.c, bold(q)_2^T bold(a)_n;
      bold(q)_3^T bold(a)_1, bold(q)_3^T bold(a)_2, bold(q)_3^T bold(a)_3, dots.c, bold(q)_3^T bold(a)_n;
      dots.v, dots.v, dots.v, dots.down, dots.v;
      bold(q)_n^T bold(a)_1, bold(q)_n^T bold(a)_2, bold(q)_n^T bold(a)_3, dots.c, bold(q)_n^T bold(a)_n
    ).
  $
])


#proof[

]

#lbl(<thm:r>, theorem[
  The matrix $vb(R)$ from @thm:qr is upper triangular, in other words,   $ R = mat(
    bold(q)_1^T bold(a)_1, bold(q)_1^T bold(a)_2, bold(q)_1^T bold(a)_3, dots.c, bold(q)_1^T bold(a)_n;
    bold(q)_2^T bold(a)_1, bold(q)_2^T bold(a)_2, bold(q)_2^T bold(a)_3, dots.c, bold(q)_2^T bold(a)_n;
    bold(q)_3^T bold(a)_1, bold(q)_3^T bold(a)_2, bold(q)_3^T bold(a)_3, dots.c, bold(q)_3^T bold(a)_n;
    dots.v, dots.v, dots.v, dots.down, dots.v;
    bold(q)_n^T bold(a)_1, bold(q)_n^T bold(a)_2, bold(q)_n^T bold(a)_3, dots.c, bold(q)_n^T bold(a)_n
  ). $
])
#proof[

]

#lbl(<thm:q>, theorem[
  $vb(A)$ is invertible iff all vectors in $vb(Q)$ of its $vb(Q R)$ decomposition are non-zero.
])
#proof[
  Let the dimensions        of $vb(A)$ be  $n times n$ , $ vb(A) "is invertible" & <==> dim C(vb(A)) = n. $
]
$------------------------------------------$

// To make the explanation below easier, I sometimes ignore the normalizing part, or the scalar multiplication. When I say some projection capture the whole of a vector, I mean that the direction of the vector is covered, ignoring that $q$ is a normal vector and need to be multiplied by some scalar to get to the exact vector.

// The word "capture" is an intuitive way of describing how a vector is decomposed into projections onto different orthonormal vectors. If a vector $vb(v)=vb(p)_1+vb(p)_2+vb(p)_3$, this means that $vb(p)_1$ "captures" tha part of $vb(v)$ that is along the direction of $vb(p)_1$, $vb(p)_2$ "captures" the part of $vb(v)$ that is along the direction of $vb(p)_2$, and $vb(p)_3$ "captures" the direction along $vb(p)_3$. An easy example is the 2D coordinate system, every vector in it can be expressed as:

// $ vb(v)=mat(x; y)=x mat(1; 0) + y mat(0; 1) $

// $mat(1; 0)$ and $mat(0; 1)$ are the two directions that "capture" $vb(v)$.

// I'll put the generalization here, but explanation will start with the two by two matrix.
// $
//   mat(vb(a)_1, vb(a)_2, dots, vb(a)_n) = mat(vb(q)_1, vb(q)_2, dots, vb(q)_n) mat(
//     vb(q)_1^top vb(a)_1, vb(q)_1^top vb(a)_2, vb(q)_1^top vb(a)_3, dots, vb(q)_1^top vb(a)_n; , vb(q)_2^top vb(a)_2, vb(q)_2^top vb(a)_3, dots, vb(q)_2^top vb(a)_n; , , vb(q)_3^top vb(a)_3, dots, vb(q)_3^top vb(a)_n; ; , , , dots.v; ; , , , vb(q)_(n-1)^top vb(a)_(n-1), vb(q)_(n-1)^top vb(a)_n;
//     , , , , vb(q)_n^top vb(a)_n
//   )
// $

// What is in $vb(R)$? Let's multiply it out. $vb(b)=vb(q)_1(vb(q)_1^top vb(b))+vb(q)_2(vb(q)_2^top vb(b))$, where $vb(q)_1^top vb(b)$ is a scalar, multiplied to $vb(q)_1$. I claim that this is the projection of $vb(b)$ onto $vb(q)_1$. The formula for projection is $vb(p)=(vb(q)_1^top vb(b))/ (vb(q)_1^top vb(q)_1) vb(q)_1$. Since $vb(q)_1$ is a normal vector, $vb(q)_1^top vb(q)_1=1$, so the projection is just $(vb(q)_1^top vb(b)) vb(q)_1$. So $vb(R)$ stores the scalars of each vector's projection onto the $vb(q)$'s.

// The matrix $vb(R)$ doesn't seem to be upper triangular in the two by two example, but according to the way Gram-Schmidt transformation works, $vb(q)_1$ captures the whole of $a_1$, and $vb(q)_2$ is orthogonal to $vb(q)_1$, so the projection of $a_1$ onto $vb(q)_2$ should be zero. The element on the bottom left is zero.

// Generalizing to $n$ vectors, the above still works. Column $j$ of $vb(R)$ contains $vb(a)_j$, and row $i$ of $vb(R)$ contains $vb(q)_i$. I wrote the matrix $vb(R)$ in upper triangular form this time, but you should still know why the terms $vb(R)_(i j)$ where $i>j$ are always zero. Vector $vb(a)_i$ is captured by $vb(q)_1$ to $vb(q)_i$. Formally,

// $ vb(a)_i=(vb(q)_1^top vb(a)_i) vb(q)_1 + (vb(q)_2^top vb(a_i)) vb(q)_2+ dots + (vb(q)_i^top vb(a_i)) vb(q)_i $

// Since $vb(q)_i$ is produced by subtracting the previous directions from the current vector $vb(a)_i$, it is orthogonal to all the previous directions, and captures everything left in $vb(a)_i$ that is not captured by the previous $vb(q)$'s. For $vb(q)_i$ where $i>j$, they capture nothing from $vb(a)_j$ since there's nothing left, making $vb(R)$ upper triangular. Using math, I meant that when $i>j$,

// $ (vb(q)_i^top vb(a)_j)vb(q)_i = vb(0). $

A practical application of the $vb(Q R)$ decomposition and Gram-Schmidt is in solving least squares equation @eqn:lsa.

Substitute $vb(A)$ with $vb(Q R)$, @eqn:lsa becomes

$ vb(R)^top vb(Q)^top vb(Q) vb(R) hat(vb(x))=vb(R)^top vb(Q)^top vb(b). $

Since $vb(Q)^top vb(Q)=vb(I)$,


$ vb(R)^top vb(R) hat(vb(x)) = vb(R)^top vb(Q)^top vb(b). $

In the case where $vb(R)$ has full column rank, meaning $vb(R^top)$ is invertible. Multiply both sides by $(vb(R)^top)^(-1)$ gives

$ vb(R) hat(vb(x))= vb(Q)^top vb(b). $

Because $vb(R)$ is upper triangular, $hat(vb(x))$ may be solved with relatively low complexity using back substitution. However, it should still be noted that such algorithmic optimization relies on pre-computed $vb(Q R)$ with Gram-Schmidt, whose complexity must be factored into the analysis.

Hence, the complexity of such computation is $O(m n^2)$, which is the same as Gaussian elimination.
