#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Matrix Spaces],
  route: "matrix-space",
  description: [Matrix Spaces],
)
Vector spaces, are not really spaces of vectors. As long as any objects have a "good" addition and multiplication, ie. satisfying these core properties @def:goodAddMulti.

Therefore, the atomic objects at study could very well be matrices. #example[
  The space of $3 times 3$ real matrices is a vector space. It has $9$ dimensions, each basis could be a matrix with the only non-zero element a $1$, each $1$ at a distinct position.

]

#example[
  The union of the subspace of symmetric matrices $S$ and upper triangular matrices $U$, both having dimension of $6$, is also a subspace, of dimension $3$. And, the space of symmetric plus upper triangular, $S + U$, is also a vector space (see @pbm:SplusT), with dimension $9$.
]
#remark[
  Interestingly, $ dim U + dim S = dim (U +S) + dim (U inter S). $
]

#example[
  Describe the solution space to the second-order ordinary differential equation $ dv(y, x, 2) + y = 0. $
]
#solution[
  The solutions to this ODE form a vector space. In fact, its two basis vectors are $cos x$ and $sin x$. With tools of linear algebra, one may remark that the solution space is 2 dimensional, with basis vectors $cos x$ and $sin x$. Therefore, the solutions could be described as $c_1 cos x + c_2 sin x$. 
]
#remark[
  Thus, one insight stemming from this example is that, to solve a linear differential equation, it suffices to find the basis vectors to its solution space. Also, the dimensions of the solution space is equal to the order of the linear differential equations. 
]

#example[
  Consider the space of $m times n$ matrices, does the space formed by all rank $1$ matrices form a subspace. 
]
#solution[
  No. The sum two rank $1$ matrices may not be of rank $1$. 
]

#example[
  Consider four vectors, $v_1, v_2, v_3$, and $v_4$, show that $mat(v_1; v_2; v_3; v_4)$ forms a vector space and find the basis of this vector space. 
]
#solution[
  Notice that scalar multiplication preserves the fact that four vectors sum to $0$ and addition also preserves that. 

  Notice that this space is of three dimensions. Also notice that this is the null space of $vb(A x) = 0$, where $ vb(A) = mat(1, 1, 1, 1). $

  Since $dim vb(N) (vb(A)) = n - rank (vb(A)) ==> rank (vb(A)) = 1$. 
]