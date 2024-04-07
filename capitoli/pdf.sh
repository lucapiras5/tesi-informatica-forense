inputs="00a-prologo.md \
	00b-frontespizio.md \
	00c-ringraziamenti.md \
	00d-introduzione.md \
	01-prova-scientifica.md \
	02-software-libero.md \
	03-buone-pratiche-sviluppo-software.md \
	04-sistema-operativo-libero.md \
	99a-conclusioni.md \
	99b-bibliografia.md"

# note-legali.md \
# buone-pratiche-procedimento-penale.md \
# appendice-leggi.md \

PandocPDF() {
	pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes --pdf-engine=lualatex \
		-o _tesi.pdf $inputs
	# gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=Piras_Luca_Tesi_Informatica_Forense.pdf -dBATCH _frontespizio.pdf _tesi.pdf
}

PandocODT() {
	pandoc -s --citeproc --bibliography citations.bib --from markdown+inline_notes -o Piras_Luca_Tesi_Informatica_Forense.odt $inputs
}

WCInputs() {
	wc -w $inputs
}

#PandocPDF && PandocODT && WCInputs
PandocPDF && WCInputs
