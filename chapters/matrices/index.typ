#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Matrices],
  route: "matrices",
  description: [Matrices],
  children: [
    #include "multiplication/index.typ"
    #include "inverse/index.typ"
    #include "transpose/index.typ"
    #include "permutation/index.typ"
  ],
)
There are many motivations for matrices, including transforming coordinate systems and solving systems of linear equations. Here, we begin by looking at it through the lens of linear combinations.




// #chapter-section("calculus")[
//   #include "calculus/index.typ"
// ]
