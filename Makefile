all: main

main: questions.pdf clean

questions.pdf: questions.tex
	rm -rf *.pd
	pdflatex questions.tex
	cp questions.pdf questions-`git rev-parse --short HEAD`.pd

clean:
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.out
	rm -rf *.dvi
