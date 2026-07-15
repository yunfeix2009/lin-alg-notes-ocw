#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Extremum of Multivariable Functions],
  route: "extremum",
  description: [Extremum of Multivariable Functions],
  label: <sec:extremum>,
)
In _Notes on Multivariable Calculus_ by _Saint Even, et al._, we discussed the second derivative test for classifying critical points—that is, determining whether a critical point is a local maximum, local minimum, or saddle point.

The Second Derivative Test is as following. 
Define the second derivatives for a twice-differentiable two-variable function $f(x, y)$, $pdv(f, x, 2) = pdv(pdv(f, x), x) = f_(x x)$. We also have $f_(x y) = pdv(f, x, y) = pdv(f, y, x) = f(y, x)$. 

Define the following quantities for the second-derivative test assuming $(x_0, y_0)$ is a critical point, $ cases(A = f_(x x) (x_0, y_0), B = f_(x y) (x_0, y_0), C = f_(y y) (x_0, y_0)). $

Then, we have $ f "has a"  cases( "local minimum" & "if" A C - B^2 > 0 and A>0, "local maximum" & "if" A C - B^2 > 0 and A < 0, "saddle point" &"if" A C - B^2< 0, "inconclusive" &"if" A C - B^2 = 0). $

This result is proven in Section $2.3.1$ of _Notes on Multivariable Calculus_ with relatively involved Taylor Series expansion, making the conditions seem arbitrary. 

However, this test could be shown with positive definite matrices, @sec:pdm. Generally, with more than $n$ variables $vb(x) = {x_n}$, define Hessian matrix $ vb(H)$ such that $ vb(H)_(i j) = f_(x_i x_j). $ Fix critical point $vb(x)_0$, $vb(x)_0$ is a minimum iff $vb(H)$ is positive definite and maximum iff $vb(H)$ is "negative definite," meaning all eigenvalues negative. This is due to @thm:pdm, $ forall vb(x), vb(x)^top vb(A) vb(x) > 0 <==> vb(A) "is positive definite". $ 

Satisfyingly, through the lens of linear algebra, the rather cumbersome conditions above translates neatly to signs of the eigenvalues of the Hessian matrix. 
  
