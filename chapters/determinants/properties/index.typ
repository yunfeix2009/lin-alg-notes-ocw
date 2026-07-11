#import "../../../lib.typ":*
== Properties of Determinants 
Similar to the rank and the dimensions of a matrix, the determinant is a number associated to a (square) matrix that captures some information about it. With knowledge about properties about this association, a lot may be inferred about the matrix given its determinant. 

+ To scale the determinant, that of an identity matrix is taken to be $1$. 
+ Exchanging the two rows of a matrix reverses its determinant \
   Combining with property $1$, any permutation matrix has determinant $-1$ or $1$, and is well defined by considering the variant of number of inversion pairs. 
+ This key property of determinants shows that it is "linear" row by row. Formally, $ det vb(A) = det mat(a r_11 + b r_12; r_2; dots.v) = a det mat(r_11; r_2; dots.v) + b det mat(r_12; r_2; dots.v). $ However, this does not imply $det (vb(A) + vb(B)) = det vb(A) + det vb(B)$. 

The following properties are implied by the above $3$. 
+ Any matrix with two identical rows must have determinant $0$.
  From base property $2$, for the determinant to be well-defined, this is necessary. 
+ Subtracting $k dot r_i$ from $r_j$ does not change the determinant. 
  This operation could be seen as an exchange of $r_j$ and $r_1$, reversing the determinant, adding $k $ times the exchanged matrix but with the first row $r_i$ instead, which is $0$ from the first implied property, then exchanging $r'_1$ and $r_i$. 
+ A matrix with one row of $0$'s have determinant $0$
  Exchanging the all $0$ row to the first row, then multiplying the first row with arbitrary scalar results in the same matrix, but the "new" matrix's determinant must be that scalar times the previous determinant. Thus, the determinant must be $0$. 

+ The determinant of a triangular matrix is (possibly negative) the product of its diagonal elements.
  To an extent, these implied rules are intermediate steps between the defining properties of a determinant and a practical formula. The implied rule $3$ enables elimination, which may proceed all the way to upper triangular matrix, and forward to a diagonal matrix with the same pivots (via back substitution). From here on, with linear combination property, the diagonal matrix could be turned into an identity matrix, with coefficient being the product of the diagonal elements, except when there is one diagonal element being $0$. If one diagonal element is indeed $0$, the matrix is singular, and consider the following rule. 
+ A singular matrix have a $0$ determinant. 
  By elimination, a singular matrix will reach to a row of $0$'s, thus have determinant $0$. 

With the above properties, it is possible to practically compute determinants of matrices, implying that determinants are well-defined as we wish. The two following properties are generally useful as they consider the multiplication, inverse, and transposes of matrices. 

+ $ det(vb(A  B)) = (det vb(A)) dot (det vb(B))$
  Assume $vb(B)$ is invertible. Fix function $ D (vb(A)) = (det vb(A B))/(det vb(B)). $
  We aim to show that $D$ satisfies the three defining properties of determinants. First, $ D(vb(I)) = (det vb(I B))/(det vb(B)) = 1. $
  Then, by the "row picture" of viewing matrix multiplication, let $vb(P)$ be the permutation matrix that exchanges rows of $vb(A)$, $ D(vb(P A)) = (det vb(((P A) B)))/(det vb(B)) = (det(vb(P) (vb(A B))))/(det vb(B)). $
  Lastly, to show linearity of combination by row, similar to the proof of the second property, by the "row picture" and the second property, it suffices to show that the i-th row of $vb(A)$, $vb(r)_i = a vb(x) + b vb(y)$, when multiplied to $vb(B)$, is linear. This is true as the determinant of the i-th row of $ (vb(A B))$ is $vb(r)_i vb(B) = a vb(x) + b vb(y) $. By applying the third defining property on $det vb(A B)$, we are done.  

  Interestingly, although $vb(A B) != vb(B A)$, $det vb(A B) = det vb(B A)$. 

  Thus, as a corollary, $ det(vb(A)^(-1)) = 1/(det vb(A)). $ 
+ $det vb(A)^top = det vb(A)$
  
  First, in the case that $vb(A)$ is singular, then $rank vb(A) = rank vb(A)^top < n$, then $vb(A)^top$ is singular. Both sides of the equation is $0$, so it holds. 

  In the case that $vb(A)$ is not singular, it could be decomposed into the $vb(L U)$ form with elimination, with all diagonal elements of $vb(L)$ $0$. Thus, $ det vb(A)^top = det (vb(U)^top vb(L)^top), $ which is the product of diagonal elements of $vb(U)$. The right side becomes $ det vb(A) = det vb(L U) = det vb(U) = det vb(A)^top. $

  Moreover, this property may also be shown, assuming the big formula from the next section using permutations by using the fact that a permutation's inverse have the same parity as itself and treating the coordinate of each element in one term of the determinant formula as permutating $(1, 2, dots, n)$. 

#example[
  Find the determinant of $ mat(101, 201, 301; 102, 202, 302; 301, 302, 303). $
]
#solution[
  By elimination, the second and the third row could be turned into all $1$'s. However, two identical rows means determinant is $0$. 
]
#example[
  Find the determinant of the vandermonde matrix  $ mat(1, a, a^2; 1, b, b^2; 1, c, c^2). $
]
#solution[
  We proceed by elimination. 
  $ R_2 |-> R_2 - R_1; R_3 |-> R_3 - R_1: \ mat(1, a, a^2;0, b-a, (b-a)(b+a); 0, c-a, (c-a)(c+a)). $
  By linearity by rows, the determinant is $ (b-a) (c-a) det mat(1, a, a^2; 0, 1, b+a; 0, 1, c+a) &= (b-a)(c-a) det mat(1, a, a^2; 0, 1, b+a; 0, 0, c-a) \ &= (b-a)(c-a)(c-b)
  \ &= (a-b)(b-c)(c-a). #qedhere $
]
#example[
  Find the determinant of $ mat(1; 2; 3) mat(1, -4, 5). $
]
#solution[
  Since determinant is multiplicative, $ det (mat(1; 2; 3) mat(1, -4, 5)) = det mat(1; 2; 3) dot det mat(1, -4, 5). $ Both matrices have dependent rows/columns, singular, thus determinant is $0$. 
  Alternatively, the rank of the given product is $1$, but the matrix is $3 times 3$, thus must be singular. 
]
#example[
  Find the determinant of $ mat(0, 1, 3; -1, 0, 4; -3, -4, 0). $
]
#solution[
  Let the given matrix be $vb(D)$. Notice that it is _skew symmetric_, or $vb(D)^top = - vb(D)$. By properties of determinants, $ det vb(D) = det vb(D)^top = det (- vb(D)) = (-1)^3 det vb(D) = - det vb(D). $ Since its determinant is equal to its (additive) inverse, $det vb(D) = 0$. 
]