# Software libero

## Software

### Diversi significati di software

- programma per calcolatore, sequenza di istruzioni
- software come codice macchina o come codice sorgente
- include anche i componenti del sistema operativo
- firmware

### Codice macchina

- più semplice da spiegare
- istruzioni di basso livello, indicano direttamente alla macchina cosa fare
- non leggibili da parte del programmatore
- natura puramente materiale, analoghe al giudizio di esecuzione
- strettamente legato ad un processore, ogni processore ha un set di istruzioni particolare

### Codice assembler

- natura intermedia fra codice sorgente e codice macchina
- leggibile dal programmatore, ma corrisponde in maniera diretta ad istruzioni per la macchina
- richiede un assembler
- l'unica astrazione è il fatto che può essere letto, e le macro

### Codice sorgente

- file di testo
- descrizione astratta del programma, il processore non può utilizzarla diversamente
- possono contenere commenti
- linguaggi di programmazione di basso livello: assembler, C, ecc, gestione della memoria manuale, paradigma imperativo
- linguaggi di alto livello: gestione automatica della memoria, paradigma descrittivo (al massimo livello con SQL)

### Compilazione

#### Verso codice macchina

- codice sorgente viene trasformato in codice macchina in maniera permanente

#### Verso bytecode

#### Verso altro codice sorgente

- Transpilazione: conversione in un altro linguaggio di programmazione
- Generazione di codice: da un modello

### Interpretazione

- JIT

### Offuscamento

- tecniche usate dalle misure di protezione

### Codice macchina

<!--
Prima di discutere gli aspetti legali del software, è necessario operare una distinzione tecnica, tra il software inteso come codice macchina, ed il software inteso come codice sorgente.

Normalmente, quando si parla di software, in realtà si sta parlando di **codice macchina**, ossia istruzioni che possono essere direttamente eseguite da un calcolatore.

Per semplificare la loro progettazione e contenere i costi, i processori possono eseguire solo un gruppo limitato di operazioni particolarmente semplici.
La specificazione tecnica che definisce quali sono queste istruzioni, e quali effetti hanno una volta eseguite, è chiamato ***instruction set architecture*** (ISA).

Lo scopo principale dell'ISA è di **coordinare chi sviluppa l'hardware e chi sviluppa il software**.

Dal punto di vista della forma e funzione, si può fare un'**analogia tra le ISA e le direttive europee** (TFUE, art. 288, n.3):

> La direttiva vincola lo Stato membro cui è rivolta per quanto riguarda il risultato da raggiungere, salva restando la competenza degli organi nazionali in merito alla forma e ai mezzi.

Naturalmente, le ISA non sono un vincolo giuridico sovranazionale, ma uno **standard tecnico astratto**.
La loro creazione è libera, e la loro adozione è puramente volontaria.
Chiunque è libero di creare una nuova ISA, e proteggerla con brevetti.

Ad esempio, una delle motivazioni che spinsero la Intel a sviluppare la nuova ISA *IA64* era il fatto che "aveva lentamente perso la sua egemonia" sulla loro ISA *x86*
[@history_of_modern_64_bit_computing, 6].
Infatti, varie compagnie, tra cui la AMD, avevano ottenuto il diritto di produrre processori compatibili con quelli della Intel
[@history_of_modern_64_bit_computing, 3, *AMD gained rights to manufacture Intel x86 processors*].

L'obiettivo era di creare una nuova ISA, restringere e mantenere l'accesso alla loro nuova proprietà intellettuale, ed  usare la loro posizione dominante sul mercato per incoraggiarne, se non costringerne, l'adozione
[@history_of_modern_64_bit_computing, 6].

La nuova IA64 era profondamente diversa dalla x86, e **non era interoperabile o retrocompatibile**.
Da un lato, ripartire da capo, invece di continuare ad estendere la ISA già esistente in maniera retrocompatibile (come era stato già fatto in passato), avrebbe ostacolato i concorrenti della Intel:

- Da un **punto di vista legale**, la novità assoluta della nuova architettura rappresenterebbe un punto a favore della protezione intellettuale: i brevetti richiedono la novità dell'invenzione, ed il diritto d'autore richiede la creatività.
- Da un **punto di vista economico**, i concorrenti, che sarebbero costretti a loro volta a ripartire da zero, e quindi incorrere in costi maggiori, non potendo continuare a sfruttare l'esperienza ed i processi produttivi precedenti.

Tuttavia, questo significava anche che tutto il software scritto per x86 non avrebbe funzionato nella nuova architettura.

