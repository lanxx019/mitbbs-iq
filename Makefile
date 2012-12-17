all: main

main: questions.pd clean

questions.pd: questions.tex
	pdflatex questions.tex
	cp questions.pdf questions.pd

clean:
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.out
	rm -rf *.dvi
