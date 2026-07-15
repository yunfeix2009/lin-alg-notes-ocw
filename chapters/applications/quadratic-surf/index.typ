#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Quadratic Surfaces],
  route: "quadratic-surf",
  description: [Quadratic Surfaces],
  label: <sec:qs>,
)
This section focuses how positive definite matrices (@sec:pdm) may be used as a method to study quadratic surfaces. 

=== Pure Quadratic
To tell a parabloid from a saddle, translating the origin such that the function becomes a quadratic form. Then, we may write the function as $vb(x)^top vb(A) vb(x)$ such that $vb(A)$ is symmetric.

Since $ grad (vb(x^top A x)) = 2 vb(A x),  $ $ grad^2 ((vb(x^top A x)) = 2 vb(A). $ However, linear dilation preserves eigenvectors while dilating eigenvalues by the same ratio, we conclude: 
$vb(A)$ having $2$ positive eigenvalues (positive definite) is equivalent to the function to be an upward parabloid ; $vb(A)$ having $1$ positive and $1$ negative eigenvalue is equivalent to the function being a saddle; $vb(A)$ having two negative eigenvalues implies the function is a downward parabloid. 

Note: the seeming abuse of notation of treating $vb(A)$ as a linear coefficient and $vb(x)^top$ as $vb(x)$ could be rigorously shown with expanding $vb(x^top A x)$ into summation and use the fact that $ grad (a x + b y) = a grad(x) + b grad(y) $ given $x$ and $y$ are independent. 

Alternatively, we could use the following expansion, $ vb(x^top A x) = lambda_1 (vb(v)_1^top vb(x)_1)^2 + lambda_2 (vb(v)_2^top vb(x)_2)^2 $ where $lambda_i$ is the eigenvalue and $vb(v)_i$ is the eigenvector of $vb(A)$ (justified could be found in the next subsection). 

=== Ellipsoid 

In Pure Quadratic, we implicitly let $vb(x^top A x)$ be the axis orthogonal to $op("span") vb(x)$ and stayed in $RR^3$ that is relatively easier to visualize. When $dim vb(x) = 3$, however, the space containing $vb(x^top A x)$ and $vb(x)$ becomes $RR^4$. Thus, we step back and study the level surface (points that lie on $f(vb(x)) = c$, where $c$ is a constant). 
#theorem[
  $vb(x^top A x) = c$ is an ellipsoid if $vb(A)$ is positive definite,  $dim vb(x) = 3$, and $c$ is a positive constant. 
]
#proof[
  Positive definiteness motivates spectral expansion, $ vb(x^top Lambda x) &= vb(x^top (Q Lambda Q^top) x) \ &= vb((x^top Q) Lambda (Q^top x)) \ &= vb((Q^top x)^top Lambda (Q^top x)) \ &= vb(y^top Lambda y)\ &= sum_(i=1)^3 lambda_i y_i^2 = 1, $ where $ y_i := vb(v)_i^top x_i. $
  Thus, $ (y_1)^2/(c/lambda_1) + (y_2)^2/(c/lambda_2) + (y_3)^2/(c/lambda_3) = 1. $

  Moreover, since $y_i = vb(v)_i^top x_i$, by the nature of dot product, $y_i$ is the coordinate of $x_i$ projected onto the eigenvector, $vb(v)_i$. Therefore, we have the very neat result that the ellipsoid has three principal directions in the direction of the eigenvectors of the coefficient matrix $vb(A)$ and that the length of each semi-axis is $sqrt(c/lambda_i)$, described by the eigenvalue. 
]
