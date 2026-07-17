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


define gradient, generalized to be the linear operator that turns $dif x$ to $dif f$ through dot product. Hence, we also need a way to generalize dot product.
#definition[
  Fix two vectors $vb(v)$ and $vb(u)$ from a vector space $V$, the inner product maps $V^2$ to $RR^+ union {0}$ that is symmetric, equal to $0$ iff one of $vb(u) = 0 or vb(v) = 0$ and linear wrt each vector.
]
In pure math, often $<x, y>$ is used and $braket(x, y)$ is used in physics. However, in here, we will remain in $dot$

#definition[
  A continuous vector space with well-defined inner product is a Hilbert space.
]
More generally, we define Banach space.
#definition[
  A continuous vector space with well-defined norm is a Banach space.
]
Generally, given $V = RR^n$, the inner product could be $vb(x^top W y)$, where $vb(W)$ is symmetric and positive definite, which is a generalized weighted dot product.

For $V = RR^(m times n): m times n "matrices"$, inner product of matrix $vb(A) in RR^(m times n)$ and $vb(B) in RR^(n times m)$ could be defined as the dot product of $op("vec")(vb(A)) dot op("vec") (vb(B))$, which is equivalent to $ op("vec")(vb(A))^top op("vec")(vb(B)) = trace(vb(A^top B)). $ This is known as the Frobenius inner product, which gives rise to Frobenius norm, @eqn:frobenius.

With generalized gradient and inner product, we solve the following example problem.
#example[
  Let function $f : RR^(m times n) -> RR = norm(vb(A))_F = sqrt(trace(vb(A^top A)))$ be the Frobenius norm. Find the $grad_vb(A) f$
]
#solution[
  $
    dif f & = (dif trace(vb(A^top A)))/(2 norm(vb(A))_F) \
          & = trace(dif (A^top A))/(2 norm(vb(A))_F) \
          & = (trace(dif (vb(A^top)) vb(A)+ vb(A^top) dif vb(A)))/(2 norm(vb(A))_F) \
          & = (trace(dif (vb(A)^top) vb(A)) + trace(vb(A)^top dif vb(A)))/(2 norm(vb(A))_F) \
          & = (vb(A)^top dif vb(A))/norm(vb(A))_F \
          & = vb(A)/norm(vb(A))_F dot (dif vb(A)).
  $
  Thus, $ grad_vb(A) f = vb(A)/norm(vb(A))_F. $
]
#remark[
  This example resembles greatly to the gradint of the norm of a vector as in @emp:grad-norm.
]

#example[
  Let $ f: RR^(m times n) -> RR = vb(x)^top vb(A y) $ for $vb(x) in RR^m$and $vb(y) in RR^n$.  Find $grad_vb(A) f$.
]
#solution[
  $ dif f & = vb(x^top dif A y) \
        & = trace(vb(x^top dif A y)) \
        & = trace(vb(y x^top dif A)) #tag[(by cyclicity of the trace)] \
        & = (vb(y x^top))^top dot dif vb(A) \
        & = (vb(x y^top)) dot dif vb(A). $ Thus, $grad_vb(A) f = (vb(x y^top))$.
]


To fine the gradient of the determinant function, we first make the following definitions.
#definition[
  Given invertible matrix $vb(A)$, its adjugate is $ op("adj")(vb(A)) = det(vb(A)) vb(A)^(-1). $
]
#definition[
  The cofactor matrix of invertible matrix $vb(A)$ is $op("adj")(A)^top$.
]
