#import "@local/ctheorems:2.0.0": *

#let _base-theorem = theorem
#let _base-lemma = lemma
#let _base-proposition = proposition
#let _base-corollary = corollary
#let _base-conjecture = conjecture
#let _base-definition = definition
#let _base-problem = problem
#let _base-remark = remark
#let _base-example = example
#let _base-claim = claim
#let _base-proof = proof
#let _base-solution = solution

#let render-mode = state("render-mode", "pdf")
#let qed-symbol = $square$

#let _plain-fmt = thm-fmt-block.with(
  name-fmt: x => emph(smallcaps([(#x)])),
)

#let _html-thm-fmt(head, css-class, numbered: true) = thm => {
  let title = if numbered and thm.number != none {
    [#head #thm.number]
  } else {
    [#head]
  }

  html.elem("div", attrs: (class: "thm-box " + css-class), {
    html.elem("p", attrs: (class: "thm-head"), {
      html.elem("strong", title)
      if thm.name != none [ (#thm.name)]
      [.]
    })
    thm.body
  })
}

#let _html-thm-env(env, head, css-class, numbered: true) = env.with(
  fmt: _html-thm-fmt(head, css-class, numbered: numbered),
)

#let _html-proof-fmt(head) = thm => {
  let title = if thm.name != none {
    [#head #thm.name]
  } else {
    [#head]
  }

  html.elem("div", attrs: (class: "thm-proof"), {
    html.elem("p", attrs: (class: "proof-head"), html.elem("em", [#title.]))
    thm.body
    html.elem("p", attrs: (class: "qed"), [$square$])
  })
}

#let _html-solution-fmt(head) = thm => {
  let title = if thm.name != none {
    [#head #thm.name]
  } else {
    [#head]
  }

  html.elem("details", attrs: (class: "thm-solution"), {
    html.elem("summary", html.elem("em", [#title.]))
    thm.body
    html.elem("p", attrs: (class: "qed"), [$square$])
  })
}

#let theorem = context if render-mode.get() == "web" {
  _html-thm-env(_base-theorem, "Theorem", "thm-theorem")
} else {
  _base-theorem.with(fmt: _plain-fmt)
}

#let lemma = context if render-mode.get() == "web" {
  _html-thm-env(_base-lemma, "Lemma", "thm-lemma")
} else {
  _base-lemma.with(fmt: _plain-fmt)
}

#let proposition = context if render-mode.get() == "web" {
  _html-thm-env(_base-proposition, "Proposition", "thm-proposition")
} else {
  _base-proposition.with(fmt: _plain-fmt)
}

#let corollary = context if render-mode.get() == "web" {
  _html-thm-env(_base-corollary, "Corollary", "thm-corollary")
} else {
  _base-corollary.with(fmt: _plain-fmt)
}

#let conjecture = context if render-mode.get() == "web" {
  _html-thm-env(_base-conjecture, "Conjecture", "thm-conjecture")
} else {
  _base-conjecture.with(fmt: _plain-fmt)
}

#let definition = context if render-mode.get() == "web" {
  _html-thm-env(_base-definition, "Definition", "thm-definition")
} else {
  _base-definition
}

#let problem = context if render-mode.get() == "web" {
  _html-thm-env(_base-problem, "Problem", "thm-problem")
} else {
  _base-problem
}

#let remark = context if render-mode.get() == "web" {
  _html-thm-env(_base-remark, "Remark", "thm-remark", numbered: false)
} else {
  _base-remark
}

#let example = context if render-mode.get() == "web" {
  _html-thm-env(_base-example, "Example", "thm-example")
} else {
  _base-example
}

#let claim = context if render-mode.get() == "web" {
  _html-thm-env(_base-claim, "Claim", "thm-claim", numbered: false)
} else {
  _base-claim
}

#let proof = context if render-mode.get() == "web" {
  _base-proof.with(fmt: _html-proof-fmt("Proof"))
} else {
  _base-proof
}

#let solution = context if render-mode.get() == "web" {
  _base-solution.with(fmt: _html-solution-fmt("Solution"))
} else {
  _base-solution
}
