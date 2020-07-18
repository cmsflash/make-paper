all: paper.tex
	make clean
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex

noref: paper.tex
	make clean
	pdflatex paper.tex

supp: supp.tex
	make clean
	pdflatex supp.tex
	bibtex supp.aux
	pdflatex supp.tex
	pdflatex supp.tex

final:
	rm -f paper.aux paper.blg paper.log paper.brf paper.out
	rm -f supp.aux supp.blg supp.log supp.brf supp.out

arxiv: final
	rm -f paper.pdf
	rm -f supp.pdf

clean: final
	rm -f paper.bbl paper.pdf
	rm -f supp.bbl supp.pdf

.PHONY: arxiv final clean
