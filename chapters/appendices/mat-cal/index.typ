#import "/src/components/index.typ": docs-appendix
#import "/lib.typ": *

#show: docs-appendix.with(
  title: [Matrix Calculus],
  route: "matrix-calculus",
  children: [
    #include "intro/index.typ"
    #include "diff-high-order/index.typ"
    #include "mat-func/index.typ"
    #include "kronecker/index.typ"
    #include "approx/index.typ"
  ],
)
