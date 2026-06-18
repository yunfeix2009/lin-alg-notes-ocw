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
  In linear algebra, ideas are expressed in matrices. Thus, we represent the problem in matrices.   $ mat(
    1, 2, 1;
    3, 8, 1;
    0, 4, 1
  )
  
  mat(2; 12; 2). $

Recursively, we eliminate variables by fixing pivots. 
For convenience, let $(m, n)$ of a matrix be the element in its m-th row and n-th column. 

Let the first pivot be

$
p_1 = (1, 1) =  1.
$

Apply

$
R_2 <- R_2 - 3R_1.
$

This gives

$

  mat(
    1, 2, 1;
    0, 2, -2;
    0, 4, 1
  )

  mat(2; 6; 2)
.
$


The second pivot is

$
p_2 =(2, 2)= 2.
$

Apply

$
R_3 <- R_3 - 2R_2.
$

Then

$

  mat(
    1, 2, 1;
    0, 2, -2;
    0, 0, 5
  )
  
  mat(2; 6; -10)
.
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

With $U$
The triangular system is

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
(x,y,z) = (2,1,-2).
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
  From this example, easy to see when the method works and when it fails. When we reach a pivot that is $0$, we may only proceed if there is a lower row with a non-zero element in that column, then we exchange the two; however, if there is no such row to exchange with, this method fails, and the matrix is non-invertible. #text(red)[note to self: add the reference to the inverse of a matrix when i finish that section]
]