#import "/lib.typ": *

== Dot Product

#definition[
For vectors $bold(a) = ( a_1, a_2, dots, a_n )$
and
$bold(b) = ( b_1, b_2, dots, b_n )$,
their *dot product* is defined by
$bold(a) dot bold(b)
:= sum_(i=1)^n a_i b_i.$
_The dot product is a scalar._
]<def:dot-product>

#definition[
For a fixed vector with components real numbers  $vb(a)=(a_1,dots,a_n)$, its norm is defined as, $norm(bold(a))
=
sqrt(sum_(i=1)^n a_i^2)
$.
]
Notice that $vb(a) dot vb(a) = norm(vb(a))^2$

Also, it is easy to verify that this way of measuring distance is symmetric, positive definite, and satisfies the triangle inequality, meaning that this way of measuring distance is a metric on $RR^n$. 

#theorem[
For two given vectors of the same dimension, $vb(a)=(a_1,dots,a_n)$ and $vb(b)=(b_1,dots,b_n)$, $bold(a) dot bold(b)
=
norm(bold(a)) norm(bold(b)) cos theta.
$
]<thm:dot-product-geo>

#proof[
By the Law of Cosines, if $bold(c) = bold(a) - bold(b),$ then

$
norm(bold(c))^2
=
norm(bold(a))^2
+
norm(bold(b))^2
-
2 norm(bold(a)) norm(bold(b)) cos theta.
$

On the other hand,

$
norm(bold(c))^2
=
bold(c) dot bold(c)
=
(bold(a) - bold(b)) dot (bold(a) - bold(b))
$

$
=
norm(bold(a))^2
+
norm(bold(b))^2
-
2 (bold(a) dot bold(b)).
$

Comparing the two expressions yields

$
bold(a) dot bold(b)
=
norm(bold(a)) norm(bold(b)) cos theta. #qedhere
$
]

#corollary[
For two given vectors $vb(a)$ and $vb(b)$, $
bold(a)$ is orthogonal to $
bold(b)$
iff $bold(a) dot bold(b) = 0.
$
]

#example[
  (18.03 Pset 1 PartII p2)   Let $vb(u), vb(v)$ be vectors.

  (a) Show that
  $
    1/4 (norm(vb(u) + vb(v))^2 - norm(vb(u) - vb(v))^2) = vb(u) dot vb(v).
  $

  (b) Given two non-zero vectors $vb(u)$ and $vb(v)$, find the unit vector which bisects the smaller angle between them.
]

#solution[
  (a) We proceed by expanding the left side: $ "LHS" = 1/4 ((vb(u)^2 + 2 vb(u) dot vb(v) + vb(v)^2) - (vb(u)^2 - 2 vb(u) dot vb(v) + vb(v)))^2) = vb(u) dot vb(v).$

  (b) Define $hat(vb(x)) := vb(x)/norm(vb(x))$. The answer is $ (hat(vb(u)) + hat(vb(v)))/norm(hat(vb(u)) + hat(vb(v)))^2 $
]