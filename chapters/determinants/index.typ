#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Determinants],
  route: "determinants",
  description: [Determinants],
  children: [
    #include "properties/index.typ"
    #include "determinant-formula/index.typ"
    #include "determinant-applications/index.typ"
    #include "cross-product/index.typ"
  ],
  label: <sec:determinants>,
)
As a concept usually introduced relatively early in the study of linear algebra and a highly consequential topic, particularly eigenvalues, we introduce it here with preparations from earlier sections.

It is also noteworthy that later sections do not concern as much regarding rectangular matrices, in comparison to previous sections, but concentrates on square matrices.
