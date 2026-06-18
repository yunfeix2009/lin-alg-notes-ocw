#import "../../../lib.typ":*
 
 == Row Picture and Column Picture

#example[
  Solve the system of linear equations $ cases(2x - y = 0, -x + 2y  = 3). $
]
#solution[
  Assuming basic knowledge on multiplication of matrices, this could be written in the form of $ mat(2,  -1; -1, 2) mat(x; y) = mat(0, 3). $
  Let $ vb(A) = mat(2,  -1; -1, 2), vb(x) =  mat(x; y), vb(b) = mat(0, 3), $ then $ A x = b.$
  This represents two lines on $RR^2$ intersecting at a point, termed by Prof. Strang the "row picture," as it directly considers the two vectors. 

  However, just like "counting twice" (counting the same thing in two different ways) in combinatorics, looking the other way, as the "column picture" produces a different kind of insights. The same linear system could also be expressed as $ x mat(2; -1) + y mat(-1; 2) = mat(0; 3). $ This equation offers a completely different geometric interpretation: given two vectors, $mat(2; -1)$ and $mat(-1; 2)$, for what values of $x$ and $y$ would their linear combination be $mat(0; 3)$.  

  With this "column picture," it's natural to ask with $x$ and $y$, what combination could be achieved. In fact, for reasons that as we shall see later, any combination could be achieved. In other words, the linear combination of $mat(2; -1)$ and $mat(-1, 2)$ fill the entire plane. 
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