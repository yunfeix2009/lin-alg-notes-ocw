#import "../../../lib.typ":*
== Definition and Properties of Linear Transformations

Linear Transformations is a idea that motivates matrices, and may be used to start the entire discussion on linear algebra, as how $3B 1B$ does it. 

#definition[
  A linear transformation $T:A -> B$ is a mapping that satisfies $ forall a in A, T(c a_1 + d a_2) = c T(a_1) + d T(a_2) $ where $c$ and $d$ are constants. 
]

#example[
  Show that projecting every vector on a plane to a given vector on the plane is a linear transformation $T:RR^2 -> RR^2$. 
]
#solution[
  This mapping satisfies linearity. 
]
#example[
  Show that the transformation $ T:RR^2 -> RR^2, T^vb(v) = vb(v) + vb(v)_0 $ is not a linear transformation. 
]
#solution[
  $ T(2 vb(v)) = 2vb(v) + vb(v)_0 != 2vb(v) + 2 vb(v)_0 = 2 T(vb(v)). $ This example shows that, heuristically, a simple transformation is not necessarily linear.
]
#example[
  Rotation is a linear transformation. 
]
#example[
  $T(vb(v)) = vb(A x)$ where $vb(A)$ is a matrix is a linear transformation. 
]
#remark[
  This is a crucial linear transformation. In fact, by choosing appropriate bases, all linear transformations could be described by a matrix. Multiplying by a matrix is indeed a linear transformation as matrix multiplication satisfies the additive distributive property. 
]

For all the previous example transformations, the coordinate system is not necessary in describing it, as long as the origin is given. Now, to describe the transformation with a matrix, we need to set up the bases of the space. And, given what the transformation does to every bases vector, the transformation of an arbitrary vector could be found as there is a unique representation of it as a linear combination of the bases vectors. This fact is a direct consequence of the linearity of linear transformations. 

Now, the question becomes how to construct a matrix $vb(A)$ that describes a certain transformation. Fix linear transformation $T:RR^n -> RR^m$. Let the bases of $RR^n$ be described by ${vb(v)_i}$ and the bases of $RR^m$ be described by $vb(u)_j$. Assume $ vb(v)_i = sum_(j=1)^m a_(i j) vb(u)_j. $ Then $vb(A)_(i j) = a_(i j)$ does the job as a vector in $RR^n$ could be decomposed into a linear combination of ${vb(v)_i}$ that each transform to a linear combination of ${vb(u)_j}$, described by $vb(A)$. So, $ vb(A V = U). $

#example[
  Show that the differentiation operator is linear $ dv(, x): C^1 (x) -> C^0 (x) $ where $C^1$ are continuously differentiable functions and $C^0$ are continuous functions. Then, find the transformation matrix $vb(A)$ that takes the derivative of $c_1 + c_2 x + c_3 x^2$. 
]
#solution[
  $dv(, x)$ is a linear transformation as $ dv(, x) (c f(x)) = c dv(, x) (f(x)) $ and $ dv(, x) (f(x) + g(x)) = dv(, x) (f(x)) + dv(, x) (g(x)). $

  Moreover, since $ dv(, x) (c_1 + c_2 x + c_3 x^2) = c_2 + 2 c_3 x, $ $ vb(A) mat(c_1; c_2; c_3) = mat(c_2; 2 c_3). $ Hence, $ vb(A) = mat(0, 1, 0; 0, 0, 2). $
]