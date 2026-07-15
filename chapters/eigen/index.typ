#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Eigenvalues and Eigenvectors],
  route: "eigen",
  description: [Eigenvalues and Eigenvectors],
  children: [
    #include "eigenvalue-vector/index.typ"
    #include "diagonalization/index.typ"
    #include "eigen-spec/index.typ"
    #include "misc-problems/index.typ"
    #include "svd/index.typ"
    #include "pinverse/index.typ"
  ],
)
Here, we explore eigenvalues and eigenvectors, alnog with their applications. 