gli autoveicoli.
Esistono numerosi produttori di automobili, modelli di veicoli, e tecniche di produzione, più o meno sofisticate.
Tuttavia:

- Chi produce veicoli deve rispettare una serie di standard, che definiscono le funzionalità minime del veicolo.
  Indipendentemente che si tratti di un'auto di lusso o un'utilitaria, se gli standard non sono rispettati, il veicolo non sarà autorizzato a circolare su strada.
- Anche chi guida veicoli è intessato a conoscere quali sono le loro funzionalità minime, in modo da sapere come usarli.


Una volta che tutti i veicoli tendono ad avere le stesse funzionalità, sia a causa degli standard, sia per l'"inerzia" dovuta alle aspettative ed abitudini dei guidatori, chi impara a guidare in un veicolo successivamente può facilmente usare qualsiasi veicolo.

- Nel tempo, gli standard diventano sentieri battuti, da cui diventa costoso discostarsi, 
Allo stesso modo:

- Esistono moltissimi modelli di processori, con vari livelli di complessità tecnica, performance, e costo.
  Tuttavia, un processore è utile solo quanto il software che può eseguire.
  Chi produce un processore pubblica la documentazione tecnica relativa al suo funzionamento.

Allo stesso modo, i processori vengono omologati nei confronti dell'ISA. Questo ha due implicazioni per chi produce hardware.

La prima è che si possono 
- Si può migliorare l'hardware senza perdere la compatibilità con il software
- Più produttori possono sviluppare lo stesso hardware
 
La prima è una **maggiore interoperabilità **. kbk

Chi produce l'hardware deve garantire che il funzionamento del prodotto sia coerente con lo standard definito dall'ISA, indipendentemente dagli esatti dettagli pratici e tecnici riguardo il funzionamento del processore.

La prima è la **maggiore interoperabilità del software**.

La seconda è la **
che si può sperimentare con soluzioni tecniche alternative, più performanti o più economiche,

La seconda è che più imprese possono sviluppare 


in modo da garantire l'interoperabilità dello stesso software, in maniera indipendente dall'hardware.

Ad es., la Intel sviluppò il processore 8086, e la AMD

sia la Intel che la AMD producono processori che implementano una ISA chiamata x86-64.
Lo stesso software può essere eseguito su entrambi i processori, senza differenze di funzionalità.

Le ISA possono essere considerate una obbligazione di risultato: è irrilevante come   è una specificazione astratta, nel senso che specifica solo il risultato da raggiungere, ma non impone una determinata soluzione tecnica. Pertanto, la s

Ad es.:

- I primi processori 

Nel 1978, la Intel introduce il processore *8086*, con registri a 16 bit.

Nel 1985, la Intel rilascia il primo processore con registri a 32-bit, l'*Intel386* [@intel_64_software_developer_manual_vol_1, 2-1]. Il nuovo processore 

Negli anni '90, la Intel inizia a lavorare ad *IA64*, una architettura con registri a 64-bit, chiamata IA64. La nuovoa

Nel 2003, la AMD crea un'estensione a 64-bit all'architettura Intel chiamata rilascia Opteron, il primo processore a 64-bit [@history_of_modern_64_bit_computing, 14], c


La dimensione dei registri è importante: mentre è possibile 

I processori hanno una piccola quantità di memoria al loro interno, utilizzata per   
- Come il processore accede alla memoria RAM.

quali istruzioni sono disponibili. Tipicamente, includono:

- Istruzioni per trasferire dati. I processori contengono una piccola quantità di memoria al loro interno, divisa in una serie "registri".
- Istruzioni per operazioni aritmetiche. I processori operano su dati in forma binaria, 
- Istruzioni logiche, come

In ultimo luogo, le istruzioni sono lette da un processore, e quindi devono essere codificate in binario.  Tuttavia, dato che sarebbe impossibile per un essere umano memorizzare come ogni istruzione viene codificata, si introduce una prima astrazione, il linguaggio assembly.

Le due rappresentazioni sono equivalenti ed intercambiabili: =mov    eax,0x8= corrisponde al codice binario =10111000 00001000=, ed entrambe significano "inserisci il numero 8 nel registro eax", ma la prima versione è molto più leggibile della seconda.

La conversione da codice assembly a codice macchina è eseguita da un programma detto assembler.

