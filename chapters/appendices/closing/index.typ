#import "/src/components/index.typ": docs-appendix
#import "/lib.typ": *

#docs-appendix(
  title: [Closing: Looking Back with Birds Eye],
  route: "temp",
  children: [
    #include "language/index.typ"
    #include "eqn/index.typ"
    #include "equiv/index.typ"
    #include "app/index.typ"
  ],
)[
  Freeman Dyson categorizes mathematicians and mathematics to two loose, fluid categories: birds and frogs.

  #let _quote = quote[Birds fly high in the air and survey broad vistas of mathematics out to the far horizon. They delight in concepts that unify our thinking and bring together diverse problems from different parts of the landscape. Frogs live in the mud below and see only the flowers that grow nearby. They delight in the details of particular objects, and they solve problems one at a time.]
  #let _credit = [
    --Freeman Dyson
  ]

  #context {
    let render-mode = state("render-mode").get()
    if render-mode == "pdf" {
      align(center)[#_quote]
      align(right)[#_credit]
    } else {
      html.elem("div", attrs: (style: "text-align: center;"), _quote)
      html.elem("div", attrs: (style: "text-align: right;padding-bottom: 0.5rem"), _credit)
    }
  }

  Now, presumably you have waded through the flowers and the mud, I feel the necessity of wrap up this set of notes with a review centered on a birds-eye view of linear algebra, partially inspired by Strang's "Too Much Calculus" and "Language of Linear Algebra". As a set of notes to an introductory class on linear algebra, I believe walking away knowing what linear algebra is about, namely its levels of study, its techniques, and its special importance today, is already significant.
  Hence, we recapitulate topics in this set of notes from the following dimensions of linear algebra: language, key equations, key equivalences, and applications.


]
