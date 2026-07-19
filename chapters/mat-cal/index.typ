#import "/src/components/index.typ": docs-appendix
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Matrix Calculus],
  route: "matrix-calculus",
  children: [
    #include "intro/index.typ"
    #include "analytical/index.typ"
    #include "numerical/index.typ"
    #include "app/index.typ"
    #include "rand/index.typ"
  ],
  label: <sec:mat-calc>,
)


Calculus and linear algebra are both extremely consequential subjects in math. The fact that gradient is a linear operator and the practical question of how to differentiate linear algebra objects motivates a connection between the two, hence this chapter.

This chapter is grounded on 18.S096, IAP Jan. 2023 @edelman2023matrixcalculus.

Besides matrix calculus, following is a list of topics that are accessible with the completion of this introductory notes on linear algebra, followed by an introductory reading on that topic.
+ Tensors, which have significant applications in physics and machine learning @carter2005similarity.
+ Covariance matrices, useful in statistics @wikipedia_covariance_matrix.
