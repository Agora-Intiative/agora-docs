
PDFLATEX ?= pdflatex
PDF_VIEW ?= xdg-open

MAIN_PDF    = $(DOCUMENT_NAME)-main.pdf
IMPOSE_PDF  = $(DOCUMENT_NAME)-booklet.pdf
ALL_TARGETS = $(MAIN_PDF) $(IMPOSE_PDF)
CLEAN_FILES = $(MAIN_PDF) $(IMPOSE_PDF) *.log *.aux

all: $(ALL_TARGETS)

$(IMPOSE_PDF):: $(MAIN_PDF)

%.pdf:	%.tex
	TEXINPUTS=":.:../misc" $(PDFLATEX) $<
	TEXINPUTS=":.:../misc" $(PDFLATEX) $<
#	$(PDFLATEX) $<

clean:
	rm -f $(CLEAN_FILES)

view:	$(MAIN_PDF) $(IMPOSE_PDF)
	$(PDF_VIEW) $(MAIN_PDF) &
	$(PDF_VIEW) $(IMPOSE_PDF) &
