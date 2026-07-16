#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Kronecker Product],
  route: "kronecker",
)


#definition[
  The Kronecker product of $vb(A) in RR^(m times n)$ and $vb(B) in RR^(p times q)$, $vb(A) times.o vb(B)$ is a $(m times n)$ block matrix with each block $p times q$. Block $i j$ is $vb(A)_(i j) vb(B)$.
]
Here, I must show this image from Lecture 2 part 2 as it is pure gold.
#image("/assets/image-6.png")

(Edit: this image is beaten by beginning of Lecture 3 Part 1, where a dog non-chalantly walk in to the class as a student.)


#example[
  Let $f:RR^n -> RR$ be mapping a vector in $RR^n$ to its Euclidean norm. Find $grad_vb(x) f$.
]
With the 18.02, indices way, we have the following solution.
#solution[
  Take $vb(x)_i$, $pdv(f, vb(x)_i) = vb(x)_i/f(vb(x))$. Hence, $ grad_vb(x) f = vb(x)/(f(x)). $
]
However, taking the vector holistically, we have the following solution (termed as the "grown-ups way" by Prof. Alan Edelman).
#solution[
  Notice that $ f^2 (vb(x)) = vb(x^top x). $ Thus differentiating both sides gives, $ 2 f(vb(x)) (dif f) = 2 vb(x^top) (dif vb(x)). $ Hence, $ dif f = vb(x)^top/f(vb(x)) dif vb(x). $ Finally, $ grad_vb(x) f = (vb(x)^top/f(vb(x)))^top = vb(x)/(f(vb(x))). $
]


#definition[
  Given $vb(A) in RR^(m times n)$, $op("vec")(vb(A))$ produces a vector of $m n$ dimensions that "stacks" column vectors of $vb(A)$.
]

#theorem[
  Fix matrices $vb(A) in RR^(m times n), vb(B) in RR^(p times q), vb(C) in RR^( q times n)$, we have $ (vb(A) times.o vb(B)) op("vec") (vb(C)) = op("vec") (vb(B C A^top)) $
]
This is the key identity of Kronecker product and is the defining property of which. In the light of this identity, $dif (vb(X)^2)$ could be written as the following.

$
  op("vec") (dif (vb(X)^2)) & = op("vec") (vb(X) (dif vb(X)) + (dif vb(X)) vb(X)) \
                            & = op("vec")( vb(X) (dif vb(X)) vb(I) + vb(I) (dif vb(X)) vb(X)) \
                            & = (vb(I) times.o vb(X) + vb(X^top) times.o vb(I)) op("vec") (dif vb(X)).
$
Thus, $ dif vb(X)^2 = (vb(I) times.o vb(X) + vb(X)^top times.o vb(I)) [dif vb(X)]. $ Previously, we were unable to write $dif vb(X)^2$ in the form of a linear operator times $[dif X]$. With Kronecker product, which is indeed a linear operator in $vb(A)$ and $vb(B)$ (bilinearity), we could.

Similarly, this generalizes to the $vb(L U)$ decomposition, with specific lower triangular perturbations $dif vb(L)$ and upper triangular perturbations $dif vb(U)$.

#theorem[
  $ (vb(A) times.o vb(B))^top = vb(A)^top times.o vb(B)^top $
]
#theorem[
  $ (vb(A) times.o vb(B))^(-1) = vb(A)^(-1) times.o vb(B)^(-1). $
]
#theorem[
  Given $vb(A) in RR^(n times n)$ and $vb(B) in RR^(m times m)$, $ det(vb(A) times.o vb(B)) = det(vb(A))^n times.o det(vb(B))^m. $
]
#theorem[
  $ vb(A) "orthogonal" and vb(B) "orthogonal"<==> (vb(A) times.o vb(B)) "orthogonal". $
]
#theorem[
  $ trace(vb(A) times.o vb(B))= trace(vb(A)) trace(vb(B)). $
]
#theorem[
  $ (vb(A C)) times.o (vb(B D))= (vb(A) times.o vb(B)) (vb(C) times.o vb(D)). $
]
#theorem[
  $vb(A) times.o vb(B)$ and $vb(B) times.o vb(A)$ have the ssame set of eigenvalues and eigenvectors that are $op("vec")$ of two matrices that are transposes of each other.
]
