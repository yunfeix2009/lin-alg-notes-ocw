#import "/lib.typ": *
#set heading(numbering: "1.1")
#chapter-section("preface")[
  #include "preface/index.typ"
]
#chapter-section("preliminaries")[
  #include "preliminaries/index.typ"
]

#if not _is-html {
  std.pagebreak()
}
#chapter-section("linear-equations")[
  #include "linear-equations/index.typ"
]

// appendix

#set heading(numbering: "A.1")
#counter(heading).update(0)
#chapter-section("appendix-1")[
  #include "/chapters/appendix-1/index.typ"
]