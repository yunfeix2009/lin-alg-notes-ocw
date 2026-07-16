#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Introduction and Motivation],
  route: "intro",
)



taken grad of complicated objects, machine learning, grad descent

deriv of a function squaring a mat or inverses a mat

not a trivial generalization of scalar and vector calculus


apps: machine learning
parameter optim

stochastic grad descent
auto diff
backpropagation


app: physical
topology-optimized airplane wings

app: data sci, multivar statistics


auto differentiation
diff from numerical or symbolic



scalar: locally linearly. multivar, also locally planar, hyperplanar, etc.

holistic rather than by indices
#figure-wrapper(figure(image("/assets/image-5.png")))


$dif(A B) = A dif B + (dif A) B$
to find $grad (vb(x^top x)) = 2 vb(x^top x)$, done with the above vs. indices

derivative really is the linearization locally, lienar operators

$delta f = f(x + delta x) - f(x) approx f'(x) delta x + o(delta x)$
"ignoring" $o(delta x)$ gives $dif f = f'(x) dif x$

in this way, differentiation is a lienar operator between change in in and out (@ the thing that shows differentiation is lienar, in lienar trans)
also integral is linear

almost like multiplying by a matrix.
