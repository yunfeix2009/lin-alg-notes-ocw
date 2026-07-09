#import "../../../lib.typ": *
== Differential Equations

This section discusses the first order linear differential equation, as an application of powers of matrices using eigenvalues and eigenvectors.

#example[
  Fix initial condition $vb(u) (0) = mat(1; 0)$, solve the differential equations $ cases(dv(u_1, t) = -u_1 + 2 u_2, dv(u_2, t = u_1 - 2 u_2)). $
]
#solution[
  Let $ vb(A) := mat(-1, 2; 1, -2). $ Then, $ dv(vb(u), t) = vb(A u). $

  Notice that $e^(lambda t) vb(x)_1$ is a solution as its derivative is $ lambda e^(lambda t) vb(x)_1 = e^(lambda t) vb(A) vb(x)_1. $
  Therefore, we proceed to find the eigenvalues and eigenvectors of $vb(A)$.
  Notice $vb(A)$ is singular, one eigenvalue must be $0$. Since $sum_"eigenvalues" lambda = trace vb(A)$, the other eigenvalue is $-3$.

  The eigenvector corresponding to $lambda = 0$ is the basis of $N(vb(A))$, $ vb(x)_1 = mat(2; 1). $
  For the eigenvector corresponding to $lambda = -3$, it is the basis of $N(mat(2, 2; 1, 1))$. Hence, $ vb(x)_2 = mat(1; -1). $

  Thus, the two special solutions are $e^(0 t) mat(2; 1)$ and $e^(-3 t) mat(1; -1)$. The general solution is a linear combination of the two special solutions. Hence, $ u(t) = c_1 e^(0 t) mat(2; 1) + c_2 e^(-3 t) mat(1; -1). $

  The initial condition gives $ mat(1; 0) = c_1 dot 1 dot mat(2; 1) + c_2 dot 1 dot mat(1; -1) ==> c_1 = c_2 = 1/3.  $

  So, $ u(t) = 1/3(mat(2; 1) + e^(-3 t) mat(1; -1)). $
]

The eigenvalues, as coefficients of $t$ on the exponent, provide insights on the differential equation. 
+ Stability ($u(t) -> 0$)
  This occurs when $e^(lambda t) -> 0$, or $Re(lambda) < 0$. This implies that, in the $2 times 2$ case, $trace<0$ and $det > 0$. 
+ Steady State ($u(t) -> c$)
  $lambda_1 = 0$ and non-zero eigenvalues $Re(lambda)< 0$ . 
+ Blow up 
  Any $Re(lambda)> 0$.


Now we see what diagonalization implies in solving linear differential equations. 
Fix $ dv(vb(u), t) = vb(A u). $ Let $ vb(u) = vb(S v), $ where $vb(S)$ is the eigenvector matrix of $vb(A)$. Then, $ vb(S) dv(vb(v), t) = vb(A S v) ==> dv(vb(v), t) = vb(S)^(-1) vb(A S v) = vb(Lambda v). $ So, $ vb(v)(t) = e^(vb(Lambda) t) vb(v)(0) ==> vb(u) (t) = vb(S) e^(vb(Lambda) t) vb(S)^(-1) vb(u) (0). $ Thus, we arrive at the analogue of $vb(A = S Lambda S)^(-1)$, $ e^(vb(A) t) = vb(S) e^(vb(Lambda) t) vb(S)^(-1). $ 

The matrix in the exponent is rather an abuse of notation. $ exp(vb(M)) := vb(I + M + M^2/2 + M^3/6 + dots.c ), $ Taylor Series!

Then, $ e^(vb(A) t) = sum_(n=0)^oo ((vb(A)t)^n)/n! = sum_(n=0)^oo (vb(S) (vb(Lambda)t)^n vb(S)^(-1))/(n!) = e^(vb(Lambda)t). $ The benefit of working with $e^(vb(Lambda) t)$ is that it is diagonal, with $ (e^vb(Lambda) t)_(i i) = e^(lambda_i t). $


#example[
  Solve the differential equation $ y''' + 2y'' - y' - 2y = 0 $ for the general solution. 
]
#solution[
  Let $ vb(u):= mat(y''; y'; y). $ Then, $ dv(vb(u), t) = mat(-2, 1, 2; 1, 0, 0; 0, 1, 0) mat(y''; y'; y). $
  Let $ vb(A) := mat(-2, 1, 2; 1, 0, 0; 0, 1, 0). $ Then, $ dv(vb(u), t) = vb(A) vb(u). $

  Let the eigenvalues of $vb(A)$ be $lambda_1$, $lambda_2$, and $lambda_3$ and its eigenvectors be $vb(x)_1$, $vb(x)_2$, and $vb(x)_3$. The general solution is $ vb(u) = vb(S)^(-1) e^(vb(Lambda) t) vb(S) $

  The characteristic equation gives $ (1-lambda)(1+lambda)(2+lambda) =0. $ So, $ (lambda_1, lambda_2, lambda_3) = (1, -1, -2). $ Then, $ (vb(x)_1, vb(x)_2, vb(x)_3) = mat(1, 1, 4; 1, -1, -2; 1, 1, 1). $
  So, $ vb(u) = c_1 e^(t) mat(1; 1; 1) + c_2 e^(-t) mat(1; -1; 1) + c_3 e^(-2t) mat(4; -2;1).#qedhere $

]