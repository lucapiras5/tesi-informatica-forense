---
documentclass: book
geometry:
- top=40mm
- bottom=40mm
- left=3.25cm
- right=3.25cm
indent: true
papersize: a4
fontsize: 12pt
---

# Codice sorgente e codice macchina

Per capire l'importanza del codice sorgente, 

# Software e copyright

I "programmi per elaboratore" sono oggetto di tutela giuridica.

L'art. 10 dell'Accordo TRIPs (ratificato in Italia con l. 747/1994) prevede che i programmi per elaboratore, sia come codice sorgente, sia come codice oggetto, sono protetti come opere letterarie, ai sensi della Convenzione di Berna.

La qualificazione dei programmi per elaboratore come opere letterarie è stata ripresa dalla Direttiva 2009/24 CE, [@direttiva_2009_24, art. 1] che però non ribadisce la distinzione fra codice sorgente e codice oggetto.

Nel linguaggio comune, quando si parla di software, in realtà ci si riferisce al **codice macchina**.

I processori all'interno di computer, smartphone e altri dispositivi comprendono solo una serie limitata di istruzioni, chiamato *instruction set architecture* (ISA).
Le ISA consistono in una specificazione tecnica, che serve a coordinare chi produce i componenti hardware (processori), e chi scrive il software destinato ad essere eseguito su quell'hardware (in particolare, i compilatori, di cui si parlerà in seguito).
Per semplificare la progettazione dei processori, e contenere i costi, le ISA contengono una serie limitata di operazioni a basso livello di astrazione.

In altre parole, le istruzioni per i processori

Per "basso livell

In primo luogo, si deve considerare la memoria.  I processori hanno una piccola quantità di memoria al loro interno, chiamata "registri", e possono leggere e scrivere nella memoria principale, la RAM.


Le ISA conten solo le istruzioni più basilari: leggere e scrivere uno o pochi byte ad un certo indirizzo di memoria, compiere operazioni artimetiche, confrontare dei valori, saltare ad un certo indirizzo di memoria e continuare l'esecuzione, ritornare all'indirizzo di memoria precedente.

([[https://en.wikipedia.org/wiki/Instruction_set_architecture][Instruction Set Architecture]]).
I processori ossono eseguire soltanto quello che viene chiamato *codice macchina*, che consiste in una serie di istruzioni a basso livello di astrazione; ossia, le operazioni che possono essere eseguite sono particolarmente semplici.

In ultimo luogo, le istruzioni sono lette da un processore, e quindi devono essere codificate in binario.  Tuttavia, dato che sarebbe impossibile per un essere umano memorizzare come ogni istruzione viene codificata, si introduce una prima astrazione, il linguaggio assembly.

Le due rappresentazioni sono equivalenti ed intercambiabili: =mov    eax,0x8= corrisponde al codice binario =10111000 00001000=, ed entrambe significano "inserisci il numero 8 nel registro eax", ma la prima versione è molto più leggibile della seconda.

La conversione da codice assembly a codice macchina è eseguita da un programma detto assembler.
*** Linguaggio di programmazione
- Il compromesso fra linguaggio naturale e istruzioni per i computer sono i linguaggi di programmazione: un linguaggio più rigoroso e formale del linguaggio naturale, ma
- Quando si parla genericamente di "software", ci si può riferire a due nozioni: software come programma eseguibile, o software come codice sorgente.
- Chi utilizza il software è interessato solo al programma eseguibile, mentre chi sviluppa il software è interessato anche al codice sorgente.
- Il codice sorgente sono semplici file di testo, scritti in un certo
  linguaggio di programmazione, che contengono istruzioni .
  Contengono istruzioni legge e contengono una rappresentazione
  "astratta" del programma, legg
- Se si ha accesso al codice sorgente, si può
- Il programma eseguibile è un file binario,
*** Compilazione
- File sorgente: file di testo, scritto in un linguaggio di
  programmazione
- Linguaggio di programmazione: linguaggio artificiale, con un proprio
  vocabolario, sintassi, etc.;
- Quando si parla di software si deve distinguere fra codice sorgente,
  e codice compilato.

- Consiste in una rappresentazione "astratta" del programma,
  comprensibile per un essere umano, ma non per una macchina.
- Per essere eseguito, il codice sorgente deve essere compilato in un
  file in formato binario, contenente istruzioni comprensibili ad un
  certo processore.
- La compilazione è un processo irreversibile; dato un programma
  compilato, è praticamente impossibile risalire al codice sorgente
  originale.
- Il codice sorgente può contenere commenti, che sono utili per
  documentare il codice per i programmatori, ma inutili per la
  macchina.
- Inoltre, il codice contiene la definizione di funzioni (codice che
  manipola i dati in memoria) e strutture di dati.
- Con la compilazione, i commmenti vengono eliminati, e le funzioni e
  strutture di dati sono sostituite da riferimenti anonimi ad
  inidirizzi di memoria.
- (Esempio di codice compilato su https://godbolt.org/)

Non esiste "un" codice macchina, ma numerose famiglie di 

In primo luogo, gli indirizzi di memoria da cui si leggono dati, o in cui si va a scrivere dati, devono essere indicati espressamente.  La memoria può essere paragonata ad una strada, dove ogni indirizzo di memoria è un numero civico.  Per un essere umano, è più facile ricordare il nome di un negozio 

in cui vengono specificati espressamente 


*Codice sorgente, codice macchina.*  I computer possono eseguire solo codice macchina, ma per un programmatore umano è difficile ragionare e scrivere in codice macchina.  Con l'aumentare della complessità dei processori, diventò possibile, se non necessario, sviluppare i linguaggi di programmazione, che introducono una serie di astrazioni rispetto al codice macchina (variabili, funzioni, strutture di dati, ecc...)

I linguaggi di programmazione devono essere convertiti in codice macchina, e la conversione può avvenire in tre modi diversi.  Si distingue fra linguaggi di programmazione compilati, interpretati, e convertiti in bytecode.

*Compilazione è irreversibile.*  La compilazione è la trasformazione definitiva da linguaggio di programmazione a codice macchina, ed è di fatto irreversibile.  È difficile capire le operazioni che un codice macchina sta compiendo (non sono presenti commenti, i nomi delle variabili e delle funzioni sono convertiti in indirizzi di memoria e serve studiare il codice istruzione per istruzione), ed è quasi impossibile ritornare al codice sorgente originale.

*Compilazione è necessaria.*  La compilazione è "utile" per chi crea software proprietario e non vuole rendere il codice sorgente originale disponibile, ma è un "male necessario" anche per il software libero, che altrimenti non potrebbe essere eseguito.

*Programmi interpretati.*  Nel caso dei programmi interpretati, solo un programma detto "interprete" è compilato, ed la sua funzione è di leggere il codice sorgente, e convertirlo in codice macchina sul momento, senza doverlo compilare.  In questo caso, non si perde nessuna informazione, ma il costo è che l'esecuzione del programma è molto più lenta rispetto ad un linguaggio compilato.

# Compilazione bytecode, JIT, minifier per offuscare.

*Conversione in bytecode.*  I programmi convertiti in bytecode vengono prima "compilati" in un codice macchina particolare, creato ad-hoc per quel linguaggio, detto bytecode.  Successivamente, il bytecode viene interpretato da un secondo programma.  L'esecuzione del codice è più veloce rispetto ai programmi interpretati, e rispetto ai programmi compilati, è più facile recuperare informazioni come il nome delle variabili, funzioni, ecc.

# Bibliografia
