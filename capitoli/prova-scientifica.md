# Prova scientifica

## Elementi di prova digitali

- "prova scientifica" non si riferisce ad un particolare tipo di prova, ma al fatto che vengono usate conoscenze tecniche
- "prova informatica" e "dati digitali"
- escludere l'uso della prova atipica, usare periti e consulenti

## Periti e consulenti tecnici

- fatto tecnico: il giudice può o usare la sua intuizione, o richiedere l'aiuto di personale specializzato
- Leggi scientifiche [@Marinucci2020, 242].

## Valutazione della prova tecnica

- Sentenza Daubert
- Sentenze della Cassazione

## Reati informatici

Prima di definire cosa sia l'informatica forense, è utile introdurre brevemente il fenomeno che ha **richiesto ed incentivato il suo sviluppo**, i reati informatici.

### Pericolosità dei sistemi informatici

A partire dalla seconda metà del ventesimo secolo, le tecnologie informatiche si sono sviluppate e sono diventate una parte essenziale della società moderna.
Tuttavia, la diffusione della tecnologia comportava anche il suo abuso ed uso da parte dei criminali [@Gammarota2016, 11].

I **sistemi informatici** permettono alla condotta di singolo individuo -- purché dotato delle conoscenze tecniche necessarie -- di **causare danni enormi**.

Ad esempio, nel 1988, il *Morris worm* riuscì a disturbare ed interrompere il funzionamento dei sistemi informatici allora collegati su internet [@Nugent1991, 1].

Nel campo della protezione dei diritti d'autore, basta che un singolo soggetto riesca ad aggirare le misure di protezione di un programma, in modo che possa essere eseguito anche senza acquistare una licenza, e distribuisca questa versione modificata al pubblico, per generare un numero potenzialmente illimitato di vendite perse.^[La rimozione delle misure di sicurezza viene colloquialmente chiamata *cracking*, o "craccare" in italiano. Esistono siti che elencano quale gruppo pirata ha craccato quale software, e quali software sono in attesa di essere craccati. Ad esempio, <https://crackwatcher.com>.]

Ancora, l'uso di tecnologie *peer-to-peer* permette a chiunque non solo di acquisire materiale pedo-pornografico, ma anche di ridistribuirlo automaticamente ad un numero potenzialmente illimitato di persone [@Ferrazzano2014, 99 ss.]

### Reati informatici negli Stati Uniti

Date queste premesse, l'intervento del diritto penale era inevitabile.

Negli Stati Uniti, la mancanza di leggi che punissero in maniera specifica i reati informatici, e la natura immateriale dei dati digitali inizialmente non furono di ostacolo per il sistema giudizario.

I *prosecutors* (pubblici ministeri) potevano qualificare il fatto commesso mediante un sistema informatico all'interno dei reati tradizionali, come *fraud* (truffa telematica), *larceny* (furto), o *embezzlement* (appropriazione indebita o peculato).

Le corti affermavano che nonostante i dati digitali avessero natura intangibile ed immateriale, avevano comunque un valore economico, e quindi si legittimava l'intervento del diritto penale [@Nugent1991, 2].

Tuttavia, in alcuni casi, le corti argomentarono che se il legislatore voleva proteggere i sistemi informatici ed i dati digitali, avrebbe dovuto farlo in maniera espressa.

Un'interpretazione estensiva delle leggi penali avrebbe violato il principio del *due process of law* (giusto processo), perché l'imputato non avrebbe potuto sapere in anticipo che il fatto sarebbe stato considerato un reato, e/o il principio della separazione dei poteri, perché i giudici avrebero creato una nuova ipotesi di incriminazione, non espressamente prevista dal legislatore.

Per superare questi problemi, gli Stati iniziarono a dotarsi di leggi sui reati informatici.
La prima fu approvata in Florida nel 1978, e nel corso di poco più di un decennio, quasi tutti gli altri Stati si dotarono di proprie leggi [@Nugent1991, 2--4].

### Reati informatici in Italia

In Italia, la prima disciplina riguardo i reati informatici viene introdotta con la L. n. 547/1993.
Estende una serie di reati tradizionali, introducendo riferimenti ai sistemi informatici e telematici, i programmi informatici ed i dati digitali [@Gammarota2016, 71].

A titolo esemplificativo:

- La violenza sulle cose (art. 1) ed il danneggiamento (art. 9) possono riguardare anche sistemi informatici, o i dati in essi contenuti.
- Gli impianti di pbublica utilità includono anche sistemi informaticie telematici (art. 2).
- In tema di falsità, i documenti digitali devono essere trattati allo stesso modo degli atti pubblici e scritti privati (art. 3).
- L'accesso abusivo a sistema informatico è analogo alla violazione di domicilio (art. 4).
- La sottrazione o violazione di corrispondenza e l'intercettazione di comunicazioni includono anche le comunicazioni telematiche (artt. 5 e 6).
- La frode informatica (art. 10) è analoga alla truffa.

### Reati informatici propri ed impropri

L'espressione "reato informatico" può essere intesa in due modi [@Gammarota2016, 29].

Nel caso dei **reati informatici "propri"**, il sistema informatico è l'oggetto ed il bene giuridico protetto dal reato, ed è impossibile prescindere dalla sua presenza.

Il sistema informatico può essere l'**unico bene rilevante per il reato**.

Ad esempio, nella serie di reati dedicati al danneggiamento di dati, programmi e sistemi informatici pubblici e privati,^[
Artt. 635-*bis* a 635-*quinquies* c.p.]
rileva il solo fatto che siano stati danneggiati dei dati digitali.

In altri casi, l'offesa al sistema informatico si unisce all'**offesa di altri beni giuridici**.

Ad esempio, il *ransomware* è un tipo di *malware* che cripta i file dell'utente, rendendoli inaccessibili, e chiede il pagamento di un riscatto per decrittarli.
Questa condotta può essere qualificata come una frode informatica,^[Art. 640-*ter* c.p.] fattispecie che richiede l'alterazione del funzionamento di un sistema informatico con lo scopo di procurare un profitto.
Il danno al patrimonio della persona si aggiunge al danno causato al corretto funzionamento del sistema informatico [@Bartoli2021, 335].

Nel caso dei **reati informatici "impropri"**, il sistema informatico è soltanto lo strumento usato per compiere il reato, ed il bene -- o beni -- giuridici protetti dalla fattispecie non includono il sistema informatico.

Ad esempio, gli sviluppi più recenti nelle intelligenze artificiali permette di generare dei *deepfake* vocali estraendo il timbro vocale di una persona, ed applicandolo ad un'altra registrazione, mediante un processo chiamato *voice conversion* [@Feffer2023].

