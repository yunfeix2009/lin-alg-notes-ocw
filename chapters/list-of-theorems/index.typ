#import "/lib.typ": *
#import "/src/components/web.typ": theorem-heading

#show: docs-appendix.with(
  title: "List of Theorems",
  route: "list-of-theorems",
  description: "Collected theorem-like statements from the notes.",
)

#let theorem-filter(thm) = {
  thm.supplement != "Proof" and thm.supplement != "Solution" and thm.supplement != "Remark"
}

#let theorem-list() = context {
  let thms = query(selector(<meta:thm-env-counter>).within(
    if render-mode.get() == "web" { web-doc-label } else { pdf-doc-label },
  )).map(marker => marker.value).filter(theorem-filter)

  if render-mode.get() == "web" {
    html.elem("div", attrs: (id: "theorem-list", class: "theorem-list"), {
      for thm in thms {
        html.elem("p", attrs: (class: "theorem-list-entry"), {
          html.elem("span", attrs: (class: "theorem-list-title"), theorem-heading(thm))
        })
      }
    })
  } else {
    for thm in thms {
      [#theorem-heading(thm)\ ]
    }
  }
}

#theorem-list()
