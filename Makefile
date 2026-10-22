LATEX   ?= xelatex
TEXFLAGS = -interaction=nonstopmode -halt-on-error -file-line-error

DEPS = cv.tex Preamble_CV.tex photo.jpg $(wildcard fonts/*.ttf)

.PHONY: all clean distclean

all: cv.pdf

# Second pass lets hyperref settle page labels and PDF outlines.
cv.pdf: $(DEPS)
	$(LATEX) $(TEXFLAGS) cv.tex
	$(LATEX) $(TEXFLAGS) cv.tex

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv

distclean: clean
	rm -f cv.pdf
