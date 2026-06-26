#import "../../../lib.typ":*
== Elimination

Elimination is an efficient and natural way of solving systems of linear equations. At least as of 2005, when the lecture was recorded, it was the main method in solving linear systems in software packages. It is a natural idea, though it will be expressed in terms of matrices here. 

#example[

Solve the system
$
cases(
  x + 2y + z = 2,
  3x + 8y + z = 12,
  4y + z = 2
).
$
]
#solution[

  In linear algebra, ideas are expressed in matrices. Thus, we rewrite the
  system. Let
  $
    vb(A) := mat(
      1, 2, 1;
      3, 8, 1;
      0, 4, 1
    )
    , quad vb(x):= mat(x; y; z),quad
    vb(b) := mat(2; 12; 2),
  $
  we solve $ vb(A x) = vb(b). $
  First, notice that when we reach a triangular matrix, meaning that once we have $vb(A)_(i j) = 0$ for all $i<j$ or $j<i$ (upper triangular and lower triangular), the system is solvable with back substitution. Let $vb(U)$ be an upper triangular matrix, we aim to losslessly rewrite $vb(A x = b)$ to $vb(U x = b')$. 

  Since $vb(b)$ must be manipulated along $vb(A)$ in all the elimination operations, "attach" them together into one _augmented matrix_ that is $mat(vb(A), vb(b))$, $ mat(
      1, 2, 1;
      3, 8, 1;
      0, 4, 1
    )  mat(2; 12; 2). $ 


  Recursively, we eliminate variables by fixing pivots, and manipulate all elements in the coefficient matrix beneath the pivot to be $0$, to achieve a triangular matrix. 

Let the first pivot be

$
p_1 := vb(A)_(1 1) =  1.
$

By multiplying the first row with an appropriate multiplier and subtract it from later rows, the new matrix after these operations will have $0$ in the first column besides the pivot. However, in the case where the pivot is $0$, if any later row have an element in that position non-zero, the two rows may be exchanged and the process continued. 

Apply

$
R_2 -> R_2 - 3R_1
$

on the augmented matrix, resulting in 

$

mat(
  1, 2, 1;
  0, 2, -2;
  0, 4, 1
)
 
mat(2; 6; 2).
$
Since $vb(A)_(3 1) = 0$ already, the job of the first pivot is already achieved. 
Here, the problem is reduced to "triangularize"  the $i>=1 and j >=1$ portion of $vb(A)$, and the problem may be solved recursively. 
Let the second pivot is

$
p_2 :=(2, 2)= 2.
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

Now all that's left to do in this problem is back substitution. 

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
  non-invertible, as defined in @def:inverse.

  Furthermore, later in determinants, the product of the pivots is the determinant of this matrix, in this example, it is $1 dot 2 dot 5 = 10$. #text(red)[add reference to determinant section]
]

However, in linear algebra, we also want to represent the row operations
themselves in matrix form. Since we are manipulating rows, the natural object is
a matrix multiplied on the left of the augmented matrix that encodes the elimination operation. 

For example, the first elimination step could be represented as 

$
vb(E)_(21)
=
mat(
  1, 0, 0;
  -3, 1, 0;
  0, 0, 1
)
$

which acts as the operation the operation $R_2 arrow.r R_2 - 3R_1$, and

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
vb(E)E_(32) vb(E)_(21) vb(A = U).
$

Because matrix multiplication is associative, we may group the operations into a
single matrix

$
vb(E = E)_(32) vb(E)_(21),
$

so that

$
vb(E A = U).
$
Though not necessary in the example above, sometimes row exchanges are needed, for which $vb(E)$ will have to include a permutation matrix, see @def:permutation. 


In summary, elimination takes the following steps
+  Elimination goes from $vb(A)$ to a triangular $vb(U)$ by a sequence of matrix steps $vb(E)_(i j)$.
+ The inverse matrices $vb(E)_(i j)^(-1)$ in reverse order bring $vb(U)$ back to the original $vb(A)$.
+ In matrix language that reverse order is $vb(A = L U) =$ (lower triangle) (upper triangle).
+ Elimination succeeds if $vb(A)$ is invertible. (It may need row exchanges.).