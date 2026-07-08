#import "/lib.typ": *
#import "/show-rules.typ": show-rules

#show: show-rules

#set document(
  title: "Notes on Linear Algebra",
  author: "Saint Even, Slipper King",
)

#{
  if not _is-html {
    align(center)[
      #v(2cm)
      #title("Notes on Linear Algebra")
      #text(size: 13pt)[Saint Even, Slipper King, Icy Cheees]

      #text(size: 11pt)[Source: https://github.com/yunfeix2009/lin-alg-notes-ocw]
    ]
    outline()
  } else {
    chapter-section("cover")[
      #html.elem("section", attrs: (class: "cover"))[
        #html.elem("p", attrs: (class: "course"))[
          MIT OpenCourseWare 18.06
        ]
        #html.elem("h1")[
          Notes on Linear Algebra
        ]
        #html.elem("p", attrs: (class: "authors"))[
          by #smallcaps[Saint Even] and #smallcaps[Slipper King]
        ]
        #html.elem("p", attrs: (class: "date"))[
          Spring 2005 Notes
        ]
        #html.elem("div", attrs: (class: "abstract"))[
          Notes on linear algebra based on Gilbert Strang's MIT OpenCourseWare lectures, with emphasis on linear equations, vector spaces, matrices, determinants, and applications.
        ]
        #html.elem("p", attrs: (class: "download"))[
          #html.elem("a", attrs: (href: "pdf/notes.pdf", class: "button"))[
            Download PDF
          ]
        ]
        #html.elem("p", attrs: (class: "paper-misc"))[
          Source: https://github.com/yunfeix2009/lin-alg-notes-ocw
        ]
      ]
    ]
  }
}

#include "/chapters/index.typ"
