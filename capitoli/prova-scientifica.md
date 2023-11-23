# Informatica forense e prova scientifica

## Prime definizioni della computer forensics

Nel tempo, sono state date più definizioni della *computer forensics* (informatica forense).

Il modello tipico di definizione inizia con "l'informatica forense riguarda la &hellip;", e segue con un elenco di elementi nella forma "[operazione tipica] di [oggetto]".

Vari autori hanno dato vari elenchi dei due componenti [@Gammarota2016, 16]:

- Le operazioni tipiche includono la ricerca, protezione, identificazione, estrazione, documentazione, analisi, esibizione, conservazione, interpretazione &hellip;
- Gli oggetti su cui queste operazioni intervengono sono il "mezzo di prova in un computer", la "prova informatica memorizzata come dato o come informazione codificata magneticamente", la "prova elettronica", i "mezzi del computer", i "dati del computer", la "prova informatica" &hellip;

Il tratto comune---ed il problema fondamentale---di queste definizioni è che possono ben riferirsi anche solo alla ricerca scientifica fine a sé stessa, e non legata a fini processuali.
Anche gli scienziati identificano, estraggono, documentano, analizzano, conservano, interpretano, i fenomeni naturali, ed esibiscono le loro conclusioni.
Quello che manca è l'elemento "forense", l'applicazione della scienza al processo.

Un secondo problema di queste definizioni è la modalità con cui sono fornite.
Un elenco di attività tecniche tipiche può essere utilizzato solo a fini illustrativi, e non può essere utilizzato per definire la materia in maniera netta.

Un elenco dà un'impressione di tassatività---se manca un elemento, vuol dire che la sua omissione è stata intenzionale.
Tuttavia, l'omissione potrebbe essere non voluta, per vari motivi:

- Potrebbe essere una mera dimenticanza da parte dell'autore---è difficile immaginare in astratto ogni possibile attività tipica.
- Anche se fosse possibile, è comunque possibile che l'evoluzione della prassi o della tecnologia porterebbe allo sviluppo di nuove attività tipiche.
- In ogni caso, può esistere una differenza di opinioni sull'esatto contenuto di ogni attività. Ad esempio:
  - Un autore potrebbe ritenere che i termini "conservazione" e "protezione" dei dati siano sinonimi, e userà solo un termine.
  - Un altro autore potrebbe ritenere che la "conservazione" riguardi la creazione di copie di backup ed il controllo periodico dell'integrità dei dati, mentre la loro "protezione" riguardi l'applicazione di misure di sicurezza come cifratura e controllo degli accessi.
- La presenza di più definizioni che usano termini diversi, possibilmente in accezioni diverse, porta ad incertezza. Considerate collettivamente, si può notare che convergono nello stesso senso, ma non è ideale dover leggere una moltitudine di definizioni, fino a quando si afferra l'essenza della disciplina.

Piuttosto di cercare di definire minuziosamente ed induttivamente "cosa faccia" l'informatica forense, sarebbe più opportuno definire "cosa sia" l'informatica forense, usando una definizione che rinvii non ad attività concrete, ma a concetti generali ed astratti.

## Digital evidence secondo Casey

@Casey2011 [7] dà una definizione non della *computer forensics*, ma della *digital evidence* (prova informatica), evidenziando la sua funzione processuale:

> Digital evidence is defined as any data stored or transmitted using a computer that support or refute a theory of how an offense occurred or that address critical elements of the offense such as intent or alibi.[^definizione-digital-evidence]

[^definizione-digital-evidence]: La prova informatica viene definita come qualsiasi dato archiviato o trasmesso per mezzo di un computer che corrobora o confuta una teoria su come si sia verificato un reato, o che riguarda gli elementi più importanti del reato, come il movente o l'alibi.

La prova informatica viene collegata esplicitamente all'accertamento di un reato.[^titolo-del-libro] Tuttavia, se è ritenuta idonea ad essere usata per decidere una situazione giuridica talmente delicata come la responsabilità penale di una persona,[^rischi-processo-penale] a maggior ragione è possibile utilizzarla anche all'interno di altri giudizi (civile, amministrativo &hellip;).

