#import "/lib.typ": *
#set heading(numbering: "1.1")
#chapter-section("preface")[
  #include "preface/index.typ"
]
#chapter-section("vectors")[
  #include "vectors/index.typ"
]

#if not _is-html {
  std.pagebreak()
}
#chapter-section("matrices")[
  #include "matrices/index.typ"
]
#if not _is-html {
  std.pagebreak()
}

#chapter-section("linear-equations")[
  #include "linear-equations/index.typ"
]
#if not _is-html {
  std.pagebreak()
}

#chapter-section("vector-space")[
  #include "vector-space/index.typ"
]

#if not _is-html {
  std.pagebreak()
}

#chapter-section("orthogonality")[
  #include "orthogonality/index.typ"
]


#if not _is-html {
  std.pagebreak()
}

#chapter-section("determinants")[
  #include "determinants/index.typ"
]


// appendix

#if not _is-html {
  std.pagebreak()
}
#chapter-section("applications")[
  #include "applications/index.typ"
]


// appendix

#if not _is-html {
  std.pagebreak()
}
#set heading(numbering: "A.1")
#counter(heading).update(0)
#chapter-section("appendix-1")[
  #include "/chapters/appendix-1/index.typ"
]
