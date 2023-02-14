TEX_COMMAND="pdflatex"
BIB_COMMAND="bibtex"
SRC="paper"

all:
	$(TEX_COMMAND) $(SRC);
	$(BIB_COMMAND) $(SRC);
	$(TEX_COMMAND) $(SRC);
	$(TEX_COMMAND) $(SRC);

slate:	clean
	rm -f *.log paper.pdf *.aux *.bbl *.blg *.out *.spl *~ *.fls *.fdb* plots/*converted*  *synctex* figures/*converted*
clean:	
	rm -f *.aux *.bbl *.blg *.out *.spl *~	

