#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Optimization],
  route: "optimization",
  label: <sec:optimization-mat-calc>,
)
With gradient, aside from finding the root, we can also find the extrema, which is critical in optimization given a fixed function analytically. In _Notes on Multivariable Calculus_, this was done by setting the gradient to $0$. But numerically, by taking the new $x_(n+1)$ to be $x + delta x$ where $delta x$ is in the direction of $nabla f$, would usually give the direction to the nearby hill. Notice there are a lot of content and variations to this method. For example, by the changing the direction of movement to $-nabla f$ gives the valley.

Simple in the ideal case, though complications arise in worldly problems. The major tradeoff is the step length: large step sizes may overshoot land far from the root or that the local approximation fails; small step sizes make convergence slower than necessary.

Going directly perpendicular to the contour (as in the naive version of gradient descent) gives a zig-zagging pattern across a narrow, steep valley. This inefficiency may be solved with a "momentum" term.

Similar to lagrange multiplier, when subject to a constraint, a new algorithm should be used.

Practically, it is often a wise move to experiment a few off-the-shelf algorithms; however, formulating the problem is a more important aspect.

This sort of optimization applies to machine learning and statistical regression, manipulating a model to fit given data. For example, least squares @sec:lsa is such a problem as the core is to minimize the error term by changing the two degrees of freedom (slope and $y$-intercept for instance), given data points.

Matrix calculus may also be used in physical engineering optimization.

Typically, the procedure may be as the following.
+ Model the situation with the design element vector $vb(p)$, critical physical states $vb(x)$, the evaluation of the physical states $f(vb(x))$ and the equation that solves the physical states given the design elements $vb(A(p) x = b(p))$.
+ Start with a given $vb(p)_0$.
+ Recursively, solve for the corresponding $vb(x)$, then find $grad_vb(p) f(vb(x(p)))$ then update $vb(p)$ as $ vb(p)_(n+1) := vb(p)_n + (grad_vb(p) f(vb(x(p)))) (delta vb(p)). $

#figure-wrapper(figure(potential-frame(image("/assets/image-2.png"))))
The above image is when the result of topological optimization of a chair, fixing the weight to support and minimizing the amount of material.
