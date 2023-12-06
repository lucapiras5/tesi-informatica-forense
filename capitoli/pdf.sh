inputs="prologo.md \
	note-legali.md \
	ringraziamenti.md \
	introduzione.md \
	prova-scientifica-v2.md \
	software-libero.md \
	buone-pratiche-sviluppo-software.md \
	sistema-operativo-libero.md \
	conclusioni.md \
	appendice-leggi.md \
	bibliografia.md"

# buone-pratiche-procedimento-penale.md \

PandocPDF() {
	pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o Piras_Luca_Tesi_Informatica_Forense.pdf $inputs
}

PandocODT() {
	pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o Piras_Luca_Tesi_Informatica_Forense.odt $inputs
}

WCInputs() {
	wc -w $inputs
}

PandocPDF && WCInputs
