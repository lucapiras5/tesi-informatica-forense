---
title: Tesi di Informatica Forense
author: Luca Piras
year: 2023
citation-style: universita-di-bologna-lettere.csl
links-as-notes: true
documentclass: book
lang: it
toc: true
geometry:
- top=4cm
- bottom=4cm
- left=3.25cm
- right=3.25cm
numbersections: true
fontfamily: charter
indent: true
linestretch: 1.5
papersize: a4
fontsize: 12pt
---

Origine del fenomeno dell'informatica forense [@Gammarota, 11--13]

Diffusione dell'informatica nell'America latina [@Gammarota, 13]

Origine del termine "informatica forense" [@Gammarota2016, 5]

Definizione di informatica forense negli Stati Uniti [@Gammarota, 16--17], in Italia [@Gammarota2016, 26--27]

Esatta definizione di "informatica" e "dato digitale":

- Origine del termine informatica in italiano
- Distinzione fra information science e computer science in inglese
- Informatica non richiede modalità digitali (ricerca binaria in un dizionario, algoritmo A-star su un puzzle), dato digitale non presuppone la conoscenza dell'informatica (così come non serve un diploma in ingegneria elettrica per creare una radio, non serve sapere come funziona un computer per poterlo utilizzare, ma cfr. Unix, con pagine del manuale scritte come bug report, UNIX haters handbook, 53 ss., "collect bug reports")

----

# Informatica forense, software libero

L'informatica forense è una disciplina che presenta alcune peculiarità:

- La sua novità, anche della scienza a cui fa riferimento, non si è ancora completamente assestata
- La continua e rapida evoluzione, evoluzione guidata più dall'industria privata che dal mondo accademico
- La complessità degli aspetti tecnici, che sfuggono anche alle generazioni nate dopo la rivoluzione digitale
- Una generale mancanza di *computer literacy*
- Il fatto che le analogie fra il mondo digitale con il mondo non-digitale sono imperfette
- La resistenza ad adeguarsi ai nuovi schemi

Si può fare un paragone con la storia della medicina, e la storia di Semmelweis [@Kadar2019].

## Importanza delle definizioni

Spesso le leggi si aprono con un articolo in cui si cerca di dare la migliore definizione possibile dei termini che saranno usati nel resto del testo.

Si può distinguere fra due categorie di termini da definire.

La prima sono i **termini tecnici**, che per loro natura necessitano di definizione, dato che non sono usati nel linguaggio comune, oppure sono parole prese da lingue straniere.
Ad esempio:

- I metadati sono "dati che si riferiscono a dati". Il contenuto di un file è il dato principale. Il nome di quel file, la data di creazione, di ultima modifica, di ultimo accesso, l'utente che ha creato il file, se il file è nascosto o meno sono dati accessori, che accompagnano e si riferiscono al dato principale.
- La copia o immagine forense, o *bit-stream image* (letteralmente, immagine di un flusso di bit) sono espressioni che si riferiscono all'operazione tecnica di copia integrale, bit per bit, dei contenuti di una memoria, eseguita in modo da alterare nella minore misura possibile l'originale, e garantire che la copia sia il più possibile identica rispetto all'originale.

La seconda sono i **termini di uso comune**, che assumono un significato particolare e specifico quando sono usati nel contesto di una certa disciplina o norma.

Ad esempio, nel linguaggio comune si parla indistintamente di software, ma all'interno dell'informatica, si può distinguere fra software--codice sorgente, utilizzato dai programmatori, e software--codice macchina, utilizzato dal calcolatore.

Si parla di "migliore definizione possibile", e non solo di "definizione", perché non è facile esprimere concetti tecnici in una maniera soddisfacente.

Da un lato, si deve cercare di essere il più esaustivi possibile, in modo da evidenziare chiaramente quali elementi caratterizzano quella fattispecie.

Dall'altro, se si è troppo specifici, si corre il rischio di ridurre la definizione non ad un concetto aperto e astratto, ma ad un insieme chiuso e concreto di elementi, che invita l'applicazione del brocardo *Ubi lex voluit dixit, ubi noluit tacuit* (tr. "Dove la legge ha voluto ha detto, dove non ha voluto ha taciuto").

Ad esempio, si immagini di voler dare una definizione di "dati informatici":

- "Dati salvati su un supporto informatico" è una definizione inutile, perché tautologica.
- "Dati salvati sulla memoria primaria o secondaria di un personal computer, di un server, di uno smartphone &hellip; oppure in trasmissione tra un dispositivo ed un altro mediante i protocolli HTTP(S), BitTorrent, la rete Tor &hellip;" è una definizione più specifica, ma anche limitata a quanto esplicitamente indicato.

L'uso di definizioni tecniche basate su liste pone ulteriori problemi:

- La lista può contenere termini che possono avere significati tecnici distinti, ma vengono usati nel loro significato comune come sinonimi. Quale delle due interpretazioni va usata?
- La lista termina con una formula di chiusura come "&hellip; e simili". Il contenuto della lista è sufficientemente chiaro da permettere all'interprete---che molto probabilmente non è familiare con la materia tecnica---di capire quali siano i casi simili?
- La lista contiene un miscuglio di elementi che fra di loro non sono simili, e la formula di chiusura "e simili" diventa priva di significato. Quale conclusione deve trarre l'interprete?

