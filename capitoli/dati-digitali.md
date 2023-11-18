## Dati digitali

### Rilevanza per le investigazioni penali

Il problema più importante non è tanto la qualificazione dei reati.
È sicuramente utile che i reati informatici siano previsti in maniera specifica dal legislatore, per escludere ogni dubbio in merito alla loro esistenza, e cercare di delimitare l'area del penalmente rilevante.

Tuttavia, la questione più importante è l'**uso dei dati digitali all'interno di un procedimento** [@Gammarota2016, 29].

Nei casi di **reato informatico proprio**, è **impossibile** prescindere dal dato digitale, poiché l'oggetto materiale è un sistema informatico.
L'unico modo per dimostare la sua alterazione è considerare i dati in esso contenuti.

Nei casi di **reato informatico improprio**, è **difficile**, ma non impossibile, prescindere dal dato digitale.
Sicuramente sarebbe utile poter esaminare lo strumento con cui è stato compiuto il reato, ma in linea teorica, il fatto può essere provato o contestato anche in altri modi.

In **tutti gli altri casi di reato**, può essere **utile, ma non necessario**, utilizzare i dati digitali contenuti in sistemi informatici.
Se si decide di acquisirli, bisogna tenere a mente la **fragilità** dei dati digitali.

Il tema sarà oggetto di analisi più approfondita in un capitolo successivo, ma al momento, è necessario e sufficiente anticipare che tendenzialmente, **qualsiasi operazione** si possa compiere su un sistema informatico porta alla **modificazione dei contenuti** del sistema stesso, anche se potrebbe sembrare a prima vista non invasiva.

Si può fare un'analogia con la disciplina dell'esame e della testimonianza.
Così come il giudice è tenuto a valutare con rigore l'affidabilità delle deposizioni dell'**imputato** (nel caso dei reati informatici propri e non, il sistema informatico ha partecipato alla realizzazione del fatto), e del **testimone** (negli altri casi, il sistema informato può riferire dati utili), perché la memoria delle persone è labile, così deve applicare lo stesso rigore quando valuta una **prova informatica**, perché i dati informatici sono fragili.

### Bit

**L'unità fondamentale del dato digitale è il bit**, che può assumere due valori, convenzionalmente indicati con 0 ed 1 [@Gammarota2016, 47].

La caratteristica più critica dei bit è che **"sono" memoria, ma "non hanno" memoria**.

Un bit "sa" solo quale è il suo stato attuale (ossia, 0 o 1), ma non "si ricorda" gli stati precedenti, né quali operazioni lo hanno portato ad assumere il valore attuale.

Un bit è un "atomo", nel vero senso della parola.
Nel campo delle scienza naturali, il modello dell'atomo fu rivistato più volte, si scoprì che in realtà quello che veniva chiamato "atomo" era composto da particelle subatomiche, e poteva essere soggetto al processo di fissione nucleare.

Piuttosto, i bit hanno una natura più "artificiale", non sono stati scoperti.
Sono, per definizione assiomatica, l'unita minima con cui rappresentare dati digitali.^[Per una discussione sulla natura dell'informatica come scienza, v. sez. \ref{informatica}.]

### Codifica binaria

Un singolo bit non è particolarmente utile, dato che può rappresentare solo due valori.
Una sequenza di bit invece è più utile, perché può rappresentare un valore numerico intero.

Una sequenza di otto bit è chiamata un "byte". Un byte può rappresentare 256 possibili valori.
Laddove il bit è l'unità fondamentale dell'informazione, il byte è l'unità fondamentale della computazione e archiviazione.
Quasi tutte le operazioni considerano uno o più byte (generalmente, una potenza di due).
Per modificare i singoli bit all'interno di un byte laddove necessario, si usano tecniche dette di *bit manipulation*.

La rappresentazione di dati in forma binaria è concettualmente semplice.
Dato che una sequenza di bit può essere interpreta come un valore numerico, questo numero a sua volta può essere interprato come un **valore ordinale** (una valore o quantità), o un **valore cardinale** (una posizione).

La **rappresentazione del testo** è una codifica puramente cardinale: ad ogni valore numerico viene assegnata una corrispondente lettera.
È bene notare che la codifica è puramente arbitaria: ognuno è libero di determinare quali lettere corrispondono a quali valori.
Naturalmente, esistono delle codifiche standard, adottate quasi universalmente, ma se si apre un testo con una codifica diversa da quello con cui era stato salvato, il risultato sarà illegibile.

Invece, la rappresentazione di suoni ed immagini è una codifica puramente ordinale: il suono viene campionato più volte, e si salva una sequenza della serie di intensità misurate, mentre per le immagini si salva l'intensità dei colori primari che compongono ogni pixel.

Le **tecniche di compressione** combinano l'uso di codifica cardinale (creando una tabella di sequenze che si ripetono all'interno della serie di bit da compriere, e sostiutendo quelle sequenze con un riferimento alla loro posizione nella tabella) e codifica ordinale (la tabella contiene i valori originali).

