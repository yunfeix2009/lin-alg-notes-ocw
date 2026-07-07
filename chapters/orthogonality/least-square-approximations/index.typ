#import "../../../lib.typ":*
== Least Squares Approximations

In this section, we try to "solve" $vb(A x) = vb(b)$ when there is no solution. In other words, $vb(b) in.not C(vb(A))$, as $rank vb(A) > $ number of variables. 

This is a practical problems as when obtaining a value experimentally, measurements are taken many times, each time with noise. For example, when deciding the orbit of a satellite, a lot of measurements are taken, giving more than 6 necessary equations for the 6 orbit parameters. 

We aim to fine the "best" solution, that will be well-defined later in this subsection. But first, it is not optimal to arbitrarily select a few equations until the number of equations is reduced to the number of variables. Still in the case of experimental science, we take more measurements often to increase the reliability of the estimated result. In this context, throwing away measurements does not maximize the amount of information extracted from the measurements about the desired quantity. 

Let the error to be $norm(vb(b - p))$, where $vb(b)$ being the observational results and $vb(p)$ being the solvable vector, ie. in $C(vb(A))$. In the last section, it is proven that such $vb(p)$ is the projection of $vb(b)$ onto $C(vb(A))$. So, to minimize the error term that sums the squares of each individual data points' differences, the "best solution," $ hat(vb(x))$ satisfies $vb(A)^top vb(A) hat(vb(x)) = vb(A)^top vb(b), $ assuming that $vb(A)^top vb(A)$, which is not only square and symmetric, but is also invertible.

#theorem[
  $vb(A)^top vb(A)$ is invertible iff columns of $vb(A)$ are independent. 
]
#proof[
  Since invertible is equivalent to null space being the zero vector, it suffices to show that $N(vb(A)^top vb(A)) = N(vb(A))$, meaning columns of $vb(A)$ are independent. First, for $vb(x) in N(vb(A))$,$ vb(A)^top vb(A) vb(x) = vb(A)^top 0 = 0 ==> N(vb(A)) subset.eq N(vb(A)^top vb(A)). $

  To show $N(vb(A)^top vb(A)) subset.eq N(vb(A))$, suppose $vb(A)^top vb(A) vb(x) = 0$, then $ vb(x)^top vb(A)^top vb(A x) = (vb(A x))^top (vb(A x)) = 0. $ Thus, $vb(A x) = 0$.

]

