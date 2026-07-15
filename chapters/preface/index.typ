#import "/src/components/index.typ": docs-frontmatter
#import "/lib.typ": *

#show: docs-frontmatter.with(
  title: "Preface",
  route: "preface",
  description: "A short orientation to the course notes.",
)

This is a set of notes to MIT OpenCourseWare 18.06, Linear Algebra, based on lectures by Gilbert Strang, recorded in Spring, 2005, along with other materials from https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/ and https://web.mit.edu/18.06/www/. Specifically, some problems from Gilbert Strang's book, Introduction to Linear Algebra, 4th edition is included. When the source of an example problem is not otherwise stated, it may be assumed that the problem is from the book.




For those who want to learn or review linear algebra without taking a formal class or working through a full textbook, but would rather read a lighter set of notes:

This set of notes is based mainly on the class of 18.02 from MIT OpenCourseWare @strang2010mit1806. Specifically, lectures by Prof. Gilbert Strang, recorded in 2005, and problems from its problem set. Moreover, the book _Introduction to Linear Algebra_ @strang2023linear serves as a great supplement of proofs and problems to materials available from 18.02. When the source of an example problem is not otherwise stated, it may be assumed to be from the problem sets of this course.

Topics of study in this course, by virtue of MIT Registrar's Office, is as following. #quote[Basic subject on matrix theory and linear algebra, emphasizing topics useful in other disciplines, including systems of equations, vector spaces, determinants, eigenvalues, singular value decomposition, and positive definite matrices. Applications to least-squares approximations, stability of differential equations, networks, Fourier transforms, and Markov processes.] @mit_registrar_course18_fall2026

Emphasis would be placed on topics that cultivate generalizable insights with broad applicability across science and engineering, similar to the theory of eigenvectors in linear algebra. Conversely, techniques that are easily delegated to computational tools and contribute little transferable understanding would receive less emphasis.

This set of notes is best served when the audience is well-versed in topics from 18.01, Single Variable Calculus, @jerison2010calc, that may be substituted with fluency of high school calculus concepts (those in the BC curriculum, for example).

Although perfectly complete in isolation, _Notes on Multivariable Calculus_ is intended to serve as the starting point of the study of the trilogy of multivariable calculus, linear algebra, and differential equations -- three subjects I believe together make a strong foundation as the math prerequisite of many important fields such as control theory, most of physics, theoretical computer science, machine learning, etc.

To this end, we also have _Notes on Linear Algebra_ @saint_even_linear_algebra_notes_2026, based on to 18.06 @strang2010mit1806 from OpenCourseWare   and _Notes on Differential Equations_ @saint2026diffeq, based on 18.03 @ocwlinkde and 18.009 @mit_ocw_differential_equations_linear_algebra from OpenCourseWare.