Ad esempio, si consideri l'art. 352, co. 1-bis, c.p.p.:

> [G]li ufficiali di polizia giudiziaria, [&hellip;] procedono altresì alla perquisizione di sistemi informatici o telematici, [&hellip;] quando hanno fondato motivo di ritenere che in questi si trovino occultati dati, informazioni, programmi informatici o tracce comunque pertinenti al reato che possono essere cancellati o dispersi.

@Gammarota2016 [p. 81] fa notare che:

> Nell'espressione "dati, informazioni, programmi informatici o tracce comunque pertinenti al reato che possono essere cancellati o dispersi" vengono ammassati elementi eterogenei quali i dati, unico termine sufficiente a descrivere l'intera gamma di elementi digitali rinvenibili, le informazioni, che invece derivano dal rapporto di interpretazione soggettiva, i programmi informatici di cui non si comprende la rilevanza, nonché le tracce pertinenti al reato che, in relazione alla dimensione digitale, mostra tutta la sua evanescenza;

La norma giuridica deve essere interpretata per poter essere applicata al caso concreto [@Faralli2002, 57], e norme poco chiare costringono l'interprete a realizzare un'operazione non "dichiarativa" del significato della norma, ma "creativa" [@Faralli2002, 59].

Si va ben oltre la normale ambiguità e vaghezza del linguaggio naturale, e si arriva ad un ragionamento pienamente "defettibile", solo probabilmente valido, e sempre soggetto ad una eventuale revisione [@Faralli2002, 67--68].

Tuttavia, il giudice è soggetto al divieto di *non liquet* (tr. "non è chiaro"), e non può rifiutarsi di decidere una questione per il solo motivo che le leggi non sono chiare.

Questo è deducibile da tre disposizioni:

- Il giudice "[d]eve seguire le norme del diritto" (art. 113, c.p.c.);
- Il giudice "[d]eve pronunciare su tutta la domanda, e non oltre i limiti di essa" (art. 112, c.p.c.);
- "Tutti i provvedimenti giurisdizionali devono essere motivati" (art. 111, co. 6, Cost.).

Nell'essere costretto a motivare la sua scelta, il giudice:

- Sceglie un'interpretazione "a caso", perché tutte sembrano plausibili, se motivate adeguatamente;
- Oppure, sceglie l'opzione "più conveniente", che permette di concludere il procedimento con un sicuro risparmio di tempo o risorse, ma con un altrettanto certo danno ad altri valori, come il diritto alla difesa delle parti, l'acquisizione di tutti gli elementi utili per la decisione, e cosi via.

<!-- TODO
- differenza fra information science/computer science in inglese

- fonti su ProQuest:
  - https://www.proquest.com/docview/1301245471/fulltextPDF/E77F439D34842E1PQ/1?accountid=9652
  - https://www.proquest.com/docview/195307350/43FBF6957D14713PQ/2?accountid=9652
  - https://www.proquest.com/docview/197238093/fulltextPDF/7E64339FF8FC4500PQ/1?accountid=9652
  - https://www.proquest.com/docview/216718724/AF041DAB72FF47D1PQ/5?accountid=9652
