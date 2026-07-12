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

To summarize the row picture and the column picture, let's look at a three by three matrix. 

$mat(a,b,c;d,e,f;g,h,i)mat(x;y;z)=mat(a x + b y + c z ; d x + e y + f z ; g x + h y + i z)$

The column picture considers the right hand side $b$ as $x mat(a;d;g)+y mat(b;e;h)+z mat(c;f;i)$, and we need to find the proper $x,y,z$ or linear combinantion. 

The row picure considers $x,y,z$ as the intersection of the three lines: $\ a x+b y+c z=dots \ d x + e y + f z=dots \ g x + h y + i z=dots$

Adding one variable to a system of $3$ equations of $3$ variables, the "row picture" becomes relatively less easy to visualize and represent. With more variables and equations, this trend continues, visualization already becomes difficult. However, with the equally important, but often missed "column picture," things are not much harder. 
