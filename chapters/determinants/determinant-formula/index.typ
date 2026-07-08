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