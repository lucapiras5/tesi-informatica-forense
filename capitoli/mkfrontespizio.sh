# -V toc=false: non generare l'indice per il frontespizio
pandoc --pdf-engine=lualatex prologo-frontespizio.md frontespizio.md -o _frontespizio.pdf
