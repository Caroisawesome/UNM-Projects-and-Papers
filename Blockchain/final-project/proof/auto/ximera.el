(TeX-add-style-hook
 "ximera"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("cancel" "makeroom") ("enumitem" "inline") ("titlesec" "pagestyles") ("xcolor" "table") ("hyperref" "pdfpagelabels" "colorlinks=true" "allcolors=blue!30!black")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "cancel"
    "enumitem"
    "titlesec"
    "titletoc"
    "titling"
    "url"
    "xcolor"
    "tikz"
    "pgfplots"
    "fancyvrb"
    "forloop"
    "environ"
    "amssymb"
    "amsmath"
    "amsthm"
    "xifthen"
    "multido"
    "listings"
    "xkeyval"
    "comment"
    "gettitlestring"
    "nameref"
    "epstopdf"
    "hyperref"
    "sagetex")
   (TeX-add-symbols
    '("inlinechoice" ["argument"] 1)
    '("otherchoice" ["argument"] 1)
    '("choiceEXP" ["argument"] 1)
    '("choice" ["argument"] 1)
    '("answer" ["argument"] 1)
    '("link" ["argument"] 1)
    '("graph" ["argument"] 1)
    '("includeinteractive" ["argument"] 1)
    '("title" ["argument"] 0)
    '("unfoldable" 1)
    '("xkcd" 1)
    '("wordChoice" 1)
    '("recordvariable" 1)
    '("youtube" 1)
    '("googleSheet" 5)
    '("desmos" 3)
    '("geogebra" 3)
    '("alt" 1)
    '("problemEnvironmentStart" 2)
    '("latexProblemContent" 1)
    '("pdfOnly" 1)
    '("outcome" 1)
    '("MakeCounter" 1)
    "Make"
    "license"
    "acknowledgement"
    "hang"
    "hung"
    "problemNumber"
    "problemEnvironmentEnd"
    "chapterstyle"
    "sectionstyle"
    "PH"
    "w"
    "t"
    "s"
    "n"
    "u"
    "d"
    "v"
    "m"
    "hskip"
    "selectfont"
    "mathversion"
    "theoutcomes"
    "prelim"
    "spaceatend"
    "author"
    "and"
    "title"
    "thefootnote"
    "maketitle"
    "activitystyle"
    "js"
    "choicetemp"
    "choice"
    "givenatend")
   (LaTeX-add-environments
    "abstract"
    "suppress"
    '("freeResponse" LaTeX-env-args ["argument"] 0)
    '("feedback" LaTeX-env-args ["argument"] 0)
    '("validator" LaTeX-env-args ["argument"] 0)
    '("selectAll" LaTeX-env-args ["argument"] 0)
    '("multipleChoice" LaTeX-env-args ["argument"] 0)
    '("question" LaTeX-env-args ["argument"] 0)
    '("exploration" LaTeX-env-args ["argument"] 0)
    '("exercise" LaTeX-env-args ["argument"] 0)
    '("problem" LaTeX-env-args ["argument"] 0)
    '("leash" 1)
    "theorem"
    "algorithm"
    "axiom"
    "claim"
    "conclusion"
    "condition"
    "conjecture"
    "corollary"
    "criterion"
    "definition"
    "example"
    "fact"
    "lemma"
    "formula"
    "idea"
    "notation"
    "model"
    "observation"
    "proposition"
    "paradox"
    "procedure"
    "remark"
    "summary"
    "template"
    "warning"
    "prompt"
    "onlineOnly"
    "hint"
    "multipleChoice"
    "solution"
    "feedback"
    "dialogue"
    "instructorIntro"
    "instructorNotes"
    "foldable"
    "expandable"
    "ungraded")
   (LaTeX-add-counters
    "hintLevel"
    "titlenumber"
    "sectiontitlenumber"))
 :latex)