[^rischi-processo-penale]: Il processo penale può comprimere una serie di valori costituzionalmente garantiti, come la libertà personale in caso di condanna o applicazione di misure di sicurezza o cautelari, l'inviolabilità del domicilio, la riservatezza della corrispondenza &hellip;
[^titolo-del-libro]: In verità, subito prima della definizione l'autore specifica "For the purposes of this text" (ai fini di questo libro), ed il libro è intitolato "Digital evidence and computer crime" (Prova informatica e reati informatici), quindi è naturale che si faccia riferimento solo al diritto penale.

È interessante notare la distinzione esplicita fra dati "archiviati" o "trasmessi", perché permette di raggruppare le varie branche e specializzazioni dell'informatica forense in due famiglie:[@Ferrazzano2014, 16--19]

- Quando i dati sono archiviati all'interno di un dispositivo, si parla di *disk forensics* (analisi forense di dischi rigidi), di *mobile forensics* (analisi forense di telefoni, che spesso presentano memorie interne non estraibili), di *embedded forensics* (analisi forense di altri dispositivi diversi da computer o smartphone, che comunque sono in grado di elaborare e memorizzare dati al loro interno---ad esempio, console per videogiochi, telecamere di sicurezza &hellip;).
- Quando i dati sono trasmessi su---e acquisiti per mezzo di---reti informatiche, si parla di *network forensics* (analisi forense di reti informatiche), e di *cloud forensics* (analisi forense di dati archiviati su dispositivi gestiti da terzi, a cui si può accedere solo per mezzo di reti informatiche).

La *memory forensics* (analisi forense di memorie volatili, ossia la RAM) merita una menzione, perché sfugge a questa dicotomia.
Non può essere ricondotta alla *network forensics*, perché i dati non stanno viaggiando su una rete informatica, si trovano all'interno del dispositivo.
Tuttavia, allo stesso tempo, i dati in memoria non sono nemmeno "archiviati" in maniera stabile, perché si disperdono quando il sistema viene spento [@Ayers2015, 1].

Tradizionalmente, la *memory forensics* veniva quasi completamente ignorata.
Le istruzioni per il sequestro di dati informatici prevedevano lo spegnimento del computer, senza previa acquisizione della memoria [@Ayers2015, 7].

Tuttavia, anche se si acquisisce una copia della memoria, che così diventa un dato propriamente "archiviato", non è possibile utilizzare gli strumenti già esistenti di *disk forensics*, perché i dati salvati in memoria usano un formato diverso rispetto ai dati salvati su disco:

- Il disco contiene una serie di file---dati archiviati o statici,[^definizione-file] che sono nettamente divisi fra di loro.
- La memoria contiene una serie di processi---programmi in corso di esecuzione, che mescolano al loro interno codice e dati,[^architettura-von-neumann] e sono in continuo cambiamento.[^definizione-allocazione-dinamica]

[^definizione-file]: "File" significa letteralmente "archivio" in italiano, ma "archiviato" o "statico" non devono essere intesi nel senso di "immutabile", ma piuttosto come l'opposto di "dinamico" o "in esecuzione", attributi che descrivono meglio un programma.

[^architettura-von-neumann]: È una conseguenza del fatto che i computer usano la *Von Neumann architecture*, dove il codice e dati sono salvati nella stessa memoria. La *Harvard architecture* invece prevede due memorie nettamente separate, una per il codice da eseguire, ed una per i dati su cui il codice opera.

[^definizione-allocazione-dinamica]: È il fenomeno della allocazione dinamica di memoria. "Allocazione" significa che il sistema operativo riserva una certa quantità di memoria ad uso di un programma. "Dinamica" significa che dopo che il sistema operativo ha allocato la memoria necessaria per avviare il programma, quest'ultimo può richiedere l'allocazione di ulteriore memoria.

Ritornando all'analisi della definizione, il problema è la completa mancanza di riferimenti alle operazioni "tipiche"---tecniche e scientifiche---dell'informatica forense.
In altre parole, si indica a cosa serve la prova informatica, ma non c'è il minimo accenno alla disciplina scientifica che detta le regole relative alla sua trattazione.

## Informatica forense secondo Gammarota

@Gammarota2016 [26--27] ha dato una definizione concisa ed astratta dell'informatica forense:

