inputs="prologo.md \
	ringraziamenti.md \
	introduzione.md \
	prova-scientifica-v2.md \
	software-libero.md \
	buone-pratiche-sviluppo-software.md \
	sistema-operativo-libero.md \
	conclusioni.md \
	appendice-leggi.md \
	bibliografia.md"

# note-legali.md \
# buone-pratiche-procedimento-penale.md \

PandocPDF() {
	pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes --pdf-engine=lualatex \
		-o _tesi.pdf $inputs
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=Piras_Luca_Tesi_Informatica_Forense.pdf -dBATCH _frontespizio.pdf _tesi.pdf
}

PandocODT() {
	pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o Piras_Luca_Tesi_Informatica_Forense.odt $inputs
}

WCInputs() {
	wc -w $inputs
}

PandocPDF && PandocODT && WCInputs
