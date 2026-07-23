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
#lbl(
  <thm:dimensional-relationship-of-the-sum-of-two-subspaces-and-the-intersection-of-two-subspaces>,
  theorem[
    For any two subspaces $U$ and $S$, $ dim U + dim S = dim (U +S) + dim (U inter S). $
  ],
)

Here's a proof for the above theorem. Assume each vector space has a basis.

$ vb(S) inter vb(U): vb(v_1),vb(v_2),dots,vb(v_k) $

Extend the basis of $vb(S) inter vb(U)$ to get the basis of $vb(S)$ and $vb(U)$.

$ vb(S): vb(s_1), vb(s_2), dots, vb(s_a), vb(v_1),vb(v_2),dots,vb(v_k) $

$ vb(U): vb(u_1),vb(u_2),dots,vb(u_b),vb(v_1),vb(v_2),dots,vb(v_k) $

I claim that the basis of $vb(S)+vb(U)$ is:

$ vb(s_1), vb(s_2), dots, vb(s_a), vb(u_1),vb(u_2),dots,vb(u_b), vb(v_1),vb(v_2),dots,vb(v_k) $

First, the vectors above span the whole space $vb(S)+vb(U)$. Take one of its element $s+u$, we can write it as:

$ sum((a_i vb(s_i)+b_j vb(v_j))+(c_x vb(u_x)+d_y vb(v_y))), $

which is a linear combination of the basis. It is also easy to show that all linear combination of the basis can be expressed as $s+t$.

Now we need to prove that all the vectors in the basis are linearly independent. Using the definition of independence, we know that if for some non-zero $a_i,b_j,c_l$,

$ sum(a_i vb(s_i)+b_j vb(v_j)+c_l vb(u_l))=0, $

the vectors are dependent. Let's move the third term to the right hand side.

$ sum a_i vb(s_i)+ sum b_j vb(v_j) = -sum c_l vb(u_l) $

The left side is in $S$, and the right side is in $U$. To make them equal, both sides must be in $S inter U$. But $vb(u_l)$ cannot produce vectors in $S inter U$, since $vb(u)$ is designed to exclude $vb(v)$. So the only $c_l$ that satisfies the condition is $0$.

Then the left side must be zero. Since $vb(s)$ is also independent from $vb(v)$, the only values for $a$ and $b$ are zeros. This indicates that there isn't a non-zero solution, and the vectors are independent.

In conclusion, $vb(S)+vb(U)$ has dimension $a+b+k$, $vb(S) inter vb(U)$ has dimension $k$, while $dim(vb(S))=a+k$, and $dim(vb(U))=b+k$, so $dim(vb(S))+dim(vb(U))=dim(vb(S) inter vb(U))+dim(vb(S)+vb(U))$.

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
