;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cv"
 (lambda ()
   (TeX-run-style-hooks
    "Preamble_CV")
   (LaTeX-add-environments
    '("compactitem" LaTeX-env-args ["argument"] 0)))
 :latex)

