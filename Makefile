
all: talk.pdf talk_part2.pdf

talk.pdf: talk.tex
	latex talk
	latex talk
	latex talk
	dvips -o talk.ps  -t landscape -Ppdf -G0 talk.dvi
	ps2pdf talk.ps talk.pdf

talk_part2.pdf: talk_part2.tex
	latex talk_part2
	latex talk_part2
	latex talk_part2
	dvips -o talk_part2.ps  -t landscape -Ppdf -G0 talk_part2.dvi
	ps2pdf talk_part2.ps talk_part2.pdf

clean_part1:
	rm -f talk.pdf talk_part.aux

clean_part2:
	rm -f talk_part2.pdf talk_part2.aux

clean: clean_part1 clean_part2