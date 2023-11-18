## Dati digitali

Quello che invece ha rilevanza pratica è il **trattamento dei dati digitali**.

Facendo un'analogia con la procedura penale, non importa se il reato informatico sia proprio o improprio, e quindi che rispettivamente, il sistema informatico sia una sorta di "persona offesa dal reato", o di "autore del reato", oppure se il sistema informatico non sia stato coinvolto nel reato, ma contenga al suo interno solo elementi che possono rilevare per la ricostruzione del fatto storico nel processo, come una sorta di "persona informata sui fatti" [@Gammarota2016, 29].

Se l'autorità giudiziaria deve valutare dei dati digitali ai fini di una decisione, **non può prescindere dal tenere in conto le loro caratteristiche particolari**.

<!--
TODO: Concezione erronea, i dati digitali sono sempre affidabili
-->

### Bit

**L'unità fondamentale del dato digitale è il bit**, che può assumere due valori, convenzionalmente indicati con 0 ed 1 [@Gammarota2016, 47].

La caratteristica più critica dei bit è che **"sono" memoria, ma "non hanno" memoria**.

Un bit "sa" solo quale è il suo stato attuale (ossia, 0 o 1), ma non "si ricorda" gli stati precedenti, né quali operazioni lo hanno portato ad assumere il valore attuale.

Un bit è un "atomo", nel vero senso della parola.
I bit non sono stati scoperti dalla scienza, così come furono scoperti gli atomi.
Piuttosto, è più appropriato dire che siano stati "inventati".

Non arriverà mai il giorno in cui scopriremo che in realtà, i bit sono composti da componenti più piccoli.
Il bit, per definizione, è assolutamente indivisibile, e già l'unità minima.

### TODO Codifica binaria

### Supporti materiali

Nella pratica, i bit hanno una **natura particolare**.

Da un lato, i bit (come tali) non possono essere toccati con mano, e non formano oggetto di percezione sensoriale diretta.
Ciò potrebbe far pensare che abbiano **natura immateriale**, o che siano un puro concetto, un'idea astratta, un *corpus mysticum*.

Questa interpretazione era stata sostenuta da:

- Alcune corti, che negavano la protezione del diritto d'autore ai programmi informatici distribuiti in forma di codice macchina,^[La differenza fra codice macchina e codice sorgente sarà oggetto di discussione *infra*.] perché il codice macchina era destinato ad essere eseguito dal calcolatore, e non poteva essere percepito da un essere umano, a differenza del codice sorgente [@Blomqvist2014, 88].
- Gli imputati in reati informatici negli Stati Uniti, che affermavano che fosse impossibile rubare dati digitali, o appropriarsi indebitamente di risorse come lo spazio su disco o l'uso del processore, perché sono risorse intangibili ed immateriali [@Nugent1991, 2].

Tuttavia, è un'**interpretazione erronea**.
È vero che i bit non possono essere percepiti e manipolati se non con l'uso di sistemi e programmi informatici, ma questo non significa che esistono esclusivamente nella mente o immaginazione delle persone.

Piuttosto, i bit **necessitano sempre di una dimensione fisica**, un *corpus mechanicum*.
Indipendentemente dalla tecnologia usata, la loro conservazione e trasmissione comporta sempre una qualche modifica nel mondo materiale.

Certamente, in alcuni casi, la loro esistenza può essere particolarmente effimera, ma un'esistenza materiale di breve durata è cosa diversa dall'essere completamente immateriale:

- Le **memorie primarie** (registri e cache del processore, RAM) hanno tempi di accesso rapidi, ma possono conservare i loro contenuti solo fino a quando continuano ad essere alimentate. In altre parole, quando il sistema viene spento, il loro contenuto si disperde, e non viene conservato.
- I bit in transito su una **rete** (cablata o senza fili) "esistono" come un flusso di dati solo per la durata della trasmissione. In altre parole, se il risultato della trasmissione non viene memorizzato, non potrà essere recuperato.

La loro esistenza diventa **tendenzialmente permanente** solo quando vengono conservati sulle **memorie secondarie** (supporti ottici, *hard disk*, *solid state drives*&hellip;), che hanno tempi di accesso più lenti, ma continuano a conservare i dati anche se non sono alimentate

L'avverbio "tendenzialmente" allude al fenomeno del *bit rot*, la "putrefazione" dei bit.
A riprova della natura materiale -- seppure sempre intangibile, e talvolta effimera -- dei bit, se il supporto materiale si degrada nel tempo, anche i bit contenuti in esso ne risentono
[@Gammarota2016, 52--57].

Nel caso più grave, l'intero supporto diventa illeggibile, ed i dati in esso contenuti devono essere recuperati con tecniche specializzate.

Nei casi meno gravi, solo parti del supporto diventano illeggibili o corrotte.
Se il supporto materiale è in grado di rilevare l'errore, segnalerà all'utente l'errore di lettura.
Si immagini il caso di un libro: se una pagina viene strappata, le restanti rimangono comunque leggibili.

Nei casi di corruzione più lievi ed insidiosi, l'errore non viene rilevato, ma i singoli bit diventano comunque alterati.
Si immagini la falsificazione delle cifre: è possibile trasformare un 3 in un 8, uno 0 in un 6 o 9. L'analogia non è perfetta, perché è un caso di modificazione volontaria piuttosto che accidentale, ma il principio è lo stesso.

### Esperimento mentale -- Fragilità dei bit

Il *bit rot* del supporto materiale su cui si trovano i bit è solo una delle cause che può portare alla loro modificazione.
Naturalmente, si deve considerare anche l'intervento umano.

Se si volesse **tenere traccia delle modificazioni** di un singolo bit, servirebbe:

- Altra memoria, e quindi altri bit.
- Un sistema di codifica che permette di descrivere l'evento che ha modificato quel bit come una sequenza di bit.
- Un sistema che monitora costantemente quel singolo bit, e aggiorna la sua cronistoria.

TODO: il sistema è interamente contenuto nel supporto materiale.

I primi due requisiti possono essere soddisfatti con facilità, ma il terzo è un **ostacolo insormontabile**.

La capacità dei supporti informatici moderni viene misurata in centinaia di gigabyte, dove "giga-" è un prefisso che significa "miliardi di", e "byte" significa "otto bit".

In altre parole, servirebbe monitorare costantemente, e contemporaneamente, migliaia di miliardi di bit.
Anche con la tecnologia moderna, 

Poi, servirebbe un multiplo di quella quantità di dati, per poter tenere traccia delle modifiche.
Supponiamo una stima estremamente conservativa, per cui 

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

### Fragilità dei bit

Riassumendo, i **bit**, e quindi i **dati digitali** in generale, sono **estremamente fragili**. È estremamente facile modificarli, anche senza volerlo, ed estremamente difficile capire come si sia arrivati a questa situazione.

Questo **non** significa che i dati digitali siano **intrinsecamente inaffidabili**, e quindi non possano mai fornire informazioni utili all'interno di un processo.
Piuttosto, significa che se devono essere utilizzati per prendere una decisione, bisogna **valutare** non solo i dati, ma anche -- e forse soprattutto -- il **rispetto delle tecniche** che sono state utilizzate per il loro trattamento.

Questo significa che i bit sono estremamente fragili [@Gammarota2016, 58].

### Codifica digitale

Tutti i dati digitali sono rappresentati com

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

- Ormai l'informatizzazione sta raggiungendo anche la giustizia, con il processo telematico
- Le informazioni digitali rilevano all'interno di processi

- Natura particolare dei dati, fragilità
- Necessità di applicare cautele particolari ai dati

### Supporto materiale