Su internet si può trovare il software necessario, guide su come utilizzarlo^[Ad esempio, v. *AICoverGen*: <https://github.com/SociallyIneptWeeb/AICoverGen>.],
raccolte di modelli del timbro vocale di cantanti^[Ad esempio, v. <https://huggingface.co/QuickWick/Music-AI-Voices>.],
servizi a pagamento che offrono un'interfaccia facile da usare.^[Basta cercare termini come "AI services voice cloning from recording" per trovare numerosi risultati]

La truffa (art. 640 c.p.) protegge il patrimonio della vittima e la sua libertà di autodeterminazione [@Bartoli2021, 296], e fra i vari requisiti, richiede l'uso di "artifizi o raggiri".
L'uso di questo tipo di tecnologie può sicuramente integrare quest'ultimo requisito, e casi di truffe telefoniche sono già successi negli Stati Uniti [@Kohli2023].

In ogni caso, la distinzione fra reati contro, o per mezzo di, sistemi informatici è puramente teorica, e non ha rilevanza pratica.
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

## Informatica forense

### Origine storica dell'informatica forense

- sviluppo tecnologico, reati, cultura processuale, sviluppo di servizi da parte di agenzie governative
- varie definzioni specifiche 

### Campo di applicazione contemporaneo

- definizione onni-comprensiva: trattamento di qualsiasi dato digitale per qualsiasi fine processuale secondo criteri scientifici
- campi di applicazione processuali: inizialmente legata a procedura penale, ma applicabile anche ad altri campi (specie processo telematico)

### Informatica come scienza di riferimento

- dubbio se l'informatica può essere effettivamente chiamata una scienza
- sistemi informatici come "fenomeni naturali"

### Sviluppo dell'informatica forense

#### Fase libera di ricerca
#### Formalizzazione dei risultati in best practices

----

In primo luogo è necessario definire in maniera precisa l'oggetto dell'informatica forense, e l'ambito entro cui opera.

Da un punto di vista storico, l'informatica forense nasce ed inizia a svilupparsi negli Stati Uniti, per due motivi.

Il primo era il fatto che gli Stati Uniti erano -- e sono tutt'ora -- all'avanguardia per quanto riguarda l'innovazione informatica:

- I *personal computer*[^personal-computer] furono sviluppati e standardizzati da IBM ed Apple;
- Il mercato dei processori e schede grafiche è quasi interamente controllato da Intel, AMD e Nvidia;
- I principali sistemi operativi (Windows, macOS e GNU) sono stati inizialmente sviluppati rispettivamente da Microsoft, Apple, e da Richard Stallman (fondatore della Free Software Foundation);
- Il linguaggio di programmazione C[^personal-computer] è stato originariamente sviluppato all'interno di Bell Labs, e successivamente standardizzato dall'ANSI.

[^personal-computer]: Computer pensati per l'uso domestico.

L'aforisma "fatta la legge, trovato l'inganno" può essere adattato in "fatta la tecnologia, trovato il reato": se la popolazione ha a disposizione nuove tecnologie, i criminali troveranno il modo di abusarle, e si renderà necessario un intervento legale.

Il primo era il fa

A partire dagli anni '70, i sistemi informatici iniziano a diffondersi all'interno della società a livello sempre più capillare, e soprattutto, iniziano ad essere collegati fra di loro.



Questo sviluppo tecnologico comporta tre conseguenze per il diritto penale:


Il progressivo sviluppo e diffusione degli strumenti informatici a 

Le definizioni precedenti consistevano generalmente in una lista di operazioni tecniche tipiche dell'informatica forense.
Ad esempio, "ricerca", "identificazione", "estrazione", "documentazione", "protezione", "analisi", "interpretazione" dei dati digitali [@Gammarota2016, 16--17, 26].

Tuttavia, stabilire un elenco di operazioni tipiche è controproducente:

- In primo luogo, sembra suggerire che solo quanto sia espressamente indicato sia rilevante per la disciplina.
- Non tutte le definizioni usano tutti i termini, quindi si potrebbe concludere che ci sia disaccordo sull'ambito di utilizzazione e le finalità dell'informatica forense.
- Usare formule come "&hellip; e simili" per indicare che la lista non è limitata ai soli casi indicati ha lo stesso effetto, produce comunque incertezza, e rimette all'interprete il compito di capire l'esatto ambito della disciplina.

Piuttosto di cercare di definire minuziosamente ed induttivamente "cosa faccia" l'informatica forense, è più opportuno definire "cosa sia" l'informatica forense, seguendo un ragionamento deduttivo.
Questo ha due benefici:

- In primo luogo, facendo riferimento all'informatica in generale, qualsiasi 
- È preferibile dare alla disciplina il maggiore campo di applicazione possibile 
L'informatica forense è definita come la disciplina che
"studia le norme giuridiche ed le tecniche informatiche per il trattamento dei dati digitali a fini processuali"
[@Gammarota2016, 26--27].

Diffusione dell'informatica nell'America latina [@Gammarota, 13]

Origine del termine "informatica forense" [@Gammarota2016, 5]

Definizione di informatica forense negli Stati Uniti [@Gammarota, 16--17], in Italia [@Gammarota2016, 26--27]

Esatta definizione di "informatica" e "dato digitale":

- Origine del termine informatica in italiano
- Distinzione fra information science e computer science in inglese
- Informatica non richiede modalità digitali (ricerca binaria in un dizionario, algoritmo A-star su un puzzle), dato digitale non presuppone la conoscenza dell'informatica (così come non serve un diploma in ingegneria elettrica per creare una radio, non serve sapere come funziona un computer per poterlo utilizzare, ma cfr. Unix, con pagine del manuale scritte come bug report, UNIX haters handbook, 53 ss., "collect bug reports")

### Informatica

L'**informatica forense** è una disciplina che presenta varie particolarità.

In primo luogo, va osservato che la sua nascita è estremamente recente.
Si inizia a parlare di **informatica** nella seconda metà del ventesimo secolo, nel 1957 in Germania, e nel 1962 in Francia
[@Bolognesi1999, 916--917].


### Peculiarità dell'informatica forense


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

### Canestrari2017

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
