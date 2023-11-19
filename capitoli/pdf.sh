inputs="prologo.md \
	01-concetti-fondamentali.md \
	importanza-delle-definizioni.md \
	reati-informatici.md \
	dati-digitali.md \
	informatica-forense.md \
	prova-scientifica.md \
	software.md \
	software-libero.md \
	buone-pratiche-sviluppo-software.md \
	buone-pratiche-procedimento-penale.md \
	sistema-operativo-libero.md \
	conclusioni.md \
	bibliografia.md"

pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o out.pdf $inputs

wc -w $inputs
