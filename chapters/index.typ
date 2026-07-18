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
#include "matrices/index.typ"
#include "linear-equations/index.typ"
#include "vector-space/index.typ"
#include "orthogonality/index.typ"
#include "determinants/index.typ"
#include "eigen/index.typ"
#include "linear-trans/index.typ"
#include "applications/index.typ"

#include "mat-cal/index.typ"

#set heading(numbering: "A.1")
#counter(heading).update(0)
#route-folders.update(("appendix-1",))
#include "appendices/index.typ"


#context if render-mode.get() == "pdf" { pagebreak() }
#include "bibliography/index.typ"
