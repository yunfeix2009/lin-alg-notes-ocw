#import "../../../lib.typ":*
== Difference and Sum Matrices 

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

#definition[
  Define the inner product of two functions $RR->RR$, $f(x)$ and $g(x)$, to be $ integral_(-oo)^oo f(x) g(x) dif x. $
]
