#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Pseudo Inverses],
  route: "pinverse",
  description: [Pseudo Inverses],
  label: <sec:pinverse>,
)
Singular value decomposition, due to its generality beyond square matrices, facilitate finding the pseudo-inverses. 


#theorem[
  $ forall vb(x), vb(y) in C(vb(A)^top), quad vb(x) != vb(y) <==> vb(A x) != vb(A y) $
]
#proof[
  Assume $vb(A x = A y)$. Then, $ vb(A(x - y)) = 0 ==> vb(x - y) in N(vb(A)). $ However, since $C (vb(A^top))$ is a vector space, $vb(x - y)$, a linear combination of $vb(x)$ and $vb(y)$ must also be in the row space. However, $N(vb(A)) inter C(vb(A)^top) = {0}$. So, $vb(x) = vb(y)$, finishing the proof.
]
The above theorem, combined with the fact that vectors in the columns space are obtained by $vb(A) vb(x)$ for certain $vb(x)$, implies that there is a bijection between the vectors in the row space of $vb(A)$ and vectors in the column space of $vb(A)$. 

The pseudo-inverses reverses this mapping. 

From singular value decomposition, we know that $vb(A v)_i = sigma_i vb(u)_i$ where $vb(v)_i in C(vb(A)^top)$ and $vb(u)_i in C(vb(A))$. $vb(A)^(-1)$ must do the opposite. So, $vb(A)^(-1) vb(u)_i = vb(v)_i/sigma$. Thus, we make the following definition for pseudo-inverse. 

#definition[
  Fix rectangular matrix $vb(A)$ that could be diagonalized into $vb(U Sigma V^top)$, its pseudo-inverse $ vb(A)^+ : = vb(V Sigma^+ U^top) $ where $ vb(Sigma^+):= diag(sigma_i^+), quad sigma_i^+ = cases(1/sigma_i &"if" sigma_i != 0, 0 &"if" sigma_i = 0). $ 
]

If $vb(A)^(-1)$ exists, then $vb(A)^(-1) = vb(A)^+$. 

It could be shown that this definition of pseudo-inverse is equivalent to the definition of Moore-Penrose pseudo-inverse. 
#definition[
  Fix matrix $vb(A)$, the Moore-Penrose pseudo-inverse $vb(A)^+$ is a matrix satisfying the following properties. 
  $
  cases(vb(A A^+ A = A), vb(A^+ A A^+ = A^+), vb((A^+ A)^top= A^+ A), vb((A A^+)^top = A A^+)).
  $
  For complex matrices, replace transpose with conjugate transpose. 
]


Some applications of pseudo-inverses lie in regression, like least squares, @sec:lsa, some data may not have a full column/row rank, making regression in the traditional sense impossible. However, pseudo-inverses are, in a sense, the closest to inverses when they do not exist. 

#example[
  Given
  $
    A = mat(1, 2).
  $

  1. What is $A^+$, the pseudoinverse of $A$?

  2. Compute $A A^+$ and $A^+ A$.

  3. If $x in N(A)$, what is $A^+ A x$?

  4. If $x in C(A^top)$, what is $A^+ A x$?
]
#solution[
  + First, we find the singular value decomposition of $vb(A)$. 
    $ vb(A^top A)= mat(1; 2) mat(1, 2) = mat(1, 2; 2, 4). $ Since the determinant is $0$, $(lambda_1, lambda_2) = (0, 5)$, corresponding to eigenvectors $ vb(v)_1 = mat(-2; 1) ~ 1/sqrt(5) mat(-2; 1), quad vb(v)_2 = mat(1; 2) ~ 1/sqrt(5) mat(1; 2). $
    $ vb(A A^top) = mat(1, 2) mat(1; 2) = mat(5). $ The eigenvalue is $5$ and the eigenvector $mat(1)$.   Thus, $ vb(A) = mat(1) mat(0, 5) 1/sqrt(5) mat(-2, 1; 1, 2). $
    So, $ vb(A^+ )&= 1/sqrt(5) mat(-2, 1; 1, 2) mat(0; 1/sqrt(5)) mat(1) \ &= mat(1/5; 2/5). $
  + $ vb(A A^+) = mat(1, 2) mat(1/5; 2/5) = 1/5 + 4/5 = 1. $
    $ vb(A^+ A) = mat(1/5; 2/5) mat(1, 2) = mat(1/5, 2/5; 2/5, 4/5) = 1/5(1, 2; 2, 4). $
  + $N(vb(A)) = op("span") (mat(2; 1))$. Let $vb(x) := mat(2; 1)$, $vb(A^+ A x = 0)$. This makes sense as $vb(A^+ A x) = vb(A^+ (A x)) = vb(A^+ 0) = 0$ as $vb(A x)$ is $0$ by definition of null space. 
 + $C(vb(A)^top) = op("span")(1/2)$. Let $vb(x):= mat(1; 2)$. $ vb(A^+ A x) = 1/5 mat(1, 2; 2, 4) mat(1; 2) = mat(1; 2) = vb(x). $ In fact, from this part and the last part, we see that if $vb(x) in N(vb(A))$, $vb(A^+ A x) = 0$ and $vb(x) in C(A^top)$, $vb(A^+ A
 )$ becomes the identity matrix, making sense as the pseudo-inverse. 
]
