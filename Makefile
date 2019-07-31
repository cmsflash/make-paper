all: paper.tex
	make clean
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex

noref: paper.tex
	make clean
	pdflatex paper.tex

clean:
	rm -f paper.aux paper.bbl paper.blg paper.log paper.brf paper.pdf paper.out

.PHONY: clean
