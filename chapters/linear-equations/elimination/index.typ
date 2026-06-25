#import "../../../lib.typ":*
== Elimination

Elimination is an efficient and natural way of solving systems of linear equations. 

#example[

Solve the system
$
cases(
  x + 2y + z = 2,
  3x + 8y + z = 12,
  4y + z = 2
)
$
]
#solution[
  In linear algebra, ideas are expressed in matrices. Thus, we rewrite the
  system as
  $
    A = mat(
      1, 2, 1;
      3, 8, 1;
      0, 4, 1
    )
    quad
    b = mat(2; 12; 2).
  $

  The corresponding augmented matrix is obtained by adjoining the solutions
  column to the coefficient matrix, since that column must be manipulated
  together with the coefficient columns.

  Recursively, we eliminate variables by fixing pivots. For convenience, let
  $(m, n)$ denote the entry in the $m$-th row and $n$-th column.

Let the first pivot be

$
p_1 = (1, 1) =  1.
$

Apply

$
R_2 arrow.r R_2 - 3R_1.
$

This gives

$

mat(
  1, 2, 1;
  0, 2, -2;
  0, 4, 1
)
quad
mat(2; 6; 2).
$


The second pivot is

$
p_2 =(2, 2)= 2.
$

Apply

$
R_3 arrow.r R_3 - 2R_2.
$

Then

$

mat(
  1, 2, 1;
  0, 2, -2;
  0, 0, 5
)
quad
mat(2; 6; -10).
$

The resulting upper-triangular matrix is

$
U =
mat(
  1, 2, 1;
  0, 2, -2;
  0, 0, 5
).
$

The pivots are $1, 2, 5$.

With $U$, the triangular system is

$
cases(
  x + 2y + z = 2,
  2y - 2z = 6,
  5z = -10
).
$

From the last equation,

$
z = -2.
$

Substituting into the second equation,

$
2y - 2(-2) = 6
$

gives

$
2y + 4 = 6,
$

so

$
y = 1.
$

Finally,

$
x + 2(1) + (-2) = 2,
$

hence

$
x = 2.
$

Therefore

$
(x, y, z) = (2, 1, -2).
$

Equivalently,

$
x =
mat(
  2;
  1;
  -2
).
$
]
#remark[
  From this example, it is easy to see when the method works and when it
  fails. When we reach a pivot that is $0$, we may proceed only if there is a
  lower row with a non-zero entry in that column, in which case we exchange the
  two rows. If there is no such row, the method fails, and the matrix is
  non-invertible. #text(red)[note to self: add the reference to the inverse of
  a matrix when i finish that section]
]

However, in linear algebra, we also want to represent the row operations
themselves in matrix form. Since we are manipulating rows, the natural object is
an elementary matrix multiplying the main matrix on the left.

For example,

$
E_(21)
=
mat(
  1, 0, 0;
  -3, 1, 0;
  0, 0, 1
)
$

encodes the operation $R_2 arrow.r R_2 - 3R_1$, and

$ 
E_(32)
=
mat(
  1, 0, 0;
  0, 1, 0;
  0, -2, 1
)
$

encodes the operation $R_3 arrow.r R_3 - 2R_2$.

Therefore, the elimination steps may be written as

$
E_(32) E_(21) A = U.
$

Because matrix multiplication is associative, we may group the operations into a
single matrix

$
E = E_(32) E_(21),
$

so that

$
E A = U.
$



#pagebreak()
#example[



Let

$
A = mat(
  1, 2, 3;
  4, 5, 6;
  7, 8, 9
)
$

and let

$
r = mat(1, 2, 7).
$

Then

$
r A
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
 r A
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
r A
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

Direct multiplication gives the same result:

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
  Similar to the column picture, the row picture for multiplication is when a row matrix is multiplied with a matrix, producing a linear combination of the rows of that matrix.
]


From the two examples, we see that elementary matrices act differently depending on which side they multiply a matrix. Left multiplication performs row operations, while right multiplication performs column operations. If $E$ is an elementary matrix, then $E A$ applies a row operation to $A$, whereas $A E$ applies a column operation to $A$.



In summary, elimination takes the following steps
+  Elimination goes from $vb(A)$ to a triangular $vb(U)$ by a sequence of matrix steps $E_(i j)$.
+ The inverse matrices $E_(i j)^(-1)$ in reverse order bring $vb(U)$ back to the original $vb(A)$.
+ In matrix language that reverse order is $A = L U =$ (lower triangle) (upper triangle).
+ Elimination succeeds if $vb(A)$ is invertible. (It may need row exchanges.).