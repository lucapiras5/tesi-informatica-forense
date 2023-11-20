inputs="prologo.md \
	prova-scientifica.md \
	software-libero.md \
	buone-pratiche-sviluppo-software.md \
	sistema-operativo-libero.md \
	buone-pratiche-procedimento-penale.md \
	conclusioni.md \
	note-legali.md \
	appendice-leggi.md \
	bibliografia.md"

pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o out.pdf $inputs

wc -w $inputs
