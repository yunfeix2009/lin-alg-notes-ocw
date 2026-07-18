#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Analytical Methods],
  route: "analytical",
  children: [
    #include "diff-high-order/index.typ"
    #include "mat-func/index.typ"
    #include "kronecker/index.typ"
    #include "calc-var/index.typ"
    #include "eigen/index.typ"
  ],
)
