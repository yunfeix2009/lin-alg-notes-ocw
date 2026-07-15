#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Inverses of Matrices],
  route: "inverse",
  description: [Inverses of Matrices],
)
#lbl(<def:matrixInverse>, definition[For a matrix $bold(A)$, matrix $bold(M)$ is its inverse iff $bold(A M) = bold(M A) = bold(I)$, where $bold(I)$ is the identity matrix. ])
Observe that a rectangular matrix may have a left or right inverse, but due to dimensions, they will never be equal. It could be shown that, a matrix has an inverse only if it is a square matrix, meaning it has the same number of rows and columns.
In fact, a square matrix's left inverse is also its right inverse, and this is a determining property of square matrices. Still, it should be noted that a square matrix is not guaranteed to have an inverse, the criterion is invertiblility, shown in linear equations  @sec:le and whether the determinant is $0$, @sec:pod.

Call a matrix _invertible_ when it has an inverse and _singular_ otherwise, then a matrix $vb(A)$ is singular iff there exists a non-zero vector $vb(x)$ that $vb(A x) = 0$.

  We can look at this with matrix multiplication, too. Assume the result of $bold(A) bold(M)$ is $bold(U)$, then the columns of $bold(U)$ must be linear combinations of the columns of $bold(A)$. In this case, we want $bold(U)$ to be the identity matrix $bold(I)$, which means that the columns of $bold(A)$ must be able to produce:
  
   $ mat(1;0;0;dots.v;0;0),mat(0;1;0;dots.v;0;0),dots,mat(0;0;0;dots.v;0;1) $

  Denote the size of $bold(A)$ as $N times N$. Producing these vectors includes all the fundamental vectors to span the whole $RR^N$, which means the column vectors of $A$ span the entire space. There are only a total of $N$ columns in $A$, so there shouldn't be any redundant column vectors. All column vectors are linearly independent, which is the same as "there is no vector $vb(x)$ that satisfy $vb(A x) = 0$". 

There is a special case that will always be invertible, that is the diagonally dominant matrix, meaning all the diagonal terms are larger than the total sum of the elements in its row:

$ abs(a_(i i))>sum_(i != j) abs(a_(i j)) $

#proof[
  If the matrix is not invertible, there will be an $vb(x)$ satisfying $vb(A x)=vb(0)$, meaning there should be a linear combination of the columns of $vb(A)$ producing $vb(0)$. 
  
  Assume the linear combination is $x_1 vb(a_1)+x_2 vb(a_2)+ x_3 vb(a_3)+ dots +x_n vb(x_n)$. Let the largest $x$ be $x_k$, then it's certainly impossible for the term $a_(k k)$ to become zero. The sum of the other terms in row $k$ is smaller than $a_(k k)$, and they are multiplied by factors smaller than or equal to $x_k$, so they couldn't eliminate $a_(k k)$. 

  All linear combinations are non-zero.
]

Moreover, $ (vb(A B))^(-1) = vb(B)^(-1) vb(A)^(-1), $ as $ vb(A B B)^(-1) vb(A)^(-1) = vb(A I A)^(-1) = vb(A A)^(-1) = vb(I). $

Furthermore, finding the solution to a system of linear equations is equivalent to finding the inverse of a matrix.
Consider a system of linear equations regarding $n$ variables. If $bold(A)$ is an n-by-n square matrix representing the coefficients of the variables in each equation, $bold(x)$ a vector representing the solutions, and $bold(B)$ representing the vector of the constants on the right side of the equations, then we have $ bold(A x) = bold(B) ==> bold(A)^(-1) bold(A x) = bold(A)^(-1) bold(B) ==> bold(x) = bold(A)^(-1) bold(B) $

Thus, how to find the inverse of a matrix becomes a natural question. Here, I claim, without proof, that if the adjunct matrix of a square matrix $bold(A)$ is obtained by taking the transpose of the co-factor of the minors of $bold(A)$, then @thm:inverse states $ bold(A)^(-1) = 1/(det bold(A)) op("adj")(bold(A)). $ The definitions here will be in later sections, they are only included here for completeness of the inverse sections.

Aside from inverses discussed above, there may also be left or right inverses.
#definition[
  Matrix $vb(A)^(-1)_"left"$ is a left inverse of $vb(A)$ iff $ vb(A)^(-1)_"left" vb(A) = vb(I). $
]

Contrary to the inverse, whose existence requires $n = m = rank vb(A)$ that requires $vb(A)$ to be a square matrix, the existence of $vb(A)^(-1)_"left"$ only requires the columns of $vb(A)$ to be independent, or $N(vb(A)) = {0}$, or $n = rank vb(A)$.

After existence comes uniqueness. If the left inverse exists, there are infinitely many of them unless $vb(A)$ is a square matrix. However, a representative left inverse is $(vb(A^top A))^(-1) vb(A^top)$, as $ (vb(A^top A))^(-1) vb(A^top) vb(A) = (vb(A^top A))^(-1) (vb(A^top A)) = vb(I). $ Notice that $vb(A^top A)^(-1)$ does indeed exists by @thm:keyeqnsolvability. 

Knowing one left inverse of $vb(A)$, we discuss how to find the rest. 
Given $vb(L)_0$ is a left inverse of $vb(A) in RR^(m times n)$, a matrix $vb(L)$ is a left inverse of $vb(A)$ if $(vb(L)- vb(L)_0 )vb(A) = 0$. 
Let $vb(N) := vb(L) - vb(L)_0$, then $vb(N A) = 0$ iff every row vector $vb(r)_i$ of $vb(N)$ satisfies $vb(r)_i^top vb(A) = 0$, or $vb(r)_i in N(vb(A)^top)$. This is possible when $ dim (N(vb(A^top))) = m - rank vb(A) = m-n > 0. $

In fact, this categorization of $vb(L)_0 + vb(N)$ completes the characterization of the left inverses. 
#proof[
  Suppose $vb(L A) = vb(M A) = vb(I)$. Then, $vb((L - M) A = 0)$. Thus, $vb(L - M)$ has every row vector in the left null space of $vb(A)$. Thus, all left inverses could be expressed as a certain left inverse plus $vb(N)$ with row vectors in the left null space of $vb(A)$. 
]

Similarly, the right inverse could be defined. 
#definition[
    Matrix $vb(A)^(-1)_"right"$ is a right inverse of $vb(A)$ iff $ vb(A) vb(A)^(-1)_"right" = vb(I). $
]

Similarly, the existence of the right inverse requires full row rank, so $m = rank vb(A)$ or $N(vb(A)) = {0}$. 
Observe that $ vb(A) (vb(A^top ) (vb(A A^top))^(-1)) = 0. $ This means that $vb(A^top (A A^top)^(-1))$ is a right inverse. 
Near identical analysis of uniqueness of left inverses applies to right inverses. 

Furthermore, Since $vb((vb(A^top A))^(-1) vb(A^top))$ is a left inverse of $vb(A)$, $vb(A)vb((vb(A^top A))^(-1) vb(A^top)) $ would not be an identity matrix. However, this matrix is the projection matrix onto the column space @eq:projectionMatrix. On the other hand, $vb(A)$ left multiplying its right inverse gives the projection matrix onto its row space. 

Moreover, this discussion of inverses could be generalized even more to pseudo-inverses, discussed in @sec:pinverse. 
