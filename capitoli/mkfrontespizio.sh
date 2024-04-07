# -V toc=false: non generare l'indice per il frontespizio
pandoc --pdf-engine=lualatex parti-tagliate/prologo-frontespizio.md 00b-frontespizio.md -o _frontespizio.pdf
