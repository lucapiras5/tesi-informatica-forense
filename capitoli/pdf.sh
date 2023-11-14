pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o out.pdf \
	prologo.md \
	00-bozza.md \