> L'informatica forense studia le norme giuridiche ed le tecniche informatiche per il trattamento dei dati digitali a fini processuali.

Il termine "informatica forense" è stato ripreso da una pubblicazione di informatica giuridica peruviana [@Gammarota2016, 5], e scelto per l'assonanza con altre scienze ausiliare al diritto penale, che erano seguite dall'aggettivo "forense" [@Gammarota2016, 25, v. nota 43].

In primo luogo, si specifica che è preferibile un approccio il più possibile espansivo.

L'oggetto della disciplina non sono solo le "tecniche informatiche", ma anche le "norme giuridiche" per cui si intendono le "norme di diritto sostanziale e processuale che talvolta, anche solo latamente, riguardano l'utilizzo di sistemi informatici e telematici nonché i dati digitali", e che "non è esclusa nessuna branca del diritto, anche extra ordinamentale" [@Gammarota2016, 27].

Da questo punto di vista, è opportuno interpretare "processuali" come "processuali e procedimentali".

Nell'ambito della procedura penale, il "processo" propriamente detto inizia solo con l'esercizio dell'azione penale da parte del PM.
Fino a quel momento, e quindi per la durata delle indagini preliminari, si parla di "procedimento" [@Conso2020, 47, 419].

Tuttavia, varie disposizioni permettono agli atti di indagine preliminare, o comunque compiuti prima dell'inizio del giudizio, di entrare nel dibattimento.

Ad esempio, gli atti irripetibili compiuti dalla PG e dal PM, ed i verbali degli atti assunti in incidente probatorio (art. 431 co. 1 lett. *b*, *c*, *e* c.p.p.) sono inclusi nel fascicolo del dibattimento.

La loro natura irripetibile rende imprescindibile il ricorso alle tecniche dell'informatica forense, in modo da garantire una corretta trattazione del dato.

Invece di cercare di enumerare tutte le attività tipiche possibili, si compie un generico rinvio alle "tecniche informatiche in senso ampio \Omissis{} purché finalizzate al trattamento dei dati digitali per trarne informazioni utili alla ricostruzione dei fatti processualmente rilevanti" [@Gammarota2016, 27].
Questo evita il problema di cercare di essere il più esaustivi possibili nella definizione, o di doverla aggiornare periodicamente per tenerla al passo con le nuove prassi o le innovazioni tecniche.

Le *best practices* (migliori pratiche) in tema di *digital evidence* che vengono codificate a livello internazionale negli standard ISO/IEC [@Gammarota2016, 27--28] non sono propriamente norme giuridiche, perché la loro adozione è volontaria.
Piuttosto, data la loro natura principalmente tecnica, possono essere ricondotte all'interno delle "tecniche informatiche".

Nel definire l'oggetto dell'informatica forense, non si parla di "prova informatica", ma in maniera estremamente generica, di "dati digitali a fini processuali".

Il termine "prova" ha un significato tecnico preciso, che evoca la decisione nel merito del giudice---decidere una causa civile, o determinare se l'imputato è colpevole o no---e una serie di principi, tra cui la sua formazione in contraddittorio, specie nel processo penale (art. 111 co. 4 Cost.).

Tuttavia, esistono situazioni in cui il giudice deve prendere una decisione, ma non si parla propriamente di "prove".
Ad esempio, nel caso delle misure cautelari nel processo penale, il giudice decide sulla base di "gravi indizi di colpevolezza" (art. 273 co. 1 c.p.p.), che vengono presentati unilateralmente dal PM---all'imputato è concesso difendersi solo in un momento successivo, con l'interrogatorio di garanzia (art. 294 co. 1 c.p.p.).

Il solo fatto che si richiedano "indizi", e non "prove", non deve far pensare che non si debbano applicare i principi dell'informatica forense.
Anzi, proprio per il fatto che si richiedono "gravi indizi", e quindi quasi una prova anticipata della colpevolezza [@Grevi2020, 336--337], diventa necessario trattare correttamente i dati digitali su cui si fonda la richiesta.

In ultimo, l'espressione "a fini processuali" evita che la scienza rimanga fine a sé stessa---il fine che gli viene impartito è di rispondere alle esigenze e ai meccanismi del processo, e di rispettare le garanzie processuali [@Renzetti2015, 399].

