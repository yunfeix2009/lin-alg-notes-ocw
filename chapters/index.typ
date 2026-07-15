#import "/src/components/index.typ": render-mode, route-folders, thm-counter, thm-state

#set heading(numbering: none)
#route-folders.update(())
#thm-counter.thm-counters.update((:))
#thm-state.thm-stored.update(())

#include "cover.typ"
#include "preface/index.typ"

#context if render-mode.get() == "pdf" {
  pagebreak()
}

#set heading(numbering: "1.1")
#counter(heading).update(0)
#include "vectors/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "matrices/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "linear-equations/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "vector-space/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "orthogonality/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "determinants/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "eigen/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "linear-trans/index.typ"
#context if render-mode.get() == "pdf" { pagebreak() }
#include "applications/index.typ"

#context if render-mode.get() == "pdf" { pagebreak() }
#set heading(numbering: "A.1")
#counter(heading).update(0)
#route-folders.update(("appendix-1",))
#include "appendix-1/index.typ"

#context if render-mode.get() == "pdf" { pagebreak() }
#route-folders.update(())
#include "list-of-theorems/index.typ"

#context if render-mode.get() == "pdf" { pagebreak() }
#include "bibliography/index.typ"
