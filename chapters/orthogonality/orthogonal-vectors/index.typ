#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Orthogonal Vectors and Subspaces],
  route: "orthogonal-vectors",
  description: [Orthogonal Vectors and Subspaces],
)
In geometry, $triangle A B C$ has a right angle at $C$ iff $a^2 + b^2 = c^2$. In terms of vectors, this means vectors $vb(x)$ and $vb(y)$ are orthogonal iff $ norm(vb(x))^2 + norm(vb(y))^2 = norm(vb(x) + vb(y))^2. $
Since $norm(vb(x))^2 = vb(x) dot vb(x) = vb(x)^top vb(x)$, $ vb(x) dot vb(y) = 0 <==> vb(x)^top vb(x) + vb(y)^top vb(y) = (vb(x + y))^top (vb(x+y)). $

This makes sense as matrix multiplication is, by definition, associative, so $ (vb(x) + vb(y))^top (vb(x) + vb(y)) = vb(x)^top vb(x) + vb(y)^top vb(y) + (vb(x)^top vb(y) + vb(y)^top vb(x)). $

Since subspaces is one of the fundamental objects at study of _linear algebra_, we define orthogonality of subspaces.
#definition[
  Subspaces $S$ and $T$ are _orthogonal_ if every vector in $S$ is _orthogonal_ to every vector in $T$.
]

Since any non-zero vector is not orthogonal to itself, and that a subspace must contain the zero vector, the intersection of two subspaces must be the zero vector.

#lbl(<thm:subspaceOrtho>, theorem[
  Regarding a matrix $vb(A)$, its row space is _orthogonal_ to its null space, $N(vb(A))$.
])
#proof[
  Every vector in $N(vb(A))$ is orthogonal to every single row of $vb(A)$ as, by definition, $vb(A) vb(x) = 0$ so $vb(A)_i vb(x) = 0$. Moreover, any vector in the row space is a combination of rows of $vb(A)$, let one of such be $c_1 vb(A)_1 + c_2 vb(A)_2 + dots.c$ and $vb(v) in N(vb(A))$, then $ (c_1 vb(A)_1 + c_2 vb(A)_2 + dots.c) vb(v) = c_1 (vb(A)_1 vb(v)) + c_2 (vb(A)_2 vb(v)) + dots.c = 0. #qedhere $
]

#corollary[
  The left null space and the column space of $vb(A)$ are _orthogonal_.
]
#proof[
  $vb(A)^top$ is a matrix, as $vb(A)$.
]

#definition[
  Fix universal space $U$, its its subspaces $S$ and $T$ are _orthogonal complements_ iff $S$ contains _all_ vectors in $U$ that are orthogonal to $T$ and vice versa. Denote $S = T^perp$ and $T = S^perp$.
]

#theorem[
  _Fundamental Theorem of Linear Algebra_ states that, for a $m times n$ matrix $vb(A)$, the row space and null space are orthogonal complements wrt $RR^n$.
]
#proof[
  It's been proven that $C(vb(A)^top) subset.eq N(vb(A))$. Also, $ dim C(vb(A)^top)^perp = n - dim C(vb(A)^top) = dim N(vb(A)) $ as $C(vb(A)^top)^perp$ contains all directions in $RR^n$ not in $C(vb(A)^top)$. Since if two subspaces have the same dimensions, one must not be a proper subset of the other, $ C(vb(A)^top) = N(vb(A))^perp. $
]
#corollary[
  For any vector in the row space, $vb(A)vb(x_r)$ produces a vector in the column space. Every vector in the column space is produced by a unique vector in the row space. (One-to-one relationship)
]
#proof[
  Since the row space and the null space are orthogonal complements, they can make any vector in $RR^n$, meaning any vector $vb(x)$ can be expressed as $vb(x_r)+vb(x_n)$. ($dim(R+N)=dim(R)+dim(N)-dim(R inter N)=dim(R)+dim(N)=n$)

  The column space is the set of all vectors produced by $vb(A)vb(x)=vb(A)(vb(x_r)+vb(x_n))=vb(A)vb(x_r)+vb(A)vb(x_n)$. Since $x_n$ is in the null space of $vb(A)$, so $vb(A)vb(x_n)=vb(0)$, $vb(A)vb(x)=vb(A)vb(x_r)$. We've proven that every vector in the row space can produce a vector in the column space.

  Now we need to prove that every vector in the column space can only be made by one vector in the row space. Assume two different vectors $x_r$ and $x_r'$ made the same vector.

  $ vb(A)vb(x_r)=vb(A)vb(x_r') $

  $ vb(A)(vb(x_r)-vb(x_r'))=0 $

  So $vb(x_r)-vb(x_r')$ is in the null space of $vb(A)$. But $vb(x_r)-vb(x_r')$ is also in the row space of $vb(A)$. The only vector that is in both spaces is the zero vectors. We conclude that

  $ vb(x_r)-vb(x_r')=vb(0), $

  $ vb(x_r)=vb(x_r'). $

  This contradicts with the assumption we made at the start, so every vector in the column space can only be made by one vector in the row space.
]

#theorem[
  Any two orthogonal subspaces $V$ and $W$ in $RR^n$ need to satisfy $ dim(V)+dim(W) <= n $
]
#proof[
  If some vector $v$ is both in $V$ and in $W$, it need to be orthogonal to itself. The only vector that is orthogonal to itself is the zero vector. According to the definition of a subspace, any subspace contains the zero vector. So $V$ and $W$ are only allowed to share the zero vector.

  From @thm:dimensional-relationship-of-the-sum-of-two-subspaces-and-the-intersection-of-two-subspaces, we know that $dim(V)+dim(W)=dim(V+W)+dim(V inter W)$. Since $dim(V+W)<=n$ and $dim(V inter W)=0$, $dim(V)+dim(W)<=n$.
]