Le tecniche di trattamento dei dati previste dall'informatica forense saranno fondamentali per il processo telematico, dove non solo alcune prove, ma tutti gli atti che compongono il processo, esistono come dati digitali.

## TODO Informatica come scienza di riferimento

- dubbio se l'informatica può essere effettivamente chiamata una scienza
- sistemi informatici come "fenomeni naturali"

Esatta definizione di "informatica" e "dato digitale":

- Origine del termine informatica in italiano
- Informatica non richiede modalità digitali (ricerca binaria in un dizionario, algoritmo A-star su un puzzle), dato digitale non presuppone la conoscenza dell'informatica (così come non serve un diploma in ingegneria elettrica per creare una radio, non serve sapere come funziona un computer per poterlo utilizzare, ma cfr. Unix, con pagine del manuale scritte come bug report, UNIX haters handbook, 53 ss., "collect bug reports")


L'**informatica forense** è una disciplina che presenta varie particolarità.

In primo luogo, va osservato che la sua nascita è estremamente recente.
Si inizia a parlare di **informatica** nella seconda metà del ventesimo secolo, nel 1957 in Germania, e nel 1962 in Francia
[@Bolognesi1999, 916--917].

## Sviluppo dell'informatica forense

### Fase libera di ricerca
### Formalizzazione dei risultati in best practices
## Peculiarità dell'informatica forense


L'informatica forense è una disciplina che presenta alcune peculiarità:

- La sua novità, anche della scienza a cui fa riferimento, non si è ancora completamente assestata
- La continua e rapida evoluzione, evoluzione guidata più dall'industria privata che dal mondo accademico
- La complessità degli aspetti tecnici, che sfuggono anche alle generazioni nate dopo la rivoluzione digitale
- Una generale mancanza di *computer literacy*
- Il fatto che le analogie fra il mondo digitale con il mondo non-digitale sono imperfette
- La resistenza ad adeguarsi ai nuovi schemi

Si può fare un paragone con la storia della medicina, e la storia di Semmelweis [@Kadar2019].

## Elementi di prova digitali

- "prova scientifica" non si riferisce ad un particolare tipo di prova, ma al fatto che vengono usate conoscenze tecniche
- "prova informatica" e "dati digitali"
- escludere l'uso della prova atipica, usare periti e consulenti

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

\begin{center}
{ 0 , 1 }
\end{center}

Una sequenza di bit invece è più utile, perché può rappresentare un valore numerico intero.

Una sequenza di otto bit è chiamata un "byte". Un byte può rappresentare 256 possibili valori.

\begin{center}
{ 0000-0000 , 0000-0001 , 0000-0010 [2] ... 1111-1110 [254] , 1111-1111 [255] }
\end{center}

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

Su internet si può trovare il software necessario, guide su come utilizzarlo,\VediAdEsempioUrl{https://github.com/SociallyIneptWeeb/AICoverGen}
raccolte di modelli del timbro vocale di cantanti,\VediAdEsempioUrl{https://huggingface.co/QuickWick/Music-AI-Voices}
servizi a pagamento che offrono un'interfaccia facile da usare.^[Basta cercare termini come "AI services voice cloning from recording" per trovare numerosi risultati]

La truffa (art. 640 c.p.) protegge il patrimonio della vittima e la sua libertà di autodeterminazione [@Bartoli2021, 296], e fra i vari requisiti, richiede l'uso di "artifizi o raggiri".
L'uso di questo tipo di tecnologie può sicuramente integrare quest'ultimo requisito, e casi di truffe telefoniche sono già successi negli Stati Uniti [@Kohli2023].

In ogni caso, la distinzione fra reati contro, o per mezzo di, sistemi informatici è puramente teorica, e non ha rilevanza pratica.

## Prova informatica

## Periti e consulenti tecnici

- fatto tecnico: il giudice può o usare la sua intuizione, o richiedere l'aiuto di personale specializzato
- Leggi scientifiche [@Marinucci2020, 242].

## Valutazione della prova tecnica

- Sentenza Daubert
- Sentenze della Cassazione

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
