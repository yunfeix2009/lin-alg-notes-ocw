#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Null Spaces],
  route: "null-space",
  description: [Null Spaces],
)
#definition[
  For a matrix $vb(A)$, its null space is the set of vectors $vb(x)$ such that $vb(A x) = 0$.
]

#example[
  Fix matrix $ vb(A) = mat(1, 1, 2; 2, 1, 3; 3, 1, 4; 4, 1, 5), $ find its null space.
]
#solution[
  Notice the solution is any multiples of $ mat(1; 1; -1). $
  Thus, the null space is a line in $RR^3$.
]
#remark[
  Notice that the zero vector is always in the null space.
]

#theorem[
  The null space is a subspace.
]
#proof[
  We need to show that if $vb(A v) = 0$ and $vb(A w) = 0$, then $vb(A) (c vb(v) + d vb(w)) = 0$. Since $vb(A) (c vb(v)) = c vb(A v) = 0$, it suffices to show that $vb(A) (vb(v) + vb(w)) = 0$.

  $ vb(A) (vb(v) + vb(w)) & = vb(A) vb(v) + vb(A) vb(w) = 0. #qedhere $
]

Looked through the lens of linear systems, when there are more equations than there are variable, it is not generally true that for any $vb(b)$, there are unique solutions. Thus, the null space describes the valid solutions.

There is some way to find the null space without solving the equations.
#example[
  Find the null space of the following matrix(already in reduced row echelon form).

  $ mat(1, 2, 0, -2; 0, 0, 1, 2; 0, 0, 0, 0) $
]
#solution[
  Write down the equation:

  $ mat(1, 2, 0, -2; 0, 0, 1, 2; 0, 0, 0, 0) mat(x_1; x_2; x_3; x_4) = mat(0; 0; 0; 0) $

  We will first divide the columns into two types: pivot columns and free columns. $x_1,x_2,x_3,x_4$ each has a corresponding column when doing matrix multiplication, so we can divide the variables into pivot variables and free variables according to their columns.

  Since the matrix is already in reduced row echelon form, we know that columns $1$ and $3$ have pivots, so they are the pivot columns, and $x_1,x_3$ are pivot variables. Vice versa, columns $2$ and $4$ are free columns, and $x_2,x_4$ are free variables.

  We put an $1$ in one of the free variables and $0$'s in the other free variables. We do this for every free variable, and create multiple vectors(the number of vectors is equal to the number of free variables).
  ,
  $ mat(?; 1; ?; 0) mat(?; 0; ?; 1) $

  Question marks stand for the pivot variables which we haven't filled in yet. Now, copy the opposite of the numbers in the columns that correspond to the free variable with a $1$ into the question marks.

  $ mat(-2; 1; 0; 0) mat(2; 0; -2; 1) $

  The two vectors above are called the special solutions, and we can get the null space easily with them.

  $ N(vb(A))=c_1 mat(-2; 1; 0; 0) + c_2 mat(2; 0; -2; 1) $
]
The example gives us a new way to find null spaces. Let's figure out how this worked with a slightly bigger matrix.

$ mat(2, 3, 1, 4; 1, 1, 4, 1; 3, 3, 12, 3; 3, 4, 5, 5) $

Don't worry, I already found the RREF form for you.

$ mat(1, 0, 11, -1; 0, 1, -7, 2; 0, 0, 0, 0; 0, 0, 0, 0) mat(x_1; x_2; x_3; x_4)=mat(0; 0; 0; 0) $

Now do the matrix multiplication.

$ x_1+11x_3-x_4=0 ==> x_1=-11x_3+x_4 $

$ x_2-7x_3+2x_4=0 ==> x_2=7x_3-2x_4 $

Notice that the coefficient before each free variable matches with the opposite of the numbers in the free columns of the matrix. And all the pivot variables are defined by the free variables. Since each pivot column only have one $1$, the pivot variables will only show up in one of the equations we wrote, making it easy to solve for them once we get the values of the free variables.

There is no constraint on the free variables, so the easiest way to cover the whole null space is to set them to the fundamental basis, such as:

$ mat(0; 0; 1), mat(0; 1; 0), mat(1; 0; 0) $

When $x_3=1,x_4=0$, $x_1=-11,x_2=7$, which are the coefficients before $x_3$, and also the opposite of the numbers in the third column.

When $x_3=0,x_4=1$, $x_1=1,x_2=-2$, which are the opposite of the numbers in the fourth column.

So the final answer is:

$ N(vb(A))=c_1 mat(-11; 7; 1; 0) + c_2 mat(1; -2; 0; 1) $

To generalize this, when the RREF form is beautiful(meaning all the pivot columns are on the left and free columns are on the right), the matrix can be written as

$ mat(vb(I) space vb(F); 0 space 0) , $

identity matrix on the left, and some other matrix on the right.

Take the bottom rows with only $0$'s out. The special solutions will be

$ mat(-vb(F); vb(I)) , $

column one of $-vb(F)$ on top of column one of $vb(I)$, column two of $-vb(F)$ on top of column two of $vb(I)$, etc. (You need to cut the bottom off of $vb(I)$ when there are fewer free variables than pivot variables. $vb(I)$ is a $n-r$ by $n-r$ matrix, where $r$ is the rank, or the number of pivots in $vb(A)$. While the $vb(I)$ of the RREF form is a $r$ by $r$ matrix.)
