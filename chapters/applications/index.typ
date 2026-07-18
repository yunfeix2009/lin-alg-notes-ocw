#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Applications of Linear Algebra],
  route: "applications",
  description: [Applications of Linear Algebra],
  children: [
    #include "graphs/index.typ"
    #include "calculus/index.typ"
    #include "extremum/index.typ"
    #include "differential-eq/index.typ"
    #include "markov/index.typ"
    #include "fourier/index.typ"
    #include "image/index.typ"
    #include "quadratic-surf/index.typ"
    #include "camera-geo/index.typ"
  ],
)
Linear algebra, though sometimes viewed as primarily a tool for solving linear equations, have many applications in fields such as differential equations, circuits, graphs -- perhaps partially due to its high level of abstraction and generality of vector spaces.
