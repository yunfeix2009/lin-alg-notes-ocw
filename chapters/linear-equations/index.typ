#import "../../lib.typ":*

= Linear Equations 

One of the problems that motivated linear algebra is finding the solution to a system of linear equations, which naturally gives rise to matrices, and several important operations of matrices.
In the language of linear combinations, the problem of linear systems is that "given a set of vectors, which linear combinations of them will produce a fixed vector."

Formally, given coefficient matrix $vb(A)$ and vector $vb(b)$, if $vb(A x) = vb(b)$, we aim to find $vb(x)$. 

To this end, if $vb(x)$ could be uniquely determined for all $vb(b)$, term $vb(A)$ as _invertible_, otherwise, let $vb(A)$ be _singular_. 

#chapter-section("picture")[
  #include "picture/index.typ"
]

#chapter-section("elimination")[
  #include "elimination/index.typ"
]


#chapter-section("lu-decomposition")[
  #include "lu-decomposition/index.typ"
]