Il codice sorgente consiste in un compromesso 
- Il compromesso fra linguaggio naturale e istruzioni per i computer sono i linguaggi di programmazione: un linguaggio più rigoroso e formale del linguaggio naturale, ma
- Quando si parla genericamente di "software", ci si può riferire a due nozioni: software come programma eseguibile, o software come codice sorgente.
- Chi utilizza il software è interessato solo al programma eseguibile, mentre chi sviluppa il software è interessato anche al codice sorgente.
- Il codice sorgente sono semplici file di testo, scritti in un certo
  linguaggio di programmazione, che contengono istruzioni .
  Contengono istruzioni legge e contengono una rappresentazione
  "astratta" del programma, legg
- Se si ha accesso al codice sorgente, si può
- Il programma eseguibile è un file binario,

Il codice sorgente interessa principalmente a chi sviluppa software, e non all'utilizzatore finale. Questi ultimi sono interessati ad 

Nel linguaggio comune, quando si parla di software, generalmente ci si riferisce ad un programma che può essere eseguito su un computer.
-->

### Codice sorgente

<!--
Tradizionalmente, e fino agli anni '60, il software veniva venduto insieme all'hardware, e se ne incoraggiava la libera condivisione. È solo negli anni '70 che il software inizia ad essere venduto in maniera indipendente. [@gonzalez_barahona_2021, 75]

Veniva fornito in aggiunta all'harwdare, ma non

Per capire l'importanza del codice sorgente, 
-->

### Software e copyright

<!--
I "programmi per elaboratore" sono oggetto di tutela giuridica.

L'art. 10 dell'Accordo TRIPs (ratificato in Italia con l. 747/1994) prevede che i programmi per elaboratore, sia come codice sorgente, sia come codice oggetto, sono protetti come opere letterarie, ai sensi della Convenzione di Berna.

> I programmi per elaboratore, in codice sorgente o in codice oggetto, sono protetti come opere letterarie ai sensi della Convenzione di Berna (1971).^[All. 1C., art. 10, co. 1, L. 747/1994.]

La qualificazione dei programmi per elaboratore come opere letterarie è stata ripresa dalla Direttiva 2009/24 CE, [@direttiva_2009_24, art. 1] che però non ribadisce la distinzione fra codice sorgente e codice oggetto.

Nel linguaggio comune, quando si parla di software, in realtà ci si riferisce al **codice macchina**.

In altre parole, le istruzioni per i processori

Per "basso livell

In primo luogo, si deve considerare la memoria.  I processori hanno una piccola quantità di memoria al loro interno, chiamata "registri", e possono leggere e scrivere nella memoria principale, la RAM.


Le ISA conten solo le istruzioni più basilari: leggere e scrivere uno o pochi byte ad un certo indirizzo di memoria, compiere operazioni artimetiche, confrontare dei valori, saltare ad un certo indirizzo di memoria e continuare l'esecuzione, ritornare all'indirizzo di memoria precedente.
*** Linguaggio di programmazione
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

-->
<!--

### Compilazione bytecode, JIT, minifier per offuscare

*Conversione in bytecode.*  I programmi convertiti in bytecode vengono prima "compilati" in un codice macchina particolare, creato ad-hoc per quel linguaggio, detto bytecode.  Successivamente, il bytecode viene interpretato da un secondo programma.  L'esecuzione del codice è più veloce rispetto ai programmi interpretati, e rispetto ai programmi compilati, è più facile recuperare informazioni come il nome delle variabili, funzioni, ecc.
-->

## Introduzione

- origine storica del software libero

## Software e diritto d'autore

- software e rapporto con il diritto d'autore

## Licenze d'uso del software

- inquadramento giuridico delle licenze all'interno del sistema italiano

## Definizione di software libero

- definizione delle libertà fondamentali che devono essere garantite dal software per poter essere libero

## Licenze libere

- licenze approvate dalla FSF, dalla OSI
- meglio evitare licenze ad-hoc

## GPL

## LGPL

## MIT

## Reverse-engineering

- legata alla libertà di studiare il funzionamento del software
- casi giuridici che affermano questa libertà

## Documentazione libera

- necessità di documentare il software

## Sostenibilità economica del software libero

- privati che distribuiscono codice libero, o che rendono parte del loro codice libero
- sostenibilità economica

## Software libero e pubblica amministrazione

- risparmio di spesa
- più facile creare soluzioni ad-hoc
- principio della trasparenza dell'attività amministrativa
- Europa incoraggia distrib

## Software libero ed informatica forense

### Diritto alla difesa

- 

### Ripetitibilità e riproducibilità delle analisi

### Peer-review del software di analisi

- la libera condivisione del codice permette la peer-review, e quindi di migliorare il codice

### Flessibilità

- ogni investigazione presenta caratteri particolari
- è possibile modificare il software
