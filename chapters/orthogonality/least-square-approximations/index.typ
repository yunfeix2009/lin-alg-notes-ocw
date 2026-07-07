#import "../../../lib.typ":*
== Least Squares Approximations

In this section, we try to "solve" $vb(A x) = vb(b)$ when there is no solution. In other words, $vb(b) in.not C(vb(A))$, as $rank vb(A) > $ number of variables. 

This is a practical problems as when obtaining a value experimentally, measurements are taken many times, each time with noise. For example, when deciding the orbit of a satellite, a lot of measurements are taken, giving more than 6 necessary equations for the 6 orbit parameters. 

We aim to fine the "best" solution, that will be well-defined later in this subsection. But first, it is not optimal to arbitrarily select a few equations until the number of equations is reduced to the number of variables. Still in the case of experimental science, we take more measurements often to increase the reliability of the estimated result. In this context, throwing away measurements does not maximize the amount of information extracted from the measurements about the desired quantity. 

Let the error to be $norm(vb(b - p))$, where $vb(b)$ being the observational results and $vb(p)$ being the solvable vector, ie. in $C(vb(A))$. In the last section, it is proven that such $vb(p)$ is the projection of $vb(b)$ onto $C(vb(A))$. So, to minimize the error term that sums the squares of each individual data points' differences, the "best solution," $ hat(vb(x))$ satisfies $vb(A)^top vb(A) hat(vb(x)) = vb(A)^top vb(b), $ assuming that $vb(A)^top vb(A)$, which is not only square and symmetric, but is also invertible.

#theorem[
  $vb(A)^top vb(A)$ is invertible iff columns of $vb(A)$ are independent. 
]<thm:keyeqnsolvability>
#proof[
  Since invertible is equivalent to null space being the zero vector, it suffices to show that $N(vb(A)^top vb(A)) = N(vb(A))$, meaning columns of $vb(A)$ are independent. First, for $vb(x) in N(vb(A))$,$ vb(A)^top vb(A) vb(x) = vb(A)^top 0 = 0 ==> N(vb(A)) subset.eq N(vb(A)^top vb(A)). $

  To show $N(vb(A)^top vb(A)) subset.eq N(vb(A))$, suppose $vb(A)^top vb(A) vb(x) = 0$, then $ vb(x)^top vb(A)^top vb(A x) = (vb(A x))^top (vb(A x)) = 0. $ Thus, $vb(A x) = 0$. Therefore, the two conditions that are both equivalent to the same null space only containing the zero vector, must be equivalent. ]
Going back to minimizing the sum of squares of the error terms, in comparison to the approach emphasizing algebraic manipulation with the method of multivariable calculus (See _Notes on Multivariable Calculus_, Section $2.3.2$), this approach with linear algebra interprets the sum of squares in a rather geometric way, as the length of a vector to minimize, capturing the key point of orthogonality. With this birds-eye lens, the limitation of the approach to regression with linear algebra becomes apparent. In minimizing the error term with finding the critical points with calculus, the notion of "sum of least squares" could be easily generalized without a sudden spike in complexity. However, since the Pythagorean-based metric is so prevalent when dealing with $RR^n$, when the goal of minimization becomes the direct "sum of errors," a new metric must be applied and the calculation must be entirely screened for flaws. In fact, there are many cases where "sum of squares" is not the optimal object to minimize, when outliers are consequential for example.  

#example[
  Find the best-fitting line (one that minimizes sum of squares of vertical difference between data points and the line) given ${(1, 1), (2, 2), (3, 2)}$. 
]
For comparison, we first show the calculus based method. 
#solution[
  Let the desired line be $y= C + D x$.
  Each individual error term, $e_i$ is $(y_i - d_i)^2 = (C + D i - d_i)^2$, where $d_i$ represent the experimental data at $x = i$. 

  Thus, $ e_Sigma &= e_1 + e_2 + e_3 \ &= (C + D - 1)^2 + (C + 2D-2)^2 + (C + 3D - 2)^2. $
  Taking partial derivatives wrt $C$ and $D$, $ pdv(e_Sigma, C) &= 2(C + D - 1) + 2(C + 2D - 2) + 2(C + 3D-2) \ &= 6C + 12D - 10 = 0 \ &==> 3C + 6D = 5; $
  $ pdv(e_Sigma, D) &= 2(C + D -1 ) + 2 dot 2(C + 2D - 2) + 2 dot 3(C + 3D - 2) \ &= 12 C + 28 D - 22 = 0 \ &==> 6C + 14D = 11. $
  Thus, the problem is reduced to the linear system that is at the end of the next solution. 
]

Now, with projection onto subspaces, we have the following solution. 
#solution[
  Let the desired line be $y= C + D x$. Then we aim to "solve" the linear system $ cases(C + D = 1, C + 2 D = 2, C + 3 D = 2). $ Or, $ mat(1, 1; 1, 2; 1, 3) mat(C; D) = mat(1; 2; 2). $
  Since the rank of the coefficient matrix is greater than the number of variables and $mat(1; 2; 2)$ is not in the column space of the coefficient matrix, this system is not solvable. However, to find the closest "$vb(b)$" to the given $vb(b)$, project $vb(b)$ onto $C(vb(A))$. By the (Euclidean) distance-minimizing nature of projection, this step naturally minimizes the error term, which is $vb(b - p)$, where $vb(p)$ is the resulting vector of projection. 

  Hence, let $ hat(vb(x)) = mat(hat(vb(C)), hat(vb(D))) $ being the desired $C$ and $D$ values, we have $ vb(A)^top (vb(b) - vb(p)) = vb(A)^top (vb(b) - vb(A) hat(vb(x))) = 0. $ Therefore, $ vb(A)^top vb(A) hat(vb(x)) = vb(A)^top vb(b). $
  The left side coefficient is 
  $ vb(A)^top vb(A) = mat(1, 1, 1; 1, 2, 3) mat(1, 1; 1, 2; 1, 3) = mat(3, 6; 6, 14). $
  The right side becomes
  $ mat(1, 1, 1; 1, 2, 3) mat(1; 2; 2) = mat(5; 11). $
  Therefore, the equation that gives the desired $hat(vb(x))$ is $ mat(3, 6; 6, 14) hat(vb(x))= mat(5; 11). $
  In terms of linear equations, $ cases(3 C + 6 D = 5, 6C + 14 D = 11) ==> cases(C = 2/3, D = 1/2). #qedhere $
]
#remark[
  When assumed the key equation $ vb(A)^top vb(A) hat(vb(x)) = vb(A)^top vb(b), $ is solvable. This assumption is grounded upon the  @thm:keyeqnsolvability, knowing the columns of $vb(a)$ are independent. 
]