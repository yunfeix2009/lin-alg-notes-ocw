#import "../../../lib.typ":*
 
 == Row Picture and Column Picture
 
 When visualizing linear systems, there are often two main ways, corresponding to two ways of interpreting the product between a matrix and a vector. 

#example[
  Solve the system of linear equations $ cases(2x - y = 0, -x + 2y  = 3) thin. $
]
#solution[
  This equation could be written in the form of $ mat(2,  -1; -1, 2) mat(x; y) = mat(0; 3). $
  Let $ vb(A) = mat(2,  -1; -1, 2),quad vb(x) =  mat(x; y),quad vb(b) = mat(0; 3), $ then $ vb(A x = b).$
  This represents two lines on $RR^2$ intersecting at a point, termed by Prof. Strang the "row picture," where each row of $vb(A)$ combines $vb(x)$, and setting that combination to an element of $vb(b)$ gives an equation, in this case, one that describes a line in $RR^2$. 

  However, just like "counting twice" (counting the same thing in two different ways) in combinatorics, looking the other way, as the "column picture" produces a different kind of insights. By treating multiplying a vector on the right as a combination of the column vectors of the matrix, the same linear system could also be expressed as $ x mat(2; -1) + y mat(-1; 2) = mat(0; 3). $ This equation offers a completely different geometric interpretation: given two vectors, $mat(2; -1)$ and $mat(-1; 2)$, for what values of $x$ and $y$ would their linear combination be $mat(0; 3)$.  

  With this "column picture," it's natural to ask, given $vb(A)$ what combinations, or $vb(b)$ could be achieved, by varying $vb(x)$. In fact, for reasons that as we shall see later in vector spaces, any combination could be achieved. In other words, the linear combination of $mat(2; -1)$ and $mat(-1; 2)$ fill the entire plane. 
]
#remark[
  Notice that the abstraction from the linear system to matrices to a seemingly unnecessary step explicitly representing matrices with letters demonstrates the role that abstraction plays as a useful technique in math. Just like the use of $nabla$ and representing curl and divergence in terms of which, these key symbols serve as a holder when connecting distinct concepts, one of the main themes of math. 
]

Adding one variable to a system of $3$ equations of $3$ variables, the "row picture" becomes relatively less easy to visualize and represent. With more variables and equations, this trend continues, visualization already becomes difficult. However, with the equally important, but often missed "column picture," things are not much harder. 

Another contrast between the "row picture" and "column picture" is when defining or computing the product between a vector and a matrix. 

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

Matrix multiplication can also be viewed from a third perspective. Writing the columns of $A$ as $a_1, dots.c, a_n$ and the rows of $B$ as $b_1^T, dots.c, b_n^T$, we have

$
A B = a_1 b_1^T + a_2 b_2^T + dots + a_n b_n^T.
$

Thus, the product is a sum of outer products of columns of $A$ and rows of $B$.

Finally, these viewpoints extend naturally to block matrices. If a matrix is partitioned into blocks of compatible sizes, each block may be treated as a single entry, and the usual rules of matrix multiplication remain valid. This allows complicated matrix products to be analyzed and computed using larger building blocks rather than individual entries.
