pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes --pdf-engine=lualatex prologo.md "$1" bibliografia.md -o qb.pdf
#pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes --pdf-engine=lualatex prologo.md buone-pratiche-sviluppo-software.md -o svilupposoftware.pdf
