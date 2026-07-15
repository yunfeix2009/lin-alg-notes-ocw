#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Projections onto Subspaces],
  route: "projection",
  description: [Projections onto Subspaces],
)
We begin by considering projecting a vector onto another vector. 
#definition[
Fix vectors $vb(a)$ and $vb(b)$, the projection of $vb(b)$ onto $vb(a)$ is a vector $vb(p)$ that is $c vb(a)$ and $vb(b) - vb(p) perp vb(p)$ are orthogonal. 
]
In terms of dot product, $ (c vb(a)) dot (vb(b) - c vb(a)) = 0, $ or $ vb(a)^top (vb(b) - c vb(a)) =0. $ Thus, $ vb(a)^top vb(b) = c vb(a)^top vb(a), $ $ c = (vb(a)^top vb(b))/(vb(a)^top vb(a)). $

The projection $vb(p)$ becomes $ c vb(a) = (vb(a)^top vb(b))/(vb(a)^top vb(a)) vb(a) = vb(a a)^top /(vb(a)^top vb(a)) vb(b). $ Note that here, the denominator is a scalar, namely $norm(vb(a))^2$, but the top is a matrix. Therefore, the projection could be seen as, for a given $vb(a)$, a matrix acts on an input vector $b$, producing an output, which is the projection.  

#definition[
  Fix vector $vb(a)$, its _projection matrix_ $vb(P)_vb(a)$ is the matrix such that $vb(p) = vb(P b)$ holds for all $vb(b)$. 
   
]
As we have found above, #lbl(<eq:projectionVector>, $ vb(P) = vb(a a)^top/(vb(a)^top vb(a)). $)
Notice that the projection matrix has rank $1$ and its column space is the span of $vb(a)$. Also, since $ (vb(a a)^top)^top = vb(a a)^top, $ the projection matrix is symmetric. Moreover, by the nature of projection, $vb(P)^n = vb(P)$. 

However, sometimes we project a vector onto a plane, or higher dimensional subspaces. Consider a subspace $P$ described by basis in $vb(A)$, and vector $vb(b) in.not P$. 
Let $vb(p)$ be the projection, we have $vb(p) in P$ and $vb(b - p) perp P$. Assume $vb(p) = vb(A ) hat(vb(x))$, we aim to fine $hat(vb(x))$. The orthogonality states that $ vb(A)^top (vb(b) - vb(A) hat(vb(x))) = 0, $ or $ vb(b) - vb(A) hat(vb(x)) in N(vb(A)^top). $ 

As a side note, if the projection is defined as $vb(p) in C(vb(A))$  such that $ norm(vb(b - p)) = min_(vb(y) in C(vb(A))) norm(vb(b - y)) $, from @thm:subspaceOrtho, $ vb(b) - vb(A) hat(vb(x)) perp C(vb(A)). $ Meaning the two definitions are equivalent. 

Solving the matrices equation, $ hat(vb(x)) = (vb(A)^top vb(A))^(-1) vb(A)^top vb(b). $ So, the desired $ vb(p) $ is$ vb(A) (vb(A)^top vb(A))^(-1) vb(A)^top vb(b), $ and the projection matrix is #lbl(<eq:projectionMatrix>, $ vb(A) (vb(A)^top vb(A))^(-1) vb(A)^top. $)
Be careful however, that expanding seems to give $ vb(A A)^(-1) vb(A)^top^(-1) vb(A)^top = vb(I). $ The issue here lies on the false assumption of $vb(A)$ being a square, invertible matrix. In the case where $vb(A)$ is a square, invertible matrix, the number of basis vectors is equal to the dimensions of the space, which makes sense as projecting a vector onto the entire space does nothing to the vector. 

Similar to the one-dimensional case, the new projection matrix $vb(P)$ also satisfies $vb(P)^n = vb(P)$ and $vb(P)^top = vb(P)$. 

#example[
  In $RR^3$, find the projection matrix $vb(P)$ of the plane described by $ x + y - z = 0. $
]
#solution[
  Although using the formula for projection matrix, @eq:projectionMatrix drives to the answer, notice the following. Let $vb(n)$ be the normal vector to the plane, which is $mat(1; 1; -1)$, vector $ vb(b) = vb(P) vb(b) + vb(P)_vb(n) vb(b). $ Since this equation holds for all $vb(b) in RR^3$, remarkably, $ vb(I) = vb(P + P)_vb(n) ==>  vb(P) = vb(I - P)_vb(n). $ In this way, one only needs to find $vb(P)_vb(n)$, which is easier as it only requires projecting a vector onto a vector. By the formula that does that, @eq:projectionVector, $ vb(p)_(vb(n)) = (vb(n) vb(n)^top)/(vb(n)^top vb(n)) = 1/3 mat(1, 1, -1; 1, 1, -1; -1, -1, 1). $ Thus, $ vb(P) = vb(I) - vb(P)_vb(n) = 1/3 mat(-2, -1, 1; -1, -2, 1; 1, 1, -2). #qedhere $
]

The solution here implies that when two subspaces are orthogonal compliments of each other, their projection matrices sum to $vb(I)$. Practically, this situation rises rather common as $ (N(vb(A)))^perp = C(vb(A)^top), quad (N(vb(A)^top))^perp = C(vb(A)). $

One application of projecting a vector onto a subspace is when "solving" $vb(A x = b)$ when $vb(b) in.not C(vb(A))$, by solving instead $vb(A x = p)$, where $vb(p)$ is the projection of $vb(b)$ onto $C(vb(A))$. This method is known as "least squares" and will be further discussed in the next section.  
