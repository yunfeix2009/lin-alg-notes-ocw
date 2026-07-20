#import "/lib.typ": *

#show: docs-subsubchapter.with(
  title: [Kronecker Product],
  route: "kronecker",
)

The motivation of Kronecker product that I'd like to present here goes back to the definition of gradient, $ dif f = grad_x f dot dif x. $ However, it is not entirely clear how to express $ dif (vb(A))^2 = (dif vb(A)) vb(A) + vb(A) (dif vb(A)) $ in the form of a gradient. With the help of the Kronecker product, this would be possible, to an extent.

#definition[
  The Kronecker product of $vb(A) in RR^(m times n)$ and $vb(B) in RR^(p times q)$, $vb(A) times.o vb(B)$ is a $(m times n)$ block matrix with each block $p times q$. Block $i j$ is $vb(A)_(i j) vb(B)$.
]
Here, I must show this image from Lecture 2 part 2 as it is pure gold.
#figure-wrapper(figure(potential-frame(image("/assets/image-6.png"))))

(Edit: this image is beaten by beginning of Lecture 3 Part 1, where a dog non-chalantly walk in to the class as a student.)



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
With mild abuse of notation, $ dif vb(X)^2 = (vb(I) times.o vb(X) + vb(X)^top times.o vb(I)) [dif vb(X)]. $
This formula for the $2 times 2$ matrix case may be verified by setting the matrix as $ vb(A) = mat(p, q; r, s). $ Then, take $op("vec")$ of $vb(A)$ and $vb(A)^2$. The gradient could then be found with the $ (grad_vb(A) vb(A)^2)_(i j) = pdv((op("vec") vb(A)^2)_i, (op("vec") vb(A))_j). $ Verifiably, $ pdv((op("vec") vb(A)^2), (op("vec") vb(A))) & =(vb(I) times.o vb(X) + vb(X)^top times.o vb(I)) \
                                            & =
                                              underbrace(
                                                mat(
                                                  1;
                                                  1
                                                ),
                                                I
                                              )
                                              underbrace(
                                                mat(
                                                  p, r;
                                                  q, s
                                                ),
                                                A
                                              )
                                              +
                                              underbrace(
                                                mat(
                                                  p, q;
                                                  r, s
                                                ),
                                                A^top
                                              )
                                              underbrace(
                                                mat(
                                                  1;
                                                  1
                                                ),
                                                I
                                              ) \
                                            & =
                                              underbrace(
                                                mat(
                                                  p, r, 0, 0;
                                                  q, s, 0, 0;
                                                  0, 0, p, r;
                                                  0, 0, q, s
                                                ),
                                                I times.o A
                                              )
                                              +
                                              underbrace(
                                                mat(
                                                  p, q, 0, 0;
                                                  0, 0, p, q;
                                                  r, s, 0, 0;
                                                  0, 0, r, s
                                                ),
                                                A^top times.o I
                                              ) \
                                            & =
                                              mat(
                                                2p, r, q, 0;
                                                q, p + s, 0, q;
                                                r, 0, p + s, r;
                                                0, r, q, 2s
                                              )
                                              = vb(J) = f'. $

Previously, we were unable to write $dif vb(X)^2$ in the form of a linear operator times $[dif X]$. With Kronecker product, which is indeed a linear operator in $vb(A)$ and $vb(B)$ (bilinearity), we could. In the $2 times 2$ sense, it is still possible to define a linear operator, though, but with a $4 d$ "matrix", sometimes known as a tensor. What Kronecker product really does is that it expands that tensor down to a $2 d$ matrix.

Similarly, this generalizes to the $vb(L U)$ decomposition, $ dif (vb(L U)) = (dif vb(L) ) vb(U) + vb(L) (dif vb(U)) = (vb(U) times.o vb(I) + vb(I) times.o vb(L)) [dif vb(A)] $ with specific lower triangular perturbations $dif vb(L)$ and upper triangular perturbations $dif vb(U)$ that may be "combines" to $dif vb(A)$.

The following is a list of properties of the Kronecker product whose proof is not of interest here.
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


It should be noted, however, that the Kronecker product serves better as a conceptual tool rather than computational shortcut. It significantly worsens the storage efficiency, as the structure of $vb(A) times.o vb(B)$ is very special to be stored more efficiently. Exception being $vb(A)$ and $vb(B)$ being sparse (many zero entries) matrices.

#example[
  Deivse an algorithm to solve the Sylvester equation, fix $vb(A B C)$, solve $vb(X)$: $ vb(A x + X B = C). $
]
Although with Kronecker products and vectorization, this equation could be re-written into a standard $vb(A x = b)$ form then to be solved with Gaussian elimination, if the dimensions of the matrices are $m times m$, then elimination must be performed on a $m^2 times m^2$ matrix, thus $O(m^6)$. However, in this case, it is possible to solve this equation in $O(m^3)$.
