(TeX-add-style-hook
 "pf"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "amsmath")
   (LaTeX-add-environments
    '("freeResponse" LaTeX-env-args ["argument"] 0)
    '("feedback" LaTeX-env-args ["argument"] 0)
    '("validator" LaTeX-env-args ["argument"] 0)
    '("selectAll" LaTeX-env-args ["argument"] 0)
    '("multipleChoice" LaTeX-env-args ["argument"] 0)
    '("question" LaTeX-env-args ["argument"] 0)
    '("exploration" LaTeX-env-args ["argument"] 0)
    '("exercise" LaTeX-env-args ["argument"] 0)
    '("problem" LaTeX-env-args ["argument"] 0)))
 :latex)

