# Agent instructions

## Editing the CV

- Edit only the LaTeX source (`cv.tex`, `Preamble_CV.tex`). Do not rebuild or modify the tracked `cv.pdf`; the owner regenerates it themselves.
- To check the layout visually, build into a temporary directory outside the repo, for example:

  ```sh
  mkdir -p "$TMPDIR/cv-build"
  xelatex -interaction=nonstopmode -halt-on-error -output-directory="$TMPDIR/cv-build" cv.tex
  ```

  Do not run `make` in the repo root, because it overwrites `cv.pdf`.
