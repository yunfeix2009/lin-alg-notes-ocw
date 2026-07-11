#import "../../../lib.typ":*
== Determinant Formula and Cofactors

From the three defining properties of determinants, we showed, in the last section, Properties of Determinants, that the determinant of a matrix is well-defined, and numerous ways of finding it for some special matrices. Here, we provide a formula of computing it generally. 

We start from $n=2$. $ det mat(a, b; c, d) &= det mat(a, 0; c, d) + det mat(0, b; c, d) 
\ &= det mat(a, 0; 0, d) + det mat(a, 0; c, 0) \ & quad+ det mat(0, b; 0, d) + det mat(0, b; c, 0)
\ &= det mat(a, 0; 0, d) - det mat(c, 0; 0, b) 
\ &= a d - b c. $

Similarly, for $n=3$, by exploiting the linearity by rows, the matrix could be split into several matrices containing $0$'s besides three places. In fact, there are $27$ smaller matrices, each matrix have a row containing exactly one non-zero element. However, matrices with a column containing all $0$'s have $0$ determinant. Thus, the only $6$ possibly non-zero determinant matrices are as following. 

// $ det mat(a_11, a_12, a_13; a_21, a_22, a_23; a_31, a_32, a_33) &= det mat(a_11, 0, 0; 0, a_22, 0; 0, 0, a_33) + det mat(a_11, 0, 0; 0, 0, a_23; a_0, ) $
$
det mat(
  a_11, a_12, a_13;
  a_21, a_22, a_23;
  a_31, a_32, a_33
)
&=
det mat(
  a_11, 0, 0;
  0, a_22, 0;
  0, 0, a_33
)
+
det mat(
  a_11, 0, 0;
  0, 0, a_23;
  0, a_32, 0
)\
& quad+
det mat(
  0, a_12, 0;
  a_21, 0, 0;
  0, 0, a_33
)
+
det mat(
  0, a_12, 0;
  0, 0, a_23;
  a_31, 0, 0
)
\ & quad quad+
det mat(
  0, 0, a_13;
  a_21, 0, 0;
  0, a_32, 0
)
+
det mat(
  0, 0, a_13;
  0, a_22, 0;
  a_31, 0, 0
)
$

$
= a_11 a_22 a_33
  - a_11 a_23 a_32
  - a_12 a_21 a_33
  + a_12 a_23 a_31
  + a_13 a_21 a_32
  - a_13 a_22 a_31
$


Now, we aim to generalize the formula to $n times n$. Notice that it will be the sum of $n!$ terms, as the element in the first row may be chosen in $n$ ways, the element in the i-th row $n-i + 1$ ways. 

$ det vb(A) = sum_(sigma in S_n) (sgn(sigma) product_(i=1)^n a_(i, sigma(i))), $ where $S_n$ is the set of all permutations of the columns of $vb(A)$ and $ sgn(sigma) = cases(1 &"if" sigma "is even", -1 &"if" sigma "is odd" )thin thin.  $

Now, we introduce the concept of cofactors, which helps to reduce the determinant of an $n times n$ to $(n-1) times (n-1)$ matrix. 

Recall the formula from PreCalc,

$
det mat(
  a_11, a_12, a_13;
  a_21, a_22, a_23;
  a_31, a_32, a_33
)
&=
a_11 det mat(
  a_22, a_23;
  a_32, a_33
)
\ & quad - a_12 det mat(
  a_21, a_23;
  a_31, a_33
)
+ a_13 det mat(
  a_21, a_22;
  a_31, a_32
).
$
This formula could be readily generalized to $n times n$. 
#definition[
  *Minor.* Let $A in RR^(n times n)$. The _minor_ $M_(i j)$ of the entry $a_(i j)$ is the determinant of the $(n - 1) times (n - 1)$ matrix obtained by deleting the $i$-th row and the $j$-th column of $A$.
]

#definition[
  *Cofactor.* The _cofactor_ corresponding to the entry $a_(i j)$ is

  $ C_(i j) = (-1)^(i + j) M_(i j), $

  where $M_(i j)$ is the minor of $a_(i j)$. Equivalently,

  $ C_(i j) = (-1)^(i + j) det(A_(i j)), $

  where $A_(i j)$ denotes the matrix obtained from $A$ by deleting its $i$-th row and $j$-th column.
]

Then, the cofactor expansion (Laplace expansion) of the "big formula" of the determinant is $ det(vb(A)) = sum_(i=1)^n a_(i j) C_(i j). $<eqn:cofactorexpansion>

#example[
  // #set math.mat(delim: "[")
Find the determinants of the following matrices. 
$ A =
mat(
  x, y, 0, 0, 0;
  0, x, y, 0, 0;
  0, 0, x, y, 0;
  0, 0, 0, x, y;
  y, 0, 0, 0, x
)
$

$ B =
mat(
  x, y, y, y, y;
  y, x, y, y, y;
  y, y, x, y, y;
  y, y, y, x, y;
  y, y, y, y, x
)
$
]

#solution[
  From the cofactors lens, in the first column, we either select $a_11 = x$ or $a_51 = y$. Thus, $ det(vb(A)) = x dot (-1)^(1+1) C_11 + y dot (-1)^(5 + 1) C_51. $
  Since $C_11$ is the determinant of an upper triangular matrix and $C_51$ is the determinant of a lower triangular matrix, $ det(vb(A)) = x^5 + y^5. $

  For $vb(B)$, since we want a lot of $0$'s and the abundance of $y$ make obtaining $0$'s look easy, we perform elimination. 
  $ R_n |-> R_n - R_(n-1), 2<=n<=5:\ mat(x, y, y, y, y; y-x, x-y, 0, 0, 0; 0, y-x, x-y, 0, 0; 0, 0, y-x, x-y, 0; 0, 0, 0, y-x, x-y). $

  $ C_4 |-> C_4 + C_5: \ mat(x, y, y, 2y, y; y-x, x-y, 0, 0, 0; 0, y-x, x-y, 0, 0; 0, 0, y-x, x-y, 0; 0, 0, 0, 0, x-y). $
  $ C_3 |-> C_3 + C_4: \ mat(x, y, 3y, 2y, y; y-x, x-y, 0, 0, 0; 0, y-x, x-y, 0, 0; 0, 0, 0, x-y, 0; 0, 0, 0, 0, x-y). $
  $ C_2 |-> C_2 + C_3: \ mat(x, 4y, 3y, 2y, y; y-x, x-y, 0, 0, 0; 0, 0, x-y, 0, 0; 0, 0, 0, x-y, 0; 0, 0, 0, 0, x-y). $
  $ C_1 |-> C_1 + C_2: \ mat(x+4y, 4y, 3y, 2y, y; 0, x-y, 0, 0, 0; 0, 0, x-y, 0, 0; 0, 0, 0, x-y, 0; 0, 0, 0, 0, x-y). $

  Finally, $ det mat(x+4y, 4y, 3y, 2y, y; 0, x-y, 0, 0, 0; 0, 0, x-y, 0, 0; 0, 0, 0, x-y, 0; 0, 0, 0, 0, x-y) = (x+4y)(x-y)^4.#qedhere $
]