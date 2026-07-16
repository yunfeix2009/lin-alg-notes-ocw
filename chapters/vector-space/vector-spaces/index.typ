#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Spaces of Vectors],
  route: "vector-spaces",
  description: [Spaces of Vectors],
)
#definition[
  A set which linear combination of a kind of vectors is closed. In other words, a set of vectors satisfying certain requirements.
]

#example[
  $RR^2$ is closed for vectors of exactly two real components, or consists all vectors consisting of two real components.
]

#definition[In fact, there could be a vector space in $RR^2$ that is not a $RR^2$ that is still closed under linear combinations. Define such a vector space to be a proper subspace of $RR^2$. ]

Notice that every subspace must contain $0$ due to scalar multiplication by $0$. And notice that every line passing through $(0, 0)$ is also a subspace. Or, the more or less trivial subspace only containing $(0, 0)$ is also a subspace.


#definition[
  For a matrix $vb(A)$, the vector space formed by the linear combination of its columns is called its _column subspace_, denoted as $vb(C)(vb(A))$.
]

#example[
  For a matrix $vb(A) = mat(1, 3; 2, 3; 4, 1)$, its column space is a plane passing through the origin containing vectors $(1, 2, 4)$ and $(3, 3, 1)$.
]

Therefore, notice that $vb(A x = b)$ is solvable iff $vb(b)$ is in $vb(C)(vb(A))$.

The union of two subspaces wrt the same vector space may not be a subspace, as the sum property is not preserved. However, the union of two subspaces must be a subspace.


In fact, the vector space does not have to be made up of vectors, but any objects that add and (scalar) multiply (or analogs that retain key properties of them) in a closed set. For example, $vb(Z)$ is the set containing $0$. Also, the set of all real $2 times 2$ real matrices, $vb(M)$ is a vector space, and all real functions $vb(F)$ is a vector space.

#lbl(
  <def:goodAddMulti>,
  definition[Generalized, addition must be commutative, associative, has an additive identity, and every element has an inverse; multiplication must be distributive wrt elements and scalar, associative ($c_1 (c_2 vb(x)) = (c_1 c_2) vb(x)$), and has multiplicative identity.],
)

Here, I must show this photo. #figure-wrapper(figure(image("/assets/image-4.png")))

Metric space is defined in Appendix C of my Multivariable Calculus notes.

#definition[
  For a vector space $V$, for any set of vectors $S subset.eq V$, the subspace of $V$ spanned by $S$ is defined as the set of linear combinations of $S$, denoted as $S S$.
]


#lbl(<pbm:SplusT>, problem[
  Suppose $S$ and $T$ are two subspaces of a vector space $V$.
  Definition: The sum $S + T$ contains all sums $s + t$, where $s in S$ and $t in T$. \
  (a) Show that S + T satisfies the requirements (addition and scalar
  multiplication) for a vector space.\
  (b) If $S$ and $T$ are lines in $RR^m$ , what is the difference between $S + T$ and $S union T$?\
  (c) Show that the span of $S union T$ is $S + T$. \
  (d) If $S = vb(C) (vb(A))$ and $T = vb(C) (vb(B))$, find the matrix $vb(M)$ such that $S + T = vb(C) (vb(M))$, assume columns of $vb(A)$ and $vb(B)$ are all in $RR^m$.
])
#solution[
  (a) Consider the sum of $s_1 + t_1$ and $s_2 + t_2$, since addition is commutative, this is equal to $(s_1 + s_2) + (t_1 + t_2)$. Since $(s_1 + s_2) in S$ and $(t_1 + t_2) in T$, $(s_1 + s_2) + (t_1 + t_2) in S + T$.
  $c(s + t) = c s + c t$ since multiplication is distributive, and due to $S$ and $T$ being subspaces, $c s in S$ and $c t in T$, so $c(s + t) in S + T$. \
  (b) $S union T$ is not necessarily a subspace. For example, $S$ being the $x$-axis and $T$ being the $y$-axis. \
  (c) Any linear combination of an element from $S$ and an element from $T$ could be mapped to an element in $S + T$, in an injection manner. Take $c s + d t$, since $c s in S$ and $d t in T$, there is an element in $S + T$ corresponding to it. Additionally, any element in $S + T$ is a linear combination of $s$ and $t$, specifically $1 dot s + 1 dot t$. \
  (d) Notice that $S$ is described by $vb(A x)$ and $T$ described by $vb(B y)$, therefore $S + T = vb(A x) + vb(B y) = vb(M) mat(x; y)$. Hence, $vb(M) = mat(vb(A), vb(B))$, also since that the columns of $vb(A)$ and $vb(B)$ have the same dimensions.
]
#remark[
  In fact, $S + T$ is the smallest subspace containing both $S$ and $T$.
]

#problem[
  Show that the matrices $vb(A)$ and $mat(vb(A), vb(A B))$ (with extra columns) have the same column
  space. But find a square matrix with $vb(C) (vb(A)^2)$ smaller than $vb(C) (vb(A))$.
]
#solution[
  With the "column picture" of matrix multiplication, $vb(A B)$ really is a linear combination of columns of $vb(A)$, which is in $vb(C)(vb(A))$.

  The matrices I thought of had column space the same as its square; however, gpt hinted on the case where $vb(A)^2$ collapses to $0$. For example, $ mat(0, 1; 0, 0), $ whose square is the zero matrix.
]

#problem[
  For what $vb(A)$ does an $n times 11$ matrix has $vb(C) (vb(A)) = RR^n$.
]

#solution[
  $n<=11$ and $vb(A)$'s columns are linearly independent.
]
