#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Derivatives in Higher Dimensions: Jacobians and Matrix Functions],
  route: "diff-high-order",
)


$ dif f = f'(x) dif vb(x) = nabla dif vb(x). $
here, $grad$ is a row vector and the gradeitn is a dot product

#example[
  find the derivative of $f(x) = vb(x^top A x)$
]
#solution[
  no components, they are bad. on eway, we can do it with def.

  $
    f'(x) & = f(vb(x + dif x)) - f(vb(x)) \
          & = vb((x + dif x)^top A (x + dif x) - x^top A x) \
          & = vb(x^top A x + (dif x)^top A x + x^top A (dif x) + (dif x)^top A x^top - x^top A x) \
          & = vb((dif x)^top A x + x^top A (dif x)) \
          & = vb(x^top (A^top + A) (dif x)).
  $
  Notice that the last equality is due to $ vb((dif x )^top A x) = vb((dif x)^top A x)^top = vb(x^top A^top (dif x)).#qedhere $
]

we present a faster solution.
#solution[

]


define vector function



another thing: vector in, vector out. $ f: RR^n -> RR^m. $
Hence, $f'$ is the linear operator that converts a n-D vector to an m-D, so $m times n$. This matrix is the Jacobian $vb(J)$

Component wise, $vb(J)_(i j) = pdv(f_i, x_j)$, similar to covariance matrix typu shitu

If $f(vb(x)) = vb(A x)$, then $ dif f = vb(A (x +)) dif vb((x) - A x) = vb(A dif x). $
Hence, $f'(x) = vb(A)$


By associativity of multiplication, since $ f(vb(x)) = (a compose b compose c) (vb(x)) ==> a'b'c' (vb(x)) = (a'b')c' (vb(x)) = a'(b'c') (vb(x)). $


The latter, inside out, is defined as forward mode differentiation and the former, outside in, is defined as reverse mode differentiation.

The order of operation matters in terms of cost as complexity. A matrix multiplication of $ m times p = (m times q) dot (q times p). $ Hence, this results in $m p$ dot products of length $q$. A dot product of length $q$ is $q$ multiplication and $q-1$ addition. This results in overall complexity of $m p q$ scalar operations.

In the case of large scale optimization with significant amount of intermediate functions and result in a scalar output, loss function in machine learning for example, optimizing order of operation becomes important.


For example, when the result of multiplication is $ (1 times n) = (1 times n) dot (n times n) dot (n times n), $ forward mode gives $O(n^3)$ where reverse mode gives $O(n^2)$.
