#import "/lib.typ": *

#show: docs-subchapter.with(
  title: [Language],
  route: "language",
)


Language to an extent is a system of objects (nouns), their characteristics (adjectives), and actions (verbs). In the field of Linear Algebra, there are several levels of objects at study. By level, I do not mean as easier and advanced per se, but in the sense from cells to populations.

On the lowest level we have _numbers_ (noun.) that may represent the price of a stoke on a given date or a weight in a neural network. They enable operations such as addition (verb.), multiplication (verb.), inverse (verb.), and could be real (adj.) or complex (adj.).

Combining (usually finitely many of) numbers gives _vectors_ (noun.), $RR^n$ or $CC^n$. With vectors linear combination (verb.) becomes possible with addition (verb.) and scalar multiplication (verb.), that may be generalized as long as the set of rules (ADDDDD) are followed. When the vectors are of the same dimensions (adj.) and represent "multipliable" (adj.) quantities, their dot product (verb.) may be defined.

_Matrices_ (noun.) become useful when, for example, when taking different linear combinations of the same set of vectors. A matrix, then, means an ordered set of vectors. Matrices themselves may still be, when appropriate conditions are satisfied, added (ver.), multiplied (verb.), taken transpose of (verb.), taken inverse of (verb), eliminated (verb.), diagonalized (verb.). Matrices are the most frequent container of ideas in linear algebra and carry many attributes.
A matrix could be described by dimensions (adj.), rank (adj.), determinants (adj.), eigenvectors (adj.) and eigenvalues (adj.). Or, it could be described by structural properties such as square (adj.), invertible (adj.), symmetric (adj.) or Hermitian (adj.), diagonalizable (adj.), triangular (adj.), orthogonal(adj.), orthonormal (adj.), or normal (adj.) and unitary (adj.) which are not discussed in details here. Moreover, a matrix may not only hold vectors but may mean a certain action to a vector when multiplied to it. For example, projection (verb.) onto a subspace (?), system of linear equations (noun.), Fourier transform (verb.), etc.
ADD REFS!!!

Then, when we take _all_ linear combinations of a set of vectors, we have _subspaces_ (noun.). This could be interpreted as the span (verb.) of a set of vectors, or basis (noun.), too. We can take direct sums (verb.) or take compliments (verb.) of subspaces. Subspaces could be related by adjectives such as intersecting at (adj.), orthogonal (adj.), complimentary (adj.). Given a matrix, we can also associate subspaces with it, mostly column space (noun.), row space (noun.), null space (noun.), and left null space (noun.). Although matrices often seem like _the_ objects at study of linear algebra, with all previous material it should be clear that sometimes it is really subspaces and transformations (?) at play.

When a matrix is multiplied to a vector, a new vector is produced. Thus, such multiplication could be viewed as a function, _transforming_ (verb.) a vector to another. Hence, a transformation (noun.) mappiing one subspace to another could be described by linear (adj.), injective (adj.), surjective (adj.), and bijective (adj.).


