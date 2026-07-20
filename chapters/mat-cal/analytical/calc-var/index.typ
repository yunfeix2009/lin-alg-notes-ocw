#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Calculus of Variations],
  route: "calc-var",
)
#definition[
  Define a functional as a function that maps a function to a number, usually real.
]
We still study the gradient of functionals $ dif f = f(u + dif u ) - f(u) = f'(u) [u] $ where $u in "vector space of functions"$ and $f(u) in RR$.

To define what a small variation of a function, $dif u$, means, we need the norm of a function, which is by the following definition of inner product of functions, minutely generalized from @def:func-inner.

#definition[
  Given complex functions $u$ and $v$ defined on the interval $[a, b]$, their inner product on $[a, b]$ is $ braket(u, v) = u dot v := integral_a^b bar(u(z)) v(z) dif z. $
]

Due to linearity of multiplication and integration, this definition does indeed satisfies the definition of a inner product @def:inner-product.

Thus, we can define the norm of a function as the following.
#definition[
  Fix function $u$, its norm on $[a, b]$ is $ norm(u) := sqrt(integral_a^b u^2 (x) dif x). $
]

#example[
  For a function (implicitly assume it is chosen such that the integral is legal) $u(x): [0, 1] -> RR$, find the gradient of $ f:= integral_0^1 sin(u(x)) dif x. $
]
#solution[
  $
    dif f & = f(u + dif u) - f(u) \
          & = integral_0^1 sin(u(x) + dif u(x)) - sin(u (x)) dif x \
          & = integral_0^1 cos(u(x)) dif u (x) dif x \
          & = cos(u(x)) dot u(x).
  $
  Thus, $ grad f = cos(u(x)). #qedhere $
]
#remark[
  This kind of derivative is termed as _Frechet derivative_.
  Moreover, from here, we can see the in a Banach space, the derivative, or gradient, really is just a linear operator that relates the change in the input to the change of the output.

]
