#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Matrix Functions],
  route: "mat-func",
)

Here, we examine functions with the input as a matrix. The output may be a scalar, as in determinants, trace, etc; the output may be a matrix, as the inverse, power, or Gaussian elimination.


For example, a function $f(vb(A)) := vb(A)^3$. Then, $ f'(vb(A)) [dif vb(A)] = vb(A)^2 (dif vb(A)) + vb(A) (dif vb(A)) vb(A) + (dif vb(A)) vb(A)^2 $


#example[
  Find the derivative of a function that reverses a matrix: $ f(vb(A)):= vb(A)^(-1)). $
]
#solution[
  Since $ dif (vb(A A)^(-1)) = dif (vb(I)) = 0, $ $ (dif vb(A)) vb(A)^(-1) + vb(A) (dif vb(A)^(-1)) = 0 \ ==> dif vb(A)^(-1) = vb(A)^(-1) (dif A) vb(A)^(-1) = f'(vb(A)) [dif vb(A)]. $
]
