#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Applications of Matrix Calculus],
  route: "app",
  label: <sec:app-mat-calc>,
)

Starting simple. To find the root of a function $f: RR -> RR$, recursively performing the following steps would obtain a numeric approximation of a root.
+ Linearize

  $f(x + delta x) approx f(x) + f'(x) delta x$
+ Find the root

  $0 = f(x+delta x) approx f(x) + f'(x) delta x ==> delta x = -f(x)/(f'(x))$
+ Update $x$

$x_(n+1) -> x_n$


Then, when the function is multivariate, which is often the case in applications, generalizing $f'(x)$ to $grad f$ gives the change $delta x = - f'(x)^(-1) f(x)$.

With gradient, aside from finding the root, we can also find the extrema, which is critical in optimization given a fixed function analytically. In _Notes on Multivariable Calculus_, this was done by setting the gradient to $0$. But numerically, by taking the new $x_(n+1)$ to be $x + delta x$ where $delta x$ is in the direction of $nabla f$, would usually give the direction to the nearby hill. Notice there are a lot of content and variations to this method. For example, by the changing the direction of movement to $-nabla f$ gives the valley. Overshooting the step size may land farm from the root. Or, the algorithm may get stuck in a cycle. Similar to lagrange multiplier, when subject to a constraint, a new algorithm should be used.

Practically, it is often a wise move to experiment a few off-the-shelf algorithms; however, formulating the problem is a more important aspect.

In engineering, constraint optimization could be modeled as, change design element $vb(p)$ that satisfies the constraint $vb(A(p)) vb(x) = vb(b(p))$, where $vb(x)$ represent a physical state, $vb(A)$ is the physical model and $vb(b)$ represent the physical constraint. With solved $vb(x)$, evaluate it with "satisfactory function" $f(vb(x(p)))$, as $vb(x)$ could be viewed as a function of $vb(p)$.

Hence, the crucial step of mathematical optimization becomes finding the gradient of $f(vb(x(p)))$, or $f(vb(A)^(-1) (vb(p)) vb(b)$. Thus, $ dif f & = f'(x) dot dif vb(x) \
      & = f'(x) dif (vb(A)^(-1)) vb(b) \
      & = - f'(x) vb(A)^(-1) dif vb(A) vb(A)^(-1) vb(b) \
      & = -f'(x) vb(A)^(-1) dif vb(A) vb(x). $
