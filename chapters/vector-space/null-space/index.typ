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

  $ vb(A) (vb(v) + vb(w)) &= vb(A) vb(v) + vb(A) vb(w) = 0. #qedhere $
]

Looked through the lens of linear systems, when there are more equations than there are variable, it is not generally true that for any $vb(b)$, there are unique solutions. Thus, the null space describes the valid solutions. 

