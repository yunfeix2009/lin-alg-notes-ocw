#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Derivative of Eigenproblems],
  route: "eigen",
)

Here, we differentiate the "eigen-quantities" of a matrix. Since orthogonal matrices play a role for symmetric matrices, differentiation wrt constraints will be discussed as well.

Take the extreme case of an orthogonal matrix, whose defining property is $vb(Q)^top vb(Q = I)$, $vb(x^top x = 1)$, a sphere.

Notice that only differentiation in the direction tangent to the surface of the sphere is non-zero, as the radial direction doesn't exist.
Algebraically, $q^top dif q = 0$.
