#import "../../../lib.typ":*
== Fourier Series 

This section applies methods of projection of linear algebra. 

Given a set of orthonormal vectors ${vb(q)_i}$, Notice that any vector in the space has a unique decomposition as a linear combination of the basis vectors. Recall that the coefficient of $vb(q)_i$ is $vb(v)^top vb(q)_i$. 

#definition[
  A fourier series of a function $f(x)$ is $ f(x) = a_0 + a_1 cos x + b_1 sin x + a_2 cos (2x) + b_2 sin(2x) + dots.c. $
]

To find the coefficients of each term of the series, we use projection. First, interpret the space of functions that could be written in this form in terms of vector spaces. Notice that it is infinite dimensional, with basis being $1$, $sin x$, $cos x$, $sin (2x)$, $cos(2x) dots$ I claim that this basis is orthogonal (though could be easily normalized to be orthonormal). 

For two functions as basis vectors to be orthogonal, we define their inner product that extends dot product and show they are pairwise $0$. 

#definition[
  The _inner project_ $braket(f, g)$ over interval $[a, b]$ is defined as $ braket(f, g) = integral_a^b f(x) g(x) dif x. $
]
This definition makes sense as the dot project sums the product of each individual components. Here, to the continuous case, the summation is generalized. 

It is verifiable that all the basis vectors (function) are orthogonal, over interval $[0, 2pi]$, as $f(x) = f(x+2pi)$. 

To find $a_1$, for example, from projections in vector spaces, $ f^top cos x = braket(f, cos ) = integral_0^(2pi) f(x) cos x dif x. $ However, $ f^top cos  = (a_1 cos)^top cos = a_1 integral_0^(2pi) cos^2 x dif x = a_1 pi, $ due to orthogonal basis. Thus, $ a_1 = 1/pi integral_0^(2pi) f(x) cos x dif x. $

=== Fast Fourier Transform 
#definition[
  The Fourier matrix $vb(F)_n$ is $n times n$ such that $ (vb(F)_n)_(i j) = omega^(i j), quad 0<=i, j<= n-1, quad omega = op("cis") (2pi/n). $
]

Due to the periodicity of roots of unity, multiplying a vector with a Fourier matrix performs the discrete Fourier Transform on it. However, from the lens of computer science, if this widely applied operation were to be implemented with the general matrix multiplication algorithm, the complexity would be $ O(n^2). $ Hence, the advent of the $ O(n log n) $ Fast Fourier Transform (FFT) was ground-breaking. Here, we view the Fast Fourier Transform from the lens of linear algebra. 

Firstly, $vb(F)_n$ is symmetric though not Hermitian. However, it is orthogonal, and since the magnitude of each of its column vectors are $sqrt(n)$, $1/sqrt(n) vb(F)_n$ is orthonormal. 

#theorem[
  A Fourier matrix $vb(F)_n$ is orthogonal. 
]
#proof[
  Take $vb(v)  := (vb(F)_n)_i$ and $ vb(u) := (vb(F)_n)_i$. $ vb(v)^* vb(u) &= omega^(j-1) sum_(i=0)^(n-1) omega^i  = omega^(j-1) (1-omega^n)/(1-omega) = 0. #qedhere $
]

We aim to find the connection between $vb(F)_(2n)$ and $vb(F)_n$. 

Let $vb(J)_n$ be the zero matrix that is $n times n$, we aim to construct $vb(A)$ and $vb(B)$ such that $ vb(F)_(2n )= vb(A)_(2n) mat(vb(F)_n, vb(J)_n; vb(J)_n, vb(F)_n) vb(B)_(2n). $
If $vb(A)$ and $vb(B)$ have enough $0$'s to make multiplying them by a vector or matrix rather instantaneous, then due to the two $vb(J)_n$'s, the compute would be mildly over half of directly multiplying by $vb(F)_(2n)$. Then, by halving $vb(F)_n$ recursively, the compute is halved recursively. 

$vb(B)$ is a permutation matrix that takes the odd rows first (indexing from $1$), then even rows. This step requires no substantial compute. In fact, $ vb(A) = mat(vb(I), vb(D); vb(I), - vb(D)) $ where $vb(D)$ is a diagonal matrix where $vb(D)_(i i) = omega^(i), quad 0<=i<=n-1$. 
When multiplying by $vb(A)$, the identity matrix part requires no real compute but the diagonal matrix part contributes to the "fix" cost, which takes $n$ steps. This process may be repeated on $vb(F)_n$. Let the complexity of $vb(F)_n$ be $C(n)$, we have $ C(n) &= 2(C(n/2)) + n/2 \ &= 2(2 (C(n/4) + n/4)) + n/2 \ &= 4 C(n/4) + 2 n/2.  $ As this process continues, $C(1) = O(1)$, and the coefficient of $n/2$ is $log_2 n$. Thus,  $ C(n) approx 1/2 n log_2 n. $

The above method is known as _Cooley–Tukey recursion_. In the case that the dimension of the vector is not powers of $2$, this method may be generalized to treat other factorizations. In the case of the dimension being a large prime, there are still $ cases("Rader's FFT (for prime lengths)",
"Bluestein's FFT (\"chirp-z\")",
"Winograd FFT"). $