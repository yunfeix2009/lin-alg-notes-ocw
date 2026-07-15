#import "/src/components/index.typ": docs-subchapter
#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Linear Combinations],
  route: "combination",
  description: [Linear Combinations],
)
Vectors are arguably the basic elements of study in linear algebra, rather than individual numbers, along with the space they form, known as the vector space. Therefore, beginning with an official introduction on vectors seems like a logical decision. 

Similar to sets, a vector is an ordered collection, often of real numbers, that could represent many things, including force, velocity, position, and any kind of data that describes the same object. 

The two fundamental operations of vectors, like many other algebras, are addition and (scalar) multiplication. 

When two vectors are of the same dimension, or the number of elements they hold, their sum is just the vector with each element the sum of the two vectors' corresponding elements. Additionally, when the addition defined for the elements is commutative, then the vector addition is commutative. 

Scalar multiplication is when a constant $c$ is multiplied to a vector $vb(v)$, resulting in each element of $c vb(v)$ being $c v_i$. 

The combination of the two operations form one of the most important operations in linear algebra, _linear combination_, which is defined as $sum c vb(v)$. 

Observe that if $vb(v)$ is non-zero, then $c vb(v)$ forms a line. But not that obviously, the linear combination of two vectors not pointing in the same direction, or independent, fill the entire plane. 

#lbl(<def:independence>, definition[
  Vectors $vb(u)$, $vb(v)$, and $vb(w)$ are independent iff no linear combinations of them, except $0 vb(u) + 0 vb(v) + 0 vb(w)$, results in a zero vector. Otherwise, they are said to be dependent. 
])
Geometrically, when adding a vector to a set of independent vectors, a new dimension is created in the space of all linear combinations, iff the new set of vectors are independent.
