# Flagg til pandoc
FLAGS= --toc \
	   --toc-depth 2 \
	   --standalone \
	   --number-sections \
	   --template ressurser/template.latex \
	   --filter pandoc-fignos \
	   --filter pandoc-eqnos \
	   --filter pandoc-tablenos \
	   --filter pandoc-citeproc \
	   --pdf-engine=xelatex \
	   --metadata fignos-cleveref \
	   --metadata xnos-number-sections \
	   --metadata reference-section-title:Referanser \
	   --metadata papersize:letter \
	   --metadata classoption:oneside \
	   --metadata documentclass:article \
	   --metadata secnumdepth:2 \
	   --metadata geometry:margin=2.7cm \
	   --metadata geometry:a4paper

# Utmappe
DEST= build

# Legg til PDF-er her
_PDFS= prosjektoppgave.pdf

PDFS= $(patsubst %,$(DEST)/%,$(_PDFS))

$(DEST)/%.pdf: %.md
	@mkdir -p $(@D)
	pandoc $(FLAGS) $^ -o $@

default: clean $(PDFS)

clean:
	rm -rf $(DEST)

.PHONY: default clean
