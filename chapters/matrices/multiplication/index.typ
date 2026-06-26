#import "../../../lib.typ":* 
== Multiplication
Multiplication is arguably the most important and consequential operation on matrices, and stand as the backbone of many aspects of linear algebra. In this section, the definition along with a few useful visualizations in terms of vectors will be presented. 
#definition[
  For vectors $vb(u)$, $vb(v)$, $vb(w)$, etc., rewrite its linear combination of $ mat(vb(u), vb(v), vb(w), dots.c) dot mat(a; b; c; dots.v) = a vb(u) + b vb(v) + c vb(w) + dots.c, $ where $ mat(vb(u), vb(v), vb(w), dots.c) $ could be written as $ mat(u_1, v_1, w_1, dots.c; u_2, v_2, w_2, dots.c; dots.v, dots.v, dots.v, dots.down). $
]
In this way, a matrix a row vector of (column) vectors.


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

Now, the formal, entry based definition could be established, although this definition is relatively less intuitive to several later interpretations of this same operation. 
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

Aside from the definition, there are several other helpful ways to interpret matrix multiplication. 

First, the "row picture" and "column picture", consider the case where a matrix is multiplied with a vector. 
 === Row Picture 
 
Consider the special case where the left matrix is a row vector, due to dimensions, the product would also be a row vector, that could be seen as a combination of the right matrix by the left row vector. When the left matrix is not a row vector, the product is the stack of the individual products. 
#example[



Let

$
vb(A) = mat(
  1, 2, 3;
  4, 5, 6;
  7, 8, 9
)
$

and let

$
vb(r) = mat(1, 2, 7).
$

Then

$
vb(r A)
=
mat(1, 2, 7)
mat(
  1, 2, 3;
  4, 5, 6;
  7, 8, 9
).
$]
#solution[
According to the row-combination rule,

$
vb( r A)
=
1 dot
mat(1, 2, 3)
+
2 dot
mat(4, 5, 6)
+
7 dot
mat(7, 8, 9).
$

Computing the linear combination,

$
vb(r A)
=
mat(
  1 + 8 + 49,
  2 + 10 + 56,
  3 + 12 + 63
)
=
mat(
  58, 68, 78
).
$

One may verify that direct multiplication with the entry-based definition gives the same result:

$
mat(1, 2, 7)
mat(
  1, 2, 3;
  4, 5, 6;
  7, 8, 9
)
=
mat(
  58, 68, 78
).
$]

#remark[
The row vector, in the "row picture" is seen as acting on the matrix. 
]


=== Column Picture

When a matrix is multiplied with a column vector on the right, the product becomes a combination of the matrix's columns, by the column vector. 

#example[
  Compute the product of the following matrix and vector $ mat(2, 5; 1, 3) mat(1; 2). $
]
#solution[
  Usually, this is done through the dot product of every row in the matrix and the vector; however, the "column" way takes each column in the matrix as a vector and the product is the summation of the i-th column and the i-th component of the vector. 
  $ mat(2, 5; 1, 3) mat(1; 2) = 1 mat(2; 1) + 2 mat(5; 3) = mat(12; 7). $
]
#remark[
  Thus, the product of a matrix and a vector, $vb(A x)$ is a linear combination of the columns of $vb(A)$. 
]



More generally, fix matrices $vb(A), vb(B), "and" vb(C)$,

$
vb(C = A B),
$

then each column of $vb(C)$ is a linear combination of the columns of $vb(A)$, with coefficients taken from the corresponding column of $vb(B)$. Likewise, each row of $vb(C)$ is a linear combination of the rows of $vb(B)$, with coefficients taken from the corresponding row of $vb(A)$.

=== Sum of Outer Products

Matrix multiplication can also be viewed from a third perspective. Writing the columns of $vb(A)$ as $vb(a)_1, dots.c, vb(a)_n$ and the rows of $B$ as $vb(b)_1^top, dots.c, vb(b)_n^top$, we have

$
vb(A B) = vb(a)_1 vb(b)_1^top + vb(a)_2 vb(b)_2^top + dots.c + vb(a)_n vb(b)_n^top.
$

Thus, the product is a sum of outer products of columns of $vb(A)$ and rows of $vb(B)$. (See @def:vectorProduct for the definition of outer product).

=== Block

Finally, these viewpoints extend naturally to block matrices. If a matrix is partitioned into blocks of compatible sizes, each block may be treated as a single entry, and the usual rules of matrix multiplication remain valid. This allows complicated matrix products to be analyzed and computed using larger building blocks rather than individual entries.

=== Properties

Matrix algebra satisfies many properties (for details, see @def:goodAddMulti) that makes it a nice algebraic structure.
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

Since a matrix multiplying a vector is like the matrix acting on the vector, matrices may also be interpreted as (linear) transformations of vectors, or set of vectors. 
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
