#import "/src/components/index.typ": docs-appendix
#import "/lib.typ": *

#show: docs-appendix.with(
  title: [Matrix Calculus],
  route: "matrix-calculus",
  children: [
    #include "intro/index.typ"
    #include "analytical/index.typ"
    #include "numerical/index.typ"
    #include "app/index.typ"
    #include "rand/index.typ"
  ],
)