Anticipando un tema che sarà approfondito in seguito,^[V. sez. \ref{codice-macchina}.] anche il **codice macchina** combina una codifica cardinale ed ordinale.
Le istruzioni che un processore può eseguire sono tipizzate in una tabella, e quindi sono interpretate secondo lo schema cardinale, ma i valori su cui operano non possono essere predeterminati, e quindi sono interpretati come valori ordinali.

### Supporti materiali

Nella pratica, i bit hanno una **natura particolare**.

Da un lato, i bit (come tali) non possono essere toccati con mano, e non formano oggetto di percezione sensoriale diretta.
Ciò potrebbe far pensare che abbiano **natura immateriale**, o che siano un puro concetto, un'idea astratta, un *corpus mysticum*.

Questa interpretazione era stata sostenuta da:

- Alcune corti, che negavano la protezione del diritto d'autore ai programmi informatici distribuiti in forma di codice macchina,^[Sulla differenza fra codice macchina e codice sorgente, v. sez. \ref{codice-macchina} e ss.] perché il codice macchina era destinato ad essere eseguito dal calcolatore, e non poteva essere percepito da un essere umano, a differenza del codice sorgente [@Blomqvist2014, 88].
- Gli imputati in reati informatici negli Stati Uniti, che affermavano che fosse impossibile rubare dati digitali, o appropriarsi indebitamente di risorse come lo spazio su disco o l'uso del processore, perché sono risorse intangibili ed immateriali [@Nugent1991, 2].

Tuttavia, è un'**interpretazione erronea**.
È vero che i bit non possono essere percepiti e manipolati se non con l'uso di sistemi e programmi informatici, ma questo non significa che esistono esclusivamente nella mente o immaginazione delle persone.

Piuttosto, i bit **necessitano sempre di una dimensione fisica**, un *corpus mechanicum*.
Indipendentemente dalla tecnologia usata, la loro conservazione e trasmissione comporta sempre una qualche modifica nel mondo materiale.

Certamente, in alcuni casi, la loro esistenza può essere particolarmente effimera, ma un'esistenza materiale di breve durata è cosa diversa dall'essere completamente immateriale:

- Le **memorie primarie** (registri e cache del processore, RAM) hanno tempi di accesso rapidi, ma possono conservare i loro contenuti solo fino a quando continuano ad essere alimentate. In altre parole, quando il sistema viene spento, il loro contenuto si disperde, e non viene conservato.
- I bit in transito su una **rete** (cablata o senza fili) "esistono" come un flusso di dati solo per la durata della trasmissione. In altre parole, se il risultato della trasmissione non viene memorizzato, non potrà essere recuperato.

La loro esistenza diventa **tendenzialmente permanente** solo quando vengono conservati sulle **memorie secondarie** (supporti ottici, *hard disk*, *solid state drives*&hellip;), che hanno tempi di accesso più lenti, ma continuano a conservare i dati anche se non sono alimentate.

### TODO Cause di modifica dei bit

L'avverbio "tendenzialmente" allude al fenomeno del *bit rot*, la "putrefazione" dei bit.
A riprova della natura materiale -- seppure sempre intangibile, e talvolta effimera -- dei bit, se il supporto materiale si degrada nel tempo, anche i bit contenuti in esso ne risentono
[@Gammarota2016, 52--57].

Nel caso più grave, l'intero supporto diventa illeggibile, ed i dati in esso contenuti devono essere recuperati con tecniche specializzate.

Nei casi meno gravi, solo parti del supporto diventano illeggibili o corrotte.
Se il supporto materiale è in grado di rilevare l'errore, segnalerà all'utente l'errore di lettura.
Si immagini il caso di un libro: se una pagina viene strappata, le restanti rimangono comunque leggibili.

Nei casi di corruzione più lievi ed insidiosi, l'errore non viene rilevato, ma i singoli bit diventano comunque alterati.
Si immagini la falsificazione delle cifre: è possibile trasformare un 3 in un 8, uno 0 in un 6 o 9. L'analogia non è perfetta, perché è un caso di modificazione volontaria piuttosto che accidentale, ma il principio è lo stesso.

Il problema fondamentale è che i cambiamenti non lasciano traccia, quando il bit cambia, non ricorda i valori precedenti.
Le fonti dei cambiamenti sono numerose:

