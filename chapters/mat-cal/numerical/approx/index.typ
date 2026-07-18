#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Numerical Approximation Methods],
  route: "approx",
)

Here, we discuss methods of numerical approximation in matrix calculus that serves different means.

Finite difference is a quick verification for an analytically computed derivative.

To check, we can, with computational aids, create a customized perturbation matrix that is randomly generated for each differential. Then, evaluate $ "relative error" := norm("experimental" - "theoretical")/norm("theoretical"). $
Comparing the relative error of a few theoretical answers gives which oen is the correct one rather clearly.

To define the norm of a matrix, however, there are many ways. But in this quick verification, the basic Frobenius norm, which square roots the sum of squares of all entries, suffice.
In fact, this definition could be shown to be equivalent to #lbl(<eqn:frobenius>, $ norm(vb(A))_F = sqrt(trace(vb(A^top A))) $) with by analysis with indices.

Interestingly, when plotted on a log-log graph, relative error is linear with $norm(delta vb(A))$ by virtue of taylor series.

Moreover, when approximating, by using the centered difference, $ delta x f'(x) = 1/2 (f(x + delta x) - f(x - delta x)) + o((delta x)^3), $ the order of error dramatically decreases by an entire order. This is a result of all the even terms in the Taylor's series cancel, leaving the the third order remaining.
