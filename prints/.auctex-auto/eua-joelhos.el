;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "eua-joelhos"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "a4paper" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "") ("fontspec" "") ("graphicx" "") ("longtable" "") ("wrapfig" "") ("rotating" "") ("ulem" "normalem") ("capt-of" "") ("hyperref" "") ("pgfornament" "") ("fontawesome5" "") ("geometry" "a4paper" "margin=1.5cm")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "amsmath"
    "fontspec"
    "graphicx"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "capt-of"
    "hyperref"
    "pgfornament"
    "fontawesome5"
    "geometry"))
 :latex)

