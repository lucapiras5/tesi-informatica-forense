pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes --pdf-engine=lualatex 00a-prologo.md "$1" 99b-bibliografia.md -o _qb.pdf
#gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=qb.pdf -dBATCH _frontespizio.pdf _qb.pdf
#pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes --pdf-engine=lualatex prologo.md buone-pratiche-sviluppo-software.md -o svilupposoftware.pdf
