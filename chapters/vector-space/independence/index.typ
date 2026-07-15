#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Independence, Basis, Dimensions],
  route: "independence",
  description: [Independence, Basis, Dimensions],
)
Recall the definition of independence from preliminaries, see @def:independence. 

Notice that if the zero vector is in the set of vectors, then they must not be independent. 

Consider the matrix $vb(A)$, with columns the set of vectors ${vb(v_i)}$, when the number of independent vectors is greater than the dimensions of the vectors, we have free variables, giving a non-zero null space for $vb(A)$. Therefore, we have the following system on dependency. 
#theorem[
  The $n$ columns of a matrix $vb(A)$ are independent iff the null space of $vb(A)$ only consists of the zero vector (rank = $n$), while they are dependent otherwise (rank<$n$). 
]


#definition[
  A basis of a vector space is a set of vectors that are independent and span the space. 
]

#example[
  $ {mat(1; 0; 0), mat(0; 1; 0), mat(0; ; 1)} $ is as basis of $RR^3$. 
]

#theorem[
  The columns of an $n times n$ matrix $vb(A)$ are a basis of $RR^n$ iff $vb(A)$ is invertible. 
]
#proof[
  $vb(A)$ is invertible means its $n$ column vectors are independent. Also, $n$ independent vectors of $n$ dimensions span $RR^n$. 
]
#definition[
  Fix a vector space, define its _dimension_ to be the number of vectors there are in its basis. 
]
Since for a space, the number of vectors its basis has is fixed, its dimension is well-defined (as $n$ independent equations solve for $n$ variables). 
Thus, the rank of a matrix is the number of its pivot columns, which is the dimension of its column space. 

While the dimension of the null space is the number of free variables. 