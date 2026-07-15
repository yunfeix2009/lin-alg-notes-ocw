#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Permutation Matrices],
  route: "permutation",
  description: [Permutation Matrices],
)
#lbl(<def:permutation>, definition[
  A matrix $vb(P)$ is a permutation matrix iff there is exactly one $1$ in each of its column and row, and $0$ elsewhere. 
])

Following are some observations of permutation matrices

+ all permutation matrices are square matrices 
+ $vb(P)^top$ is also a permutation matrix. 


+ A permutation matrix times a permutation matrix is still a permutation matrix. 

+ There are $n!$ permutation matrices of $n times n$. 
+ $vb(P)^(-1) = vb(P)^top$
  \ This is true as, upon transpose, the $1$ in each row of $vb(P)$ is multiplied with the $1$ in the corresponding column of $vb(P)^top$. 

#text(red)[note to self: left out at page 122, and still need to reformat the inverse section ]


#example[
  (a) If you take powers of a permutation matrix, why is some $vb(P)^k$ eventually equal to $vb(I)$?
  (b) Find a 5 by 5 permutation matrix $vb(P)$ so that the smallest power to equal $vb(I)$ is $vb(P)^6$.
]
#solution[
  (a) Since there are only $n!$ permutation matrices of size $n times n$, there will eventually be a power that repeats a previously appeared matrix, creating a cycle. Meaning $ vb(P)^a = vb(P)^b ==> vb(P)^(-b) vb(P)^a = vb(P)^(a-b) = vb(I). $
  (b) A simple "shift right one" matrix has a order of $5$ rather than $6$. But thinking in terms of cycles directly gives that a cycle of $2$ and a cycle of $3$ would do the work. So, $ mat(0, 1, 0, 0, 0; 1, 0, 0, 0, 0; 0, 0, 0, 1, 0; 0, 0, 0, 0, 1; 0, 0, 1, 0, 0), $ would have the highest possible order of $6$. 
]
