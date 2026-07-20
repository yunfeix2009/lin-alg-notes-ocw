#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Applications of Matrix Calculus],
  route: "app",
  children: [
    #include "root/index.typ"
    #include "optimization/index.typ"
  ],
  label: <sec:app-mat-calc>,
)

In engineering, constraint optimization could be modeled as, change design element $vb(p)$ that satisfies the constraint $vb(A(p)) vb(x) = vb(b(p))$, where $vb(x)$ represent a physical state, $vb(A)$ is the physical model and $vb(b)$ represent the physical constraint. With solved $vb(x)$, evaluate it with "satisfactory function" $f(vb(x(p)))$, as $vb(x)$ could be viewed as a function of $vb(p)$.

Hence, the crucial step of mathematical optimization becomes finding the gradient of $f(vb(x(p)))$, or $f(vb(A)^(-1) (vb(p)) vb(b)$. Thus, $ dif f & = f'(x) dot dif vb(x) \
      & = f'(x) dif (vb(A)^(-1)) vb(b) \
      & = - f'(x) vb(A)^(-1) dif vb(A) vb(A)^(-1) vb(b) \
      & = -f'(x) vb(A)^(-1) dif vb(A) vb(x). $
