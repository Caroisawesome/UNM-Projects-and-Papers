(TeX-add-style-hook
 "xourse"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "ximera"
    "ximera10")
   (TeX-add-symbols
    "enddocument"
    '("practice" ["argument"] 1)
    '("activity" ["argument"] 1)
    '("logo" 1)
    "skip"
    "otherinput"
    "othermaketitle"
    "maketitle"
    "input")
   (LaTeX-add-environments
    '("freeResponse" LaTeX-env-args ["argument"] 0)
    '("feedback" LaTeX-env-args ["argument"] 0)
    '("validator" LaTeX-env-args ["argument"] 0)
    '("selectAll" LaTeX-env-args ["argument"] 0)
    '("multipleChoice" LaTeX-env-args ["argument"] 0)
    '("question" LaTeX-env-args ["argument"] 0)
    '("exploration" LaTeX-env-args ["argument"] 0)
    '("exercise" LaTeX-env-args ["argument"] 0)
    '("problem" LaTeX-env-args ["argument"] 0)
    '("graded" 1)
    "document"))
 :latex)

