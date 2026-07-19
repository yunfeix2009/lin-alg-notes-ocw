#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Equivalences],
  route: "equiv",
)

It is possible to look at one "adjective" of linear algebra from many angles, or hierarchies of the language of linear algebra. This view, due to the dense interconnections of linear algebra aids in stringing together seemingly different concepts of linear algebra.

For example, matrix $vb(A)$ is invertible is equivalent to any of the following statements
+ (Vectors) Column vectors of $vb(A)$ are independent.
+ (Matrices) $rank vb(A) = n$
+ (Subspaces) $N(vb(A))$ only contains the zero vector.
+ (Transformations) The transformation $T(vb(x)) = vb(A x)$ is injective: $vb(A x = A y) ==> vb(x = y)$.

Moreover, the following statements are also equivalent to the given.
+ The rows of $vb(A)$ span $RR^n$.
+ All columns of $vb(A)$ are pivot columns, or $vb(R) = mat(vb(I); 0)$.
+ The row space is $RR^n$.
+ $vb(A^top A)$ is invertible
+ The kernel of $T(vb(x))$ contains only the zero vector.
+ The columns of $vb(A)$ form a basis of its column space.
