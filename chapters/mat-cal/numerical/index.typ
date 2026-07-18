#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Computational Methods],
  route: "numerical",
  children: [
    #include "auto-diff/index.typ"
    #include "approx/index.typ"
  ],
)


