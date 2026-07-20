#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Numerical Approximation Methods],
  route: "numerical",
  children: [
    #include "auto-diff/index.typ"
    #include "approx/index.typ"
  ],
)