- Come già indicato, eventi naturali, imprevedibili ed inevitabili che colpiscono il supporto materiale.
- Gli errori di programmazione, che producono modifiche non richieste o desiderate ai dati, ma è difficile prevedere la loro presenza in anticipo.
- I processi che continuano a funzionare *in background* (anche se non sono immediatamente visibili all'utente), senza l'intervento dell'utente, e causando la modifica di una grande quantità di file.
- Operazioni che agiscono su più file, come ad esempio, una ricerca, che comporta l'apertura di numerosissimi file, e molto probabilmente, la creazione o aggiornamento di altri file (ad esempio, la cronologia di ricerca).
- Le operazioni che agiscono su un singolo file, come la sua apertura, che altera le informazioni relative a quel file, come la sua data di ultima apertura.

Questo significa che tutte le **operazioni che toccano la fonte di prova "originale", che abbia la natura di sistema informatico** devono essere considerate **irripetibili** ai sensi dell'art. 117 disp. att. c.p.p. [@Gammarota2016, 148--151]. <!-- TODO: controllare questa citazione -->

### Dimostrazione delle caratteristiche dei bit

Per poter **tenere traccia delle modificazioni** di un singolo bit, servirebbe:

- Altra memoria, e quindi altri bit.
- Un sistema di codifica che permette di descrivere l'evento che ha modificato quel bit come una sequenza di bit.
- Un sistema che monitora costantemente quel singolo bit, e aggiorna la sua cronistoria.

I primi due requisiti possono essere soddisfatti con facilità, ma il terzo è un **ostacolo insormontabile**.

In primo luogo, rileva l'impossibilità di monitorare l'enorme mole di dati contenuta nelle memorie secondarie.
La capacità dei supporti informatici moderni viene misurata in centinaia di gigabyte, dove "giga-" è un prefisso che significa "miliardi di".

In altre parole, servirebbe monitorare costantemente, e contemporaneamente, migliaia di miliardi di bit.
Anche con la tecnologia moderna, questo risultato sarebbe difficilmente raggiungibile.

Controllare contemporaneamente ogni bit sarebbe impossibile.
Se si procede per blocchi di memoria, il sistema di monitoraggio è imperfetto, perché nell'intervallo fra due scansioni, un bit sarebbe potuto cambiare più volte, senza che il sistema se ne sia accorto.

In ogni caso, sarebbe necessario dedicare quante più risorse computazionali al controllo della memoria, in modo che il controllo sia il più efficiente possibile, a scapito dell'effettiva utilizzazione del calcolatore.

Ancora, servirebbe un multiplo della quantità di dati tenuta sotto osservazione per poter tenere traccia delle modifiche.
Supponiamo una stima estremamente conservativa, per cui bastino 100 bit di memoria, per ogni bit.

Ancora, anche il registro delle modifiche dovrebbe tenere traccia di sé stesso, richiedendo altri bit che a loro volta dovrebbero essere monitorati&hellip;

Ma anche supponendo che sia possibile tenere traccia di una quantità di dati che cresce in maniera illimitata, e a velocità esponenziale, ci sarebbe un altro problema, ancora più fondamentale.

Il sistema di monitoraggio può determinare con certezza oggettiva solo i seguenti elementi:

- Dove, nel senso di all'interno di quale file, o quale posizione nel disco, si trova il bit che è stato modificato.
- Quando è stato modificato.
- Come, nel senso di quale valore aveva prima, e quale valore ha adesso.

Tuttavia, **è estremamente difficile determinare perché il bit è stato modificato**.

Per "perché" si intende qualsiasi causa che può portare alla modificazione del bit:

- Un evento naturale: il deterioramento del supporto materiale, un raggio cosmico, un errore di lettura o scrittura da parte del supporto&hellip; possono modificare in maniera imprevedibile il bit.
- Un errore di programmazione: anche supponendo che sia possibile rilevare tutte le cause naturali di modifica dei bit, il sistema non può sapere se una modifica ad un certo bit sia dovuta ad un programma che sta malfunzionando; decidere se un determinato risultato sia voluto o meno è qualcosa che solo un essere umano può fare.

Infine, è difficile sapere **chi** abbia modificato il bit.

Anche supponendo che sia i supporti che i programmi siano perfetti -- e quindi che ogni modifica possa essere ricondotta esclusivamente al dolo o colpa di un essere umano -- il sistema non è in grado di determinare l'identità della persona che ha causato quella modifica.

Ad esempio, supponiamo che il sistema imputi una modifica all'utente "Alice".^[Alice e Bob (in italiano, Roberto) sono nomi fittizi, l'equivalente di Tizio e Caio, nel campo della crittografia.]
Si possono ipotizzare i seguenti scenari:

- La modifica è stata effettivamente realizzata da Alice.
- Alice ha lasciato il computer momentaneamente incustodito, non si è disconnessa, e la modifica è stata fatta da Roberto.
- Alice ha volontariamente condiviso le sue credenziali di accesso con Roberto.

Naturalmente, è astrattamente possibile immaginare un sistema che estragga una traccia biologica dalla persona che lo sta utilizzando.
Ma anche ignorando le difficoltà legali e tecniche, rimarrebbe comunque il problema della piena affidabilità di un tale sistema.

### Affidabilità dei bit

Riassumendo, i **bit**, e quindi i **dati digitali** in generale, sono **estremamente fragili**. È estremamente facile modificarli, anche senza volerlo, ed estremamente difficile capire come si sia arrivati a questa situazione.

Questo **non** significa che i dati digitali siano **intrinsecamente inaffidabili**, e quindi non possano mai fornire informazioni utili all'interno di un processo.
Piuttosto, significa che se devono essere utilizzati per prendere una decisione, bisogna **valutare** non solo i dati, ma anche -- e forse soprattutto -- il **rispetto delle tecniche** che sono state utilizzate per il loro trattamento.
