#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Applications of Determinants],
  route: "determinant-applications",
  description: [Applications of Determinants],
)
Now many properties and a formula of determinants have been established. As promised, there are numerous consequential applications of determinants, here we present a few.

=== Inverse

#definition[
  Fix a square matrix $vb(A)$, let its cofactor matrix $vb(C)$ be defined as $vb(C)_(i j) = vb(A)_(i j)$.
]
#lbl(<thm:inverse>, theorem[
  Fix square matrix $vb(A)$, $ vb(A)^(-1) = 1/(det vb(A)) vb(C)^top, $ where $vb(C)$ is the cofactor matrix of $vb(A)$.
])
#proof[
  It suffices to show $vb(A) vb(C)^top = det (vb(A)) vb(I)$.
  By the cofactor expansion of the determinant, the diagonal elements of $vb(A C)^top_(i i) = det vb(A)$. To show that $vb(A C)^top_(i j)$ where $i != j$ is $0$, due to its resemblance with the form of a cofactor expansion of the determinant, we construct a new matrix from $vb(A)$ except that its i-th column is $vb(A)$'s j-th column. In this way, $vb(A C)^top_(i j)$ becomes the determinant of the new matrix, which is $0$ as it is singular with rank one less than $vb(A)$.
]

#remark[
  Compared to the rather manual Gauss-Jordan method of finding the inverse by augmenting it with an identity matrix then performing elimination and back substitution, this more explicit, algebraic identity answers questions such as how does $vb(A)^-1$ change as $vb(A)'_11 = vb(A)^11 + Delta$.
]

From this theorem, given a linear system $vb(A x = b)$, we may write $ vb(x) = 1/(det vb(A)) vb(C)^top vb(b). $

Each individual solution, $ vb(x)_i = 1/(det vb(A)) (vb(C)^top vb(b))_i. $ The $(vb(C)^top vb(b))_i$ term motivates it as the determinant of a certain matrix, denote which as $vb(B)_i$. From the "column picture" of matrix multiplication, $vb(C)^top vb(b)$ is a linear combination of columns of $vb(C)^top$. Hence, $vb(B)_i$ is $vb(A)$ with the $i$-th column replaced with $vb(b)$.

This way of finding $vb(x)$ is known as _Cramer's Rule_. Although it provides great algebraic insights on solving linear systems, it is incredibly inefficient in terms of algorithmic complexity, as each individual variable requires computing the determinant of a matrix that is of the same dimensions as $vb(A)$. In practice, elimination is widely applied in solving linear systems instead.


=== Volume
#theorem[
  Fix three vectors, $vb(v)_1$, $vb(v)_2$, and $vb(v)_3$. The volume of the parallelepiped formed by the three vectors is $det mat(vb(v)_1, vb(v)_2, vb(v)_3)^top$. ]
#proof[One elegant way to prove this is to show that the volume satisfies the three defining properties of the determinant. Firstly, the volume  of the parallelepiped formed by $vu(i), vu(j)$ and $vb(k)$ is just the unit cube, with volume $1$. Then, swapping two vectors reverses the chirality of the three vectors, thereby reversing the sign of the (signed) volume. Finally, to show that linearity by rows is satisfied, notice that dilating the parallelepiped along one of the three vectors affects its volume linearly and slicing the parallelepiped with a plane parallel to that formed by two of the three vectors result in the two parallelepipeds formed by the two vectors and the split leftover vector.  ]
#remark[
  Thus, the volume of the tetrahedron with vertices the origin and three vectors $vb(v)_1$, $vb(v)_2$, and $vb(v)_3$ becomes $ 1/6 det mat(vb(v)_1, vb(v)_2, vb(v)_3)^top. $
]

This provides a way of finding, or defining volumes of analogues of parallelepipeds in higher dimensions.

Additionally, since the orthogonal vectors form a rotated unit cube, geometrically, with volume $1$, $abs(det vb(Q)) = 1$ where $vb(Q)$ is a $3$-dimensional orthogonal matrix. This makes sense as $ vb(Q)^top vb(Q) = vb(I) ==> det vb(I) = det (vb(Q)^top vb(Q)) = det (vb(Q)) det (vb(Q)) = 1. $

Degenerating to triangles with vertices $(0, 0), (a, b)$, and $(c, d)$, $ op("area") triangle = 1/2 det mat(a, b; c, d). $ Without assuming one vertex is at the origin, we find the volume of the parallelepiped with the base as that triangle doubled and height $1$, $ op("area") triangle = 1/2 det mat(x_1, y_1, 1; x_2, y_2, 1; x_3, y_3, 1). $

In practice, rather than directly computing this determinant, it is often more convenient to shift the origin to one vertex, as translation preserves area. In terms of linear algebra, we are finding the determinant of a new matrix after elimination canceling some $1$'s. 

Furthermore, since a polygon could be triangulated, its area could be found as the sum of many triangles, whose area could then be expressed as determinants. The shoelace formula captures this intuition. 

#theorem[
  Let
  $
    P_1 = (x_1, y_1),\,
    P_2 = (x_2, y_2),\,
    dots,\,
    P_n = (x_n, y_n)
  $
  be the vertices of a simple polygon listed in counterclockwise order, and let
  $
    P_(n+1) = P_1.
  $
  Then the area of the polygon is

  $
    A
    = 1/2 abs(
      sum_(i=1)^n (
        x_i y_(i+1) - x_(i+1) y_i
      )
    ).
  $
]

#proof[
The determinant of two vectors gives the signed area of the parallelogram they span. Hence, the signed area of the triangle with vertices $O$, $P_i$, and $P_(i+1)$ is

$
  1/2 det
    mat(
      x_i, x_(i+1);
      y_i, y_(i+1)
    )
  .
$

Summing these signed triangle areas over all consecutive pairs of vertices,

$
  A
  = 1/2 sum_(i=1)^n
    det
      mat(
        x_i, x_(i+1);
        y_i, y_(i+1)
      )
    .
$

The signed areas of regions outside the polygon cancel, leaving precisely the signed area enclosed by the polygon. Expanding each determinant,

$
  det
    mat(
      x_i, x_(i+1);
      y_i, y_(i+1)
    )
  
  =
  x_i y_(i+1) - x_(i+1) y_i.
$

Therefore,

$
  A
  =
  1/2
  sum_(i=1)^n
  (
    x_i y_(i+1)
    -
    x_(i+1) y_i
  ).
$

Finally, taking the absolute value removes the dependence on the orientation of the vertices, yielding

$
  A
  =
  1/2 abs(
    sum_(i=1)^n
    (
      x_i y_(i+1)
      -
      x_(i+1) y_i
    )
  ).
$

This is precisely the Shoelace Formula.
]

The following subsection presents cross product, from _Notes on Multivariable Calculus_, Section 1.4, defined with determinants, that could also be used in finding volumes of parallelepipeds. 
