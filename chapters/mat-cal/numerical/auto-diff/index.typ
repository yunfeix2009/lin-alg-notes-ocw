#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Automatic Differentiation],
  route: "auto-diff",
)
When computing complicated derivatives, symbolic manipulation may generate an unwieldy formula and very costly, while finite difference have limited accuracy. Automatic differentiation, which to an extent is fully not numerical nor fully symbolic, cost a multiple of the evaluation of the function and produces the gradient with one traversal rather than evaluating each variable independently. Moreover, automatic differentiation produces accuracy almost that of the capability of the machine.

This is achieved through the linear nature of differentiation. The machine uses a "dual number" that expresses the perturbation in terms of both the zero order quantity and the first order quantity, $(a, b)$expresses $a+ b epsilon$. Then, for each operation, the machine manipulate both numbers with pre-designed rules. For example, the product of two dual numbers $(a, b) times (c, d) = (a c, b c + a d)$ as $ (a + b epsilon)(c + d epsilon) approx a c + (b c + a d) epsilon. $

As an extremely consequential fact that enables drastic optimization for finding gradient of complicated things, common in machine learning, automatic differentiation computes the gradient of a scalar output wrt every input with roughly one additional operation, known as adjoint differentiation.


computational graphs
