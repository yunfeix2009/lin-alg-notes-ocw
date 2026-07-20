#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Finding Roots],
  route: "rooting",
  label: <sec:rooting>,
)
Starting simple. To find the root of a function $f: RR -> RR$, recursively performing the following steps would obtain a numeric approximation of a root.
+ Linearize

  $f(x + delta x) approx f(x) + f'(x) delta x$
+ Find the root

  $0 = f(x+delta x) approx f(x) + f'(x) delta x ==> delta x = -f(x)/(f'(x))$
+ Update $x$

  $ x_(n+1) -> x_n - f(x)/(f'(x)). $


Then, when the function is multivariate, which is often the case in applications, generalizing $f'(x)$ to $grad f$ gives the change $ delta x = - f'(x)^(-1) f(x). $

However, practically, the initial guess of the root is important as a poor choice of such would take the algorithm in unexpected ways such as failing to converge. More studies on which could be find regarding Newton fractals.
