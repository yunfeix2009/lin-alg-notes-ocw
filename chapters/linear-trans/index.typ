#import "/src/components/index.typ": docs-chapter
#import "/lib.typ": *

#show: docs-chapter.with(
  title: [Linear Transformations],
  route: "linear-trans",
  description: [Linear Transformations],
  children: [
    #include "definition/index.typ"
    #include "change/index.typ"
  ],
)
