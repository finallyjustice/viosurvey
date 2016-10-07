# ./cl
all:
	latex viosurvey.tex
	bibtex viosurvey
	latex viosurvey.tex
	latex viosurvey.tex
	dvips -t letter -f -Pcmz viosurvey.dvi -o viosurvey.ps 
	ps2pdf viosurvey.ps

open:
	gnome-open viosurvey.pdf

clean:
	rm -rf *~ *.dvi *.blg *.log .*~ *.aux *.ps *.pdf *.bbl

remove:
	rm -rf *~ *.dvi *.blg *.log .*~ *.aux *.ps  *.bbl
