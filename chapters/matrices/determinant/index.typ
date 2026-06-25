#import "../../../lib.typ":*
== Determinants 

#definition[
  For a $2 times 2$ matrix
  $
    bold(A) = mat(
      a, b;
      c, d
    ),
  $
  its *determinant* is defined by
  $
    det bold(A) = a d - b c.
  $
]

#definition[
  For a $3 times 3$ matrix
  $
    bold(A) = mat(
      a_1, a_2, a_3;
      b_1, b_2, b_3;
      c_1, c_2, c_3
    ),
  $
  its *determinant* is defined by
  $
    det bold(A)
    =
    a_1 det mat(
      b_2, b_3;
      c_2, c_3
    )
    - a_2 det mat(
      b_1, b_3;
      c_1, c_3
    )
    + a_3 det mat(
      b_1, b_2;
      c_1, c_2
    ).
  $
]

#definition[
  Let $bold(A)$ be a square matrix. The $(i,j)$-*minor* of $bold(A)$, denoted
  $M_(i j)$, is the determinant of the matrix obtained from $bold(A)$ by deleting
  the $i$th row and the $j$th column.
]

#definition[
  Let $bold(A)$ be a square matrix. The $(i,j)$-*cofactor* of $bold(A)$, denoted
  $C_(i j)$, is defined by
  $
    C_(i j) = (-1)^(i+j) M_(i j).
  $
]

#definition[
  Let $bold(A) = (a_(i j))$ be an $m times n$ matrix. The *transpose* of
  $bold(A)$, denoted $bold(A)^T$, is the $n times m$ matrix whose $(i,j)$-entry
  is
  $
    (bold(A)^T)_(i j) = a_(j i).
  $
]

The determinant measures how a square matrix scales signed area in two dimensions
and signed volume in three dimensions.
