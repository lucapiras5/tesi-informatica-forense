In termini generali, l'espressione "informatica forense" suggerisce già da sé l'oggetto della materia.
L'aggettivo "forense" indica che qualcosa riguarda l'attività giudiziaria, e quando viene utilizzata con riferimento specifico alle scienze, significa che quella scienza viene usata per risolvere problemi legali.[^treccani-forense]

[^treccani-forense]: V. <https://www.treccani.it/vocabolario/forense/>.

Nell'immaginario collettivo, gli esempi classici di scienze forensi sono la medicina forense, la tossicologia forense, la balistica forense, la psichiatria forense &hellip;
Sono tutte scienze che si inseriscono all'interno di un procedimento giudiziario.

Nel caso tipico di processo penale, lo scopo è di fornire gli elementi utili a determinare la responsabilità penale dell'imputato.
Pertanto, le scienze forniscono tecniche e strumenti per dimostrare i fatti (la condotta e l'evento), e leggi scientifiche per dimostrare il nesso causale fra la condotta e l'evento.

----

Da un punto di vista storico, l'informatica forense nasce ed inizia a svilupparsi negli Stati Uniti, per due motivi.

Il primo era il fatto che gli Stati Uniti erano -- e sono tutt'ora -- all'avanguardia per quanto riguarda l'innovazione informatica:

- I *personal computer*[^personal-computer] furono sviluppati e standardizzati da IBM ed Apple;
- Il mercato dei processori e schede grafiche è quasi interamente controllato da Intel, AMD e Nvidia;
- I principali sistemi operativi (Windows, macOS e GNU) sono stati inizialmente sviluppati rispettivamente da Microsoft, Apple, e da Richard Stallman (fondatore della Free Software Foundation);
- Il linguaggio di programmazione C[^personal-computer] è stato originariamente sviluppato all'interno di Bell Labs, e successivamente standardizzato dall'ANSI.

[^personal-computer]: Computer pensati per l'uso domestico.

L'aforisma "fatta la legge, trovato l'inganno" può essere adattato in "fatta la tecnologia, trovato il reato": se la popolazione ha a disposizione nuove tecnologie, i criminali troveranno il modo di abusarle, e si renderà necessario un intervento legale.

----

I bit hanno una natura particolare.
Non possono essere percepiti e manipolati se non con l'uso di sistemi e programmi informatici, ma questo non significa che hanno natura immateriale.
La conservazione e trasmissione dei bit richiede sempre una modificazione nel mondo materiale.

Se non fosse possibile misurare questa modificazione[^fenomeni-elettromagnetici] non sarebbe possibile conservare e trasmettere i bit.
Ancora, il fatto che la modificazione esiste solo per un periodo limitato[^durata-breve] o può essere dispersa facilmente[^dispersione-facile] non è un argomento convincente per la natura immateriale dei dati.

[^fenomeni-elettromagnetici]: Generalmente la modificazione consiste in una carica elettrica, o un'onda elettromagnetica.
[^durata-breve]: Ad esempio, i dati contenuti nella RAM si disperdono poco dopo che il computer viene spento, i dati in transito su un cavo o su un collegamento senza fili esistono solo per la durata del trasferimento.
[^dispersione-facile]: Ad esempio, chiudendo un programma senza salvare le modifiche, spegnendo il computer, scollegando il dispositivo USB o un cavo Ethernet durante un trasferimento di dati.

----

I sistemi informatici hanno a disposizione un numero molto più limitato di bit.
Secondo il numero di Avogadro, un singolo grammo di idrogeno contiene circa 6 &times; 10^23^ atomi di idrogeno.
La capacità attuale dei dischi rigidi è misurata in terabyte (TB), dove un TB equivale a 8 &times; 10^12^ bit.

----

Per "forma che si presta ad elaborazione informatica", si intende la rappresentazione dei dati in codifica binaria, come una sequenza di bit (da *binary digit*, cifra binaria).

I bit hanno una natura particolare---"sono" memoria, perché sono in grado di rappresentare dati, ma "non hanno" memoria.
Un bit è già l'unità minima ed indivisibile dei dati digitali, e quindi non può tenere traccia dei dati che conteneva in precedenza, conosce solo il suo stato attuale.

Questo differenzia i dati informatici dalla realtà materiale.
La realtà materiale è composta da un numero elevatissimo di atomi.
Un ipotetico strumento di misurazione sufficientemente sensibile può rilevare almeno le tracce di una qualsiasi modificazione.
È praticamente impossibile non disturbare almeno qualche molecola.

In teoria questo strumento potrebbe essere in grado di leggere i supporti materiali su cui sono memorizzati i dati informatici, e di ricostruire i dati che sono stati sovrascritti in un secondo momento [@Gutmann1996].
Nella pratica, si dubita della fattibilità di questo tipo di operazioni [@Feenberg2013].
Anche se fosse possibile, sarebbe comunque necessario valutare l'affidabilità delle tecniche utilizzate e dei risultati ottenuti.

Questo significa che l'unico modo di verificare se i dati informatici sono stati alterati è di studiare i dati stessi.
Viceversa, i dati digitali possono essere facilmente modificati senza lasciare tracce.


In teoria, anche un sistema informatico può tenere traccia di tutte le modifiche che incidono sui bit che lo compognono.

Quando un bit viene sovrascritto, non è possibile esaminare i bit adiacenti per cercare di recuperare il valore precedente.

Né tantomeno è possibile sapere "chi" ha modificato quel bit, nel senso di quale utente o programma.


- Caratteristiche dei bit rispetto alle "prove materiali"

----

Le "norme giuridiche" vanno intese nel senso più ampio possibile, l'unico requisito che le rende di interesse per l'informatica forense è che possano portare al trattamento di dati informatici.

. Possono essere di diritto sostanziale o processuale, appartenere a qualsiasi branca del diritto
come le "norme di diritto sostanziale e processuale che talvolta, anche solo latamente, riguardano l'utilizzo di sistemi informatici e telematici nonché i dati digitali; \Omissis{} non è esclusa nessuna branca del diritto, anche extra ordinamentale" [@Gammarota2016, 27].

In primo luogo, si specifica che è preferibile un approccio il più possibile espansivo.

Da questo punto di vista, è opportuno interpretare "processuali" come "processuali e procedimentali".

Nell'ambito della procedura penale, il "processo" propriamente detto inizia solo con l'esercizio dell'azione penale da parte del PM.
Fino a quel momento, e quindi per la durata delle indagini preliminari, si parla di "procedimento" [@Conso2020, 47, 419].

Tuttavia, varie disposizioni permettono agli atti di indagine preliminare, o comunque compiuti prima dell'inizio del giudizio, di entrare nel dibattimento.

Ad esempio, gli atti irripetibili compiuti dalla PG e dal PM, ed i verbali degli atti assunti in incidente probatorio (art. 431 co. 1 lett. *b*, *c*, *e* c.p.p.) sono inclusi nel fascicolo del dibattimento.

La loro natura irripetibile rende imprescindibile il ricorso alle tecniche dell'informatica forense, in modo da garantire una corretta trattazione del dato.

Invece di cercare di enumerare tutte le attività tipiche possibili, si compie un generico rinvio alle "tecniche informatiche in senso ampio \Omissis{} purché finalizzate al trattamento dei dati digitali per trarne informazioni utili alla ricostruzione dei fatti processualmente rilevanti" [@Gammarota2016, 27].

Questo evita il problema di cercare di essere il più esaustivi possibili nella definizione, o di doverla aggiornare periodicamente per tenerla al passo con le nuove prassi o le innovazioni tecniche.

Le *best practices* (migliori pratiche) in tema di *digital evidence* che vengono raccolte e codificate a livello internazionale negli standard ISO/IEC [@Gammarota2016, 27--28] non sono propriamente norme giuridiche, perché la loro adozione è volontaria.
Piuttosto, data la loro natura principalmente tecnica, possono essere ricondotte all'interno delle "tecniche informatiche".

Nel definire l'oggetto dell'informatica forense, non si parla di "prova informatica", ma in maniera estremamente generica, di "dati digitali a fini processuali".

Il termine "prova" ha un significato tecnico preciso, che evoca la decisione nel merito del giudice---decidere una causa civile, o determinare se l'imputato sia colpevole, innocente, o socialmente pericoloso---e una serie di principi, tra cui la sua formazione in contraddittorio, specie nel processo penale (art. 111 co. 4 Cost.).

Tuttavia, esistono situazioni in cui il giudice deve prendere una decisione, ma non si parla propriamente di "prove".
Ad esempio, nel caso delle misure cautelari nel processo penale, il giudice decide sulla base di "gravi indizi di colpevolezza" (art. 273 co. 1 c.p.p.), che vengono presentati unilateralmente dal PM---all'imputato è concesso difendersi solo in un momento successivo, con l'interrogatorio di garanzia (art. 294 co. 1 c.p.p.).

Il solo fatto che si richiedano "indizi", e non "prove", non deve far pensare che non si debbano applicare i principi dell'informatica forense.
Anzi, proprio per il fatto che si richiedono "gravi indizi", e quindi quasi una prova anticipata della colpevolezza [@Conso2020, 336--337], diventa necessario trattare correttamente i dati digitali su cui si fonda la richiesta.

In ultimo, l'espressione "a fini processuali" evita che la scienza rimanga fine a sé stessa---il fine che gli viene impartito è di rispondere alle esigenze e ai meccanismi del processo, e di rispettare le garanzie processuali [@Renzetti2015, 399].

Le tecniche di trattamento dei dati previste dall'informatica forense saranno fondamentali per il processo telematico, dove non solo alcune prove, ma tutti gli atti che compongono il processo, esistono come dati digitali.

La Convenzione di Budapest definisce i *computer data* (dati informatici) come (art. 1, lett. *b*):

> *[A]ny representation of facts, information or concepts in a form suitable for processing in a computer system, including a program suitable to cause a computer system to perform a function;*.[^definizione-dati-digitali]

[^definizione-dati-digitali]: *Qualunque presentazione di fatti, informazioni o concetti in una forma che si presta a elaborazione informatica, inclusi i programmi che permettono a un sistema informatico di svolgere una funzione*. \VediUrl{Convenzione sulla cibercriminalità}{fedlex.admin.ch}{2011}{https://www.fedlex.admin.ch/eli/cc/2011/888/it}.

----

// ## Prova informatica e prova scientifica

Storicamente, l'informatica forense si è sviluppata all'interno del procedimento penale.
La Costituzione definisce la libertà personale come "inviolabile" (art. 13), e pertanto, ogni sua limitazione deve essere eccezionale, e fondarsi su motivi gravi e precisi.

La sentenza di condanna può essere pronunciata solo e soltanto "se l'imputato risulta colpevole del reato contestatogli al di là di ogni ragionevole dubbio" (art. 533 c.p.p.).
Per quanto riguarda le misure cautelari, si richiede sempre la presenza di "gravi indizi di colpevolezza" (art. 273 co. 1 c.p.p.), e per quanto riguarda specificamente la custodia cautelare in carcere, si prevede che "può essere disposta soltanto quando le altre misure coercitive o interdittive, anche se applicate cumulativamente, risultino inadeguate" (art. 275 co. 3 c.p.p.).

Queste premesse richiedono il maggiore rigore possibile nella trattazione dei dati che vengono utilizzati ai fini di una decisione.
I dati devono essere acquisiti correttamente, ma soprattutto, devono essere valutati nel miglior modo possibile.\VediRef{dati-informazioni-decisioni}
Quando il giudice deve valutare dei dati per trarne informazioni, deve considerare se sono sufficienti le "nozioni di fatto che rientrano nella comune esperienza" (art. 115 co. 2 c.p.c) della persona media, o se servono conoscenze specialistiche, e quindi il giudice deve richiedere e valutare il contributo di periti e consulenti tecnici [@Ricci2017, 147--150].
<!-- TODO: inserire riferimento al fatto che le conoscenze specialistiche non sono ancora penetrate nella società -->

- informatica come scienza
- informatica forense nel processo: prova scientifica

----

All'interno di questa valutazione, si devono considerare i decorsi causali alternativi, che possono escludere il nesso causale:

- Altri programmi possono aver causato lo stesso risultato, e si ricercano tracce che dimostrano l'intervento di altri programmi. Ad esempio, un computer può lanciare un attacco informatico perché è stato infettato da un virus che lo ha reso parte di una *botnet*, e per escludere la colpevolezza dell'imputato, basta dimostrare la presenza del virus.
- Lo stato è il prodotto di una manomissione dei dati, eseguita al di fuori del normale funzionamento del sistema. Si possono cercare incongruenze fra lo stato attuale, e:
  - Lo stato che ci si aspetta dal normale funzionamento dei programmi. Ad esempio, trovare inaspettatamente lunghe sequenze di zeri o valori casuali possono suggerire che i dati che si trovavano in quella posizione non sono stati semplicemente eliminati, ma sono stati intenzionalmente e completamente sovrascritti, in modo da eliminare completamente delle tracce.
  - Altre copie dei dati, se vengono rinvenute. Ad esempio, un certo file è stato trovato all'interno di una copia di backup, con una data di creazione o modifica diversa. Questo può suggerire che il file sia stato manipolato dopo la creazione del backup.
- Il programma contiene bug. Questo può essere visto come una sorta di *deus ex machina* quando non è possibile trovare 

Il programma potrebbe contenere bug (comportamenti inaspettati ed imprevedibili) di cui i ricercatori non erano a conoscenza.

Tuttavia, come visto, un programma potrebbe contenere bug che causano comportamenti inaspettati ed imprevedibili, e viceversa, si potrebbero ipotizzare decorsi causali diversi, dove le modifiche che sono astrattamente riconducibili ad un certo programma o motivo, potrebbero essere dovute ad altri programmi o motivi.

----

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

Tradizionalmente, e fino agli anni '60, il software veniva venduto insieme all'hardware, e se ne incoraggiava la libera condivisione. È solo negli anni '70 che il software inizia ad essere venduto in maniera indipendente. [@gonzalez_barahona_2021, 75]

Veniva fornito in aggiunta all'harwdare, ma non

Per capire l'importanza del codice sorgente, 

----

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

Compilazione bytecode, JIT, minifier per offuscare

*Conversione in bytecode.*  I programmi convertiti in bytecode vengono prima "compilati" in un codice macchina particolare, creato ad-hoc per quel linguaggio, detto bytecode.  Successivamente, il bytecode viene interpretato da un secondo programma.  L'esecuzione del codice è più veloce rispetto ai programmi interpretati, e rispetto ai programmi compilati, è più facile recuperare informazioni come il nome delle variabili, funzioni, ecc.

----

- Per quanto riguarda i supporti materiali, devono "assicurare le fonti di prova e raccogliere quant'altro possa servire per l'applicazione della legge penale" (art. 55 co. 1 c.p.p.).
- Per quanto riguarda i dati informatici, se esiste il pericolo che "si alterino o si disperdano o comunque si modifichino", e ancora, solo se "il pubblico ministero non può intervenire tempestivamente, ovvero non ha ancora assunto la direzione delle indagini", allora si può procedere "alla loro immediata duplicazione su adeguati supporti, mediante una procedura che assicuri la conformità della copia all'originale e la sua immodificabilità. Se del caso, sequestrano il corpo del reato e le cose a questo pertinenti."

----

- La catena di custodia inizia ad essere redatta nel momento in cui i supporti o dati informatici utili a fine probatorio vengono scoperti.
- in caso di modalità meno garantite, senza la presenza del CT o difensore è necessario documentare le operazioni nel modo più completo possibile, anche usando videoregistrazioni

----

- Valutazione della prova informatica:
  - Perito e consulenti devono spiegare perché il metodo di analisi è affidabile, *argumentum ab auctoritate* del software non è sufficiente
  - Più è possibile fare riferimento al concreto funzionamento del software, e meglio è
  - Meno è possibile sapere come il software ha svolto l'acquisizione ed analisi, e più il giudice deve essere critico (un conto è il principio di conservazione della prova, un conto è sopravvalutare il valore e la validità epistemologica di una prova)
- Contraddittorio sulla prova informatica:
  - Diritto alla difesa implica la necessità di sapere come l'analisi è stata svolta
  - L'analisi deve essere ripetibile (usare gli stessi strumenti) e riproducibile (ottenere gli stessi risultati) per la controparte, e nel futuro (giudizio di impugnazione, revisione&hellip;)
  - Criteri della sentenza Daubert per valutare l'uso di conoscenze scientifiche nel processo
  - Analogamente, uso degli stessi criteri per valutare l'uso di software sviluppato sulla base di ricerca scientifica

- Sistemi operativi potrebbero nascondere dati proprietari, è meglio un sistema operativo *super partes* che non abbia nulla da nascondere.

Idealmente si deve verificare l'esatto funzionamento del software, ma se è impossibile visionare il codice sorgente o sapere quali algoritmi vengono utilizzati, ci si può affidare alle certificazioni attribuite da soggetti autorevoli

----

- Tutto il software scientifico deve essere documentato, facendo riferimento alla ricerca scientifica, e spiegando come funziona il software, che tipo di input si aspetta, i limiti dell'analisi&hellip;
- Software proprietario: tensione fra documentare il suo funzionamento, e non rivelare troppi dettagli per mantenere il *competitive advantage*, problema di verificare se il funzionamento corrisponde alla documentazione
- Software libero: "code as documentation", tensione fra la possibilità di documentazione estensiva e la mancanza di risorse
