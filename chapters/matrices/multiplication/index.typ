#import "../../../lib.typ":* 
== Multiplication
#definition[
  For vectors $vb(u)$, $vb(v)$, $vb(w)$, etc., rewrite its linear combination of $ mat(vb(u), vb(v), vb(w), dots.c) dot mat(a; b; c; dots.v) = a vb(u) + b vb(v) + c vb(w) + dots.c, $ where $ mat(vb(u), vb(v), vb(w), dots.c) $ could be written as $ mat(u_1, v_1, w_1, dots.c; u_2, v_2, w_2, dots.c; dots.v, dots.v, dots.v, dots.down). $
]
In this way, a matrix a row vector of vectors.


In this definition, $ cases(
  2x_1 + 3x_2 + 3x_3 = u_1,
  2x_1 + 4x_2 + 5x_3 = u_2,
  x_1 + x_2 + 2x_3 = u_3,
) $

could be written as

$
  mat(
    2, 3, 3;
    2, 4, 5;
    1, 1, 2
  )
  mat(
    x_1;
    x_2;
    x_3
  )
  =
  mat(
    u_1;
    u_2;
    u_3
  )
$

#definition[
  Let $bold(A) = (a_(i j))$ be an $m times n$ matrix and
  $bold(B) = (b_(i j))$ be an $n times p$ matrix.

  The *matrix product* $bold(A) bold(B)$ is the $m times p$ matrix whose
  $(i,j)$-entry is

  $
    (bold(A) bold(B))_(i j) = sum_(k=1)^n a_(i k)b_(k j).
  $

  Equivalently, the $(i,j)$-entry of $bold(A) bold(B)$ is obtained by taking
  the dot product of the $i$th row of $bold(A)$ with the $j$th column
  of $bold(B)$.

  The product $bold(A) bold(B)$ is defined only when the number of columns of
  $bold(A)$ equals the number of rows of $bold(B)$.
]


Matrix algebra satisfies many properties that makes it a nice algebraic structure.
+ Associative
  #theorem[
    In other words, if $bold(X)$ is a vector and $bold(A)$ and $bold(B)$ are matrices, $ (bold(A B)) bold(X) = bold(A) (bold(B X)). $
  ]

  This theorem could be interpreted with the lens of matrices as transformations. The transformation $bold(A B)$ is equivalent to applying the transformation described by $bold(A)$ first, then transformation described by matrix $bold(A)$.

+ Commutative\
  However, note that $bold(A B) != bold(B A)$, which makes sense after the above theorem. In fact, given $bold(A B)$, $bold(B A)$ is not even necessarily well-defined.

+ Multiplicative Identity\
  There exist an unique identity fixing the height of the matrix being multiplied, with $1$ along the diagonal and $0$ elsewhere.
  Denote it as $bold(X)$, we have $ bold(I X) = bold(X). $

  Multiplicative Inverse
  #definition[For a matrix $bold(A)$, matrix $bold(M)$ is its inverse iff $bold(A M) = bold(M A) = bold(I)$, where $bold(I)$ is the identity matrix. ]<def:matrixInverse>
  Observe that a matrix has an inverse only if it is a square matrix, meaning it has the same number of rows and columns. 
  In fact, a square matrix's left inverse is also its right inverse, and this is a determining property of square matrices.

  If a matrix is invertible when it has an inverse, then a matrix $vb(A)$ is not invertible iff there exists a non-zero vector $vb(x)$ that $vb(A x) = 0$.

  Moreover, $ (vb(A B))^(-1) = vb(B)^(-1) vb(A)^(-1), $ as $ vb(A B B)^(-1) vb(A)^(-1) = vb(A I A)^(-1) = vb(A A)^(-1) = vb(I). $

#example[
  Consider the matrix

  $
    R = mat(
      0, -1;
      1, 0
    ).
  $

  Then

  $
    R mat(x; y)
    =
    mat(
      -y;
      x
    ),
  $

  so $R$ rotates every vector in the plane by $90 degree$
  counterclockwise about the origin.

  In particular,

  $
    R mat(1; 0)
    =
    mat(0; 1),
  $

  and

  $
    R mat(0; 1)
    =
    mat(-1; 0).
  $

  Thus, a system described by $hat(bold(i))$ and $hat(bold(j))$ is mapped to a system of $hat(bold(j))$ and $-hat(bold(j))$. Therefore, $90^degree$ counterclockwise.
]

