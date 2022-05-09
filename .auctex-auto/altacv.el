(TeX-add-style-hook
 "altacv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("pdfx" "a-1b") ("geometry" "margin=2cm") ("fontawesome5" "fixed") ("inputenc" "utf8") ("fontenc" "T1") ("ragged2e" "newcommands") ("tcolorbox" "skins") ("enumitem" "inline")))
   (TeX-run-style-hooks
    "latex2e"
    "glyphtounicode"
    "extarticle"
    "extarticle10"
    "etoolbox"
    "pdfx"
    "accsupp"
    "geometry"
    "fontawesome5"
    "ifxetex"
    "ifluatex"
    "scrlfile"
    "xparse"
    "fontspec"
    "cmap"
    "inputenc"
    "fontenc"
    "ragged2e"
    "xcolor"
    "tikz"
    "tcolorbox"
    "enumitem"
    "graphicx"
    "trimclip"
    "dashrule"
    "multirow"
    "tabularx"
    "changepage"
    "afterpage")
   (TeX-add-symbols
    '("addnextpagesidebar" ["argument"] 1)
    '("addsidebar" ["argument"] 1)
    '("wheelchart" ["argument"] 3)
    '("cvsection" ["argument"] 1)
    '("cvref" 3)
    '("cvskill" 2)
    '("cvtag" 1)
    '("cvachievement" 3)
    '("cvevent" 4)
    '("cvsubsection" 1)
    '("photoR" 2)
    '("photoL" 2)
    '("personalinfo" 1)
    '("tagline" 1)
    '("name" 1)
    '("utffriendlydetokenize" 1)
    "itemmarker"
    "ratingmarker"
    "divider"
    "namefont"
    "taglinefont"
    "personalinfofont"
    "cvsectionfont"
    "cvsubsectionfont"
    "makecvheader"
    "photo"
    "innerradius"
    "outerradius"
    "totalnum"
    "cumnum")
   (LaTeX-add-environments
    '("cvcolumn" 1)
    "fullwidth")
   (LaTeX-add-lengths))
 :latex)

