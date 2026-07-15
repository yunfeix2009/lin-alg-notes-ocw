#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Orthogonality],
  route: "orthogonality",
  description: [Orthogonality],
  children: [
    #include "orthogonal-vectors/index.typ"
    #include "projection/index.typ"
    #include "least-square-approximations/index.typ"
    #include "orthogonal-matrix-basis/index.typ"
  ],
)
Here, we examine how the geometric concept of _perpendicularity_, governed by the Pythagorean Theorem, could be expressed in the language of linear algebra, as _orthogonality_. 