- "dato digitale", e "prova informatica"
- rischi di interpretazione liberale delle norme: stampa di file con firma del notaio (v. Gammarota) (procedura che assicura la conformità dell'originale), sequestro dell'intero dispositivo senza restituirlo (immodificabilità), art. 354
- mezzo di rappresentazione: più livelli (supporto, filesystem e relativi metadati, file)
- come la prova scientifica entra nel processo: perito e consulenti
- rilevanza pratica delle definizioni: norme in bianco, Canestrari2017, 120 ss.
- informatica forense come disciplina altamente tecnica, servono definizioni precise
- nascita del termine informatica, Bolognesi1999

Riferimenti:

- introduzione del processo telematico: https://trasformazionedigitale.bit4id.com/e-government/processo-telematico-italia/
-->

## Canestrari2017

Le definizioni hanno una rilevanza pratica significativa.
La Costituzione afferma il principio della riserva di legge:
[^Art. 25, co. 2, Cost.]

> Nessuno può essere punito se non in forza di una legge che sia entrata in vigore prima del fatto commesso.

L'articolo tutela la libertà 
Per legge, si intende:

- Le "leggi in senso formale", promulgate secondo la procedura prevista dalla Costituzione.^[Articoli 70--74.]
- I decreti legislativi, che vengono emanati dal Governo su delega del Parlamento,^[Art. 77, co. 1]
il quale deve indicare l'oggetto della delega, ed i principi e criteri a cui il Governo si deve attenere.^[Art. 76, co. 1]
- I decreti-legge

In primo luogo, il linguaggio naturale è per sua natura impreciso: si può solo cercare 

servono ad eliminare le ambiguità che possono sorgere quando si va ad applicare la regola al caso concreto.

L'informatica forense è una disciplina che si espone ad entrambi i rischi, per una serie di fattori.

per cercare di ridurre al minimo l'imbarazzo che deriva dall'e ambiguità nell'applicazione, o lo spazio di interpretazione creativa

L'**informatica forense** è una disciplina che presenta varie particolarità.

In primo luogo, va osservato che la sua nascita è estremamente recente.
Si inizia a parlare di **informatica** nella seconda metà del ventesimo secolo, nel 1957 in Germania, e nel 1962 in Francia
[@Bolognesi1999, 916--917].

## Dato, informazione, mezzo di rap&shy;pre&shy;sen&shy;tazione

In primo luogo, è utile operare una distinzione fra tre concetti: mezzo di rappresentazione, dati e informazioni.

Il **mezzo di rappresentazione** è il metodo con cui i dati vengono conservati o trasmessi, e comporta sempre una modifica della realtà materiale.

L'evoluzione tecnologica ha permesso la creazione di mezzi di rappresentazione sempre più sofisticati, ma il principio fondamentale rimane lo stesso: permettere la conservazione e trasmissione di dati.


Ad esempio:

- Per quanto riguarda la conservazione dei dati, si è passati dalle tavolette di argilla, alla stampa, alle moderne memorie di massa.
- Per la trasmissione dei dati a distanza, si è passato dai segnali di fumo, al telegrafo, alla fibra ottica.

Indipendentemente dal mezzo usato, l'obiettivo rimane lo stesso: conservare dei dati nel tempo, o trasmetterli a distanza.

La prima parte può essere confrontata alla definizione di prova documentale (c.p.p, art. 234, co. 1):

> È consentita l'acquisizione di scritti o di altri documenti che rappresentano fatti, persone o cose mediante la fotografia, la cinematografia, la fonografia o qualsiasi altro mezzo.


Il **dato** è quanto viene conservato o trasmesso con la modalità di rappresentazione.


La Convenzione di Budapest sulla criminalità informatica definisce i *computer data* (dati informatici) come [@ConvenzioneBudapest2001, art. 1, lett. a]:

> [A]ny representation of facts, information or concepts in a form suitable for processing in a computer system, including a program suitable to cause a computer system to perform a function;


In entrambi i casi, si ha una "rappresentazione" di informazioni.

- Informatizzazione della società, a livello internazionale e nazionale
- Ormai l'informatizzazione sta raggiungendo anche la giustizia, con il processo telematico
- Le informazioni digitali rilevano all'interno di processi

- Natura particolare dei dati, fragilità
- Necessità di applicare cautele particolari ai dati

## Informatica forense, prova digitale

- Inquadramento della digital forensics e della prova scientifica nell'ordinamento italiano

## Codice macchina

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
- 

Allo stesso modo, i processori vengono omologati nei confronti dell'ISA. Questo ha due implicazioni per chi produce hardware.

La prima è che si possono 
- Si può migliorare l'hardware senza perdere la compatibilità con il software
- Più produttori possono sviluppare lo stesso hardware
- 
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

## Codice sorgente

Tradizionalmente, e fino agli anni '60, il software veniva venduto insieme all'hardware, e se ne incoraggiava la libera condivisione. È solo negli anni '70 che il software inizia ad essere venduto in maniera indipendente. [@gonzalez_barahona_2021, 75]

Veniva fornito in aggiunta all'harwdare, ma non

Per capire l'importanza del codice sorgente, 

## Software e copyright

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

## Compilazione bytecode, JIT, minifier per offuscare.

*Conversione in bytecode.*  I programmi convertiti in bytecode vengono prima "compilati" in un codice macchina particolare, creato ad-hoc per quel linguaggio, detto bytecode.  Successivamente, il bytecode viene interpretato da un secondo programma.  L'esecuzione del codice è più veloce rispetto ai programmi interpretati, e rispetto ai programmi compilati, è più facile recuperare informazioni come il nome delle variabili, funzioni, ecc.

# Testi delle leggi {-}

<!-- La numerazione delle note a piè di pagina non è ripristinata dopo un capitolo non numerato: 
https://tex.stackexchange.com/questions/53529/how-to-reset-footnote-numbering-at-chapter-and-at-frontmatter-chapters

Ripristina manualmente il numero delle note a piè di pagina in LaTeX: https://tex.stackexchange.com/a/359707 -->

\setcounter{footnote}{0}

## Leggi {-}

- L. 747/1994 --- [*Ratifica ed esecuzione degli atti concernenti i risultati dei negoziati dell'Uruguay Round, adottati a Marrakech il 15 aprile 1994.*](https://www.normattiva.it/uri-res/N2Ls?urn:nir:stato:legge:1994-12-29;747)

## Trattati internazionali {-}

- Convenzione di Budapest --- [*ETS 185 -- Cybercrime (Convention).*](https://rm.coe.int/1680081561)

## Direttive europee {-}

- Direttiva 2009/24 --- [*Direttiva 2009/24/CE del Parlamento europeo e del Consiglio, del 23 aprile 2009, relativa alla tutela giuridica dei programmi per elaboratore.*](http://data.europa.eu/eli/dir/2009/24/oj/ita)

# Bibliografia
