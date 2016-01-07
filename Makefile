HTML_DIR := html
PDF_DIR := pdf
MADOKO := node_modules/.bin/madoko

.PHONY: all html pdf
all: html pdf
html: $(HTML_DIR)/index.html
pdf: $(PDF_DIR)/index.pdf

$(HTML_DIR)/index.html: index.md approx.bib $(MADOKO)
	$(MADOKO) --odir=$(HTML_DIR) $<

$(PDF_DIR)/index.pdf: index.md approx.bib $(MADOKO)
	$(MADOKO) --odir=$(PDF_DIR) --pdf $<

$(MADOKO):
	npm install madoko
	@touch $@
