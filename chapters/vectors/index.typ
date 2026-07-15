#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Vectors],
  route: "vectors",
  description: [Vectors],
  children: [
    #include "combination/index.typ"
    #include "dot-product/index.typ"
  ],
)
Since the essence of linear algebra studies the operation linear transformation and the spaces they form, we first introduce the vectors, which linear combination is exerted upon. Then, we introduce to other useful operations on vectors. 



// #chapter-section("dot_product_applications")[
//   #include "dot-product-applications/index.typ"

// ]
// #chapter-section("matrices")[
//   #include "matrices/index.typ"
// ]
// #chapter-section("parametric")[
//   #include "parametrics/index.typ"
// ]


// no prelim yet...
