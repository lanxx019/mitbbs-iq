all: main

main: questions.pdf clean

questions.pdf: questions.tex
	pdflatex questions.tex

clean:
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.out
	rm -rf *.dvi
