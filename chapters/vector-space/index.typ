#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Vector Spaces and Subspaces],
  route: "vector-space",
  description: [Vector Spaces and Subspaces],
  children: [
    #include "vector-spaces/index.typ"
    #include "null-space/index.typ"
    #include "independence/index.typ"
    #include "fundamental-subspaces/index.typ"
    #include "matrix-space/index.typ"
  ],
)
The jump from vectors to vector spaces and subspaces is similar to the jump from numbers to vectors. Thinking in terms of vector spaces provide a higher level of abstraction in linear algebra operations. 


#quote()[
  We are looking inside the calculations, to find the mathematics. 
]
