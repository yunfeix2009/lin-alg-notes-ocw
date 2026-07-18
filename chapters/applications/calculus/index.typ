#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Difference and Sum Matrices],
  route: "calculus",
  description: [Difference and Sum Matrices],
)
#definition[
  A difference matrix $vb(D)$ is a $n times n$ square matrix where $ vb(D)_(i j) = cases(1 &"if" i=j, -1 &"if" i=j+1, 0 &"otherwise"). $
]
When acted upon a vector $vb(x)$, ie. $vb(A x)$, each element in the resulting vector represents the difference between the corresponding element in $vb(x)$ and the previous element, with the exception of the first element, which remains the same. Formally, $ (vb(A x))_i = vb(x)_i - vb(x)_(i-1) $, where $(vb(A x))_0 :=0$.


Conversely, define the sum matrix as the following.
#definition[
  A sum matrix $vb(S)$ is a $n times n$ square matrix where $ vb(D)_(i j) = cases(1 &"if" j<=i, 0 &"if" j>i). $
]
Then, for a vector $vb(x)$, $vb(A x)$ is a vector where each element in the resulting vector is the sum of all the elements in $vb(x)$ up to the corresponding element, $ (vb(A x))_i = sum_(k=1)^i vb(x)_k. $

#theorem[
  Let $vb(D)_n$ be the difference matrix with $n$ rows and $vb(S)_n$ be the sum matrix with $n$ rows, then $vb(D)_n vb(S)_n = vb(I)$, ie. they are inverses of each other.
]
By visualizing the vector $vb(x)$ to be dense as a function, say $x(t)$, $ vb(D x) = dv(, t) x(t) $ and $ vb(S x) = integral x(t) dif t $.

This viewpoint provides another way to look at the relationship between differentiation and integration.

Furthermore, by using rules on matrices, we are able to see properties of differentiation an integration in a linear algebra way.
#lbl(<def:func-inner>, definition[
  Define the inner product of two functions $RR->RR$, $f(x)$ and $g(x)$, to be $ integral_(-oo)^oo f(x) g(x) dif x. $
])








In this section we aim to introduce a brief generalization of concepts such as the dot product and transpose in a way extensible to physics and calculus. The dot product between two (column) vectors $vb(x)$ and $vb(y)$ is given by $ vb(x dot y)=vb(x)^top vb(y). $
In this particular case, we define the inner product $iprod(vb(x), vb(y))$ to simply be the dot product as above. Now consider a matrix $vb(A)$. Then we have:
$ iprod(vb(A x), vb(y)) = vb((A x)^top y)=vb(x^top (A^top y))=iprod(vb(x), vb(A^top y)). $
The matrix $vb(A)$ maps column vectors to column vectors, and as such, can be considered as a unary (single operand) operator. As a matter of fact, the transpose is _governed_ by the identity that #lbl(<eq:transpose-identity-for-matrix>, $ iprod(vb(A x), vb(y)) = iprod(vb(x), vb(A^top y)), $)
which is the basis upon which we make further generalizations.

We briefly define the _inner product space_, which is a vector space $V$ (a vector space's elements do not need to necessarily be vectors, but more generally, elements thats satisfy the rules that were set in IDK), together with a function $ iprod(dot.c, dot.c) : V times V -> FF, $
where $FF$ is typically $RR$ or $CC$. This operation formalizes the _inner product_.

Now consider the case where the inner product space is defined to be the vector space of functions $ V={f:RR -> RR : (forall n in ZZ^+)integral_(-oo)^oo abs(f^((n))(t))^2 dif t < oo and f in C^oo (RR)}, $
where the inner product operation is defined to be $ iprod(f, g) = integral_(-oo)^oo f(t) g(t) dif t. $
Now define a unary operator $D=dv(, t)$ (analogous to the matrix $vb(A)$, which is also a unary operator on its corresponding inner product space) on the space $V$. This operator is well defined, as it is defined on all of $V$ (by the $C^oo$ criterion) and so is its output (as $f'$ lies in $V$ as well). Then by integration by parts,$ iprod(D f, g) = integral_(-oo)^oo f'(t) g(t) dif t = evaluated(f(t) g(t))_(partial RR) - integral_(-oo)^oo f(t) g'(t) dif t. $
In order for the integral expression in the definition of $V$ to even converge, $f$ (and $g$) must vanish at the boundaries of $RR$, and thus, $ iprod(D f, g) = -integral_(-oo)^oo f(t) g'(t) dif t = iprod(f, -D g). $
Then matching this with
//  @eq:transpose-identity-for-matrix
, it is only natural that we heuristically define, with some degree of notational abuse $D^top = (dv(, t))^top = -dv(, t) = -D$. In fact, for an inner product space, this particular generalization of the transpose is known as the _adjoint_, denoted by $D^*$ rather than $D^top$. The adjoint of an operator is dependent on the inner product space.

An operator $T$ is said to _self-adjoint_ if $ T^* = T $ (thus in the previous case, symmetric matrices are self-adjoint), and is said to be _skew-adjoint_ or _anti-self-adjoint_ if $T^* = -T$ (thus the derivative operator with respect to the previous inner product space is skew-adjoint). Moreover, although we will not entertain this further here, operators can be decomposed into a self-adjoint part and a skew-adjoint part. Two other important classes are _normal_ and _unitary_ (which is a form of normality), which correspond to $T T^* = T^* T$ and $T T^* = T^* T = I$ respectively, where $I$ is the identity operator .

// #definition[
//   A difference matrix $vb(D)$ is a $n times n$ square matrix where $ vb(D)_(i j) = cases(1 &"if" i=j, -1 &"if" i=j+1, 0 &"otherwise"). $
// ]
// When acted upon a vector $vb(x)$, ie. $vb(A x)$, each element in the resulting vector represents the difference between the corresponding element in $vb(x)$ and the previous element, with the exception of the first element, which remains the same. Formally, $ (vb(A x))_i = vb(x)_i - vb(x)_(i-1) $, where $(vb(A x))_0 :=0$.


// Conversely, define the sum matrix as the following.
// #definition[
//   A sum matrix $vb(S)$ is a $n times n$ square matrix where $ vb(D)_(i j) = cases(1 &"if" j<=i, 0 &"if" j>i). $
// ]
// Then, for a vector $vb(x)$, $vb(A x)$ is a vector where each element in the resulting vector is the sum of all the elements in $vb(x)$ up to the corresponding element, $ (vb(A x))_i = sum_(k=1)^i vb(x)_k. $

// #theorem[
//   Let $vb(D)_n$ be the difference matrix with $n$ rows and $vb(S)_n$ be the sum matrix with $n$ rows, then $vb(D)_n vb(S)_n = vb(I)$, ie. they are inverses of each other.
// ]
// By visualizing the vector $vb(x)$ to be dense as a function, say $x(t)$, $ vb(D x) = dv(, t) x(t) $ and $ vb(S x) = integral x(t) dif t $.

// This viewpoint provides another way to look at the relationship between differentiation and integration.

// Furthermore, by using rules on matrices, we are able to see properties of differentiation an integration in a linear algebra way.

// #definition[
//   Define the inner product of two functions $RR->RR$, $f(x)$ and $g(x)$, to be $ integral_(-oo)^oo f(x) g(x) dif x. $
// ]
