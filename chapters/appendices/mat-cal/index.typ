#import "/src/components/index.typ": docs-appendix
#import "/lib.typ": *

#show: docs-appendix.with(
  title: [Supplements on Vector Algebra],
  route: "wcnmb-nmlgb",
  children: [
    #include "intro/index.typ"
    #include "diff-high-order/index.typ"
    #include "mat-func/index.typ"
    #include "kronecker/index.typ"
  ],
)
