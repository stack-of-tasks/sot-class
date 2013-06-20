
all: talk.pdf

talk.pdf: talk.tex
	latex talk
	latex talk
	latex talk
	dvips -o talk.ps  -t landscape -Ppdf -G0 talk.dvi
	ps2pdf talk.ps talk.pdf

clean:
	rm -f talk.pdf talk.aux
