# Informatica forense e prova scientifica

## Definizione dell'informatica forense

### Prime definizioni della computer forensics

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

### Digital evidence secondo Casey

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

### Informatica forense secondo Gammarota

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

Le *best practices* (migliori pratiche) in tema di *digital evidence* che vengono raccolte e codificate a livello internazionale negli standard ISO/IEC [@Gammarota2016, 27--28] non sono propriamente norme giuridiche, perché la loro adozione è volontaria.
Piuttosto, data la loro natura principalmente tecnica, possono essere ricondotte all'interno delle "tecniche informatiche".

Nel definire l'oggetto dell'informatica forense, non si parla di "prova informatica", ma in maniera estremamente generica, di "dati digitali a fini processuali".

Il termine "prova" ha un significato tecnico preciso, che evoca la decisione nel merito del giudice---decidere una causa civile, o determinare se l'imputato è colpevole o no---e una serie di principi, tra cui la sua formazione in contraddittorio, specie nel processo penale (art. 111 co. 4 Cost.).

Tuttavia, esistono situazioni in cui il giudice deve prendere una decisione, ma non si parla propriamente di "prove".
Ad esempio, nel caso delle misure cautelari nel processo penale, il giudice decide sulla base di "gravi indizi di colpevolezza" (art. 273 co. 1 c.p.p.), che vengono presentati unilateralmente dal PM---all'imputato è concesso difendersi solo in un momento successivo, con l'interrogatorio di garanzia (art. 294 co. 1 c.p.p.).

Il solo fatto che si richiedano "indizi", e non "prove", non deve far pensare che non si debbano applicare i principi dell'informatica forense.
Anzi, proprio per il fatto che si richiedono "gravi indizi", e quindi quasi una prova anticipata della colpevolezza [@Conso2020, 336--337], diventa necessario trattare correttamente i dati digitali su cui si fonda la richiesta.

In ultimo, l'espressione "a fini processuali" evita che la scienza rimanga fine a sé stessa---il fine che gli viene impartito è di rispondere alle esigenze e ai meccanismi del processo, e di rispettare le garanzie processuali [@Renzetti2015, 399].

Le tecniche di trattamento dei dati previste dall'informatica forense saranno fondamentali per il processo telematico, dove non solo alcune prove, ma tutti gli atti che compongono il processo, esistono come dati digitali.

## Informatica come scienza

### Sistematica della scienza

Tipicamente, le scienze vengono divise in due famiglie:

- Le scienze naturali, che osservano i fenomeni naturali, creano ipotesi scientifiche con natura fattuale, provano a confutarle confrontandole con la realtà materiale, e sviluppano modelli modelli teorici e leggi scientifiche che possono essere usati per fare previsioni [@McPherson2001, 242--243].
- Le scienze sociali, che studiano gli esseri umani e le loro interazioni sociali, e producono interpretazioni che al più possono essere oggetto di discussione, ma non di confutazione [@Montuschi2008, 5].

In entrambi i casi, le scienze possono assumere rilevanza forense.

### Scienze naturali forensi

Le scienze naturali forensi[^scienze-naturali-forensi] sono utili per:

- Acquisire i fatti, mediante le loro tecniche di analisi della realtà materiale. Si pensi alla disciplina espressamente prevista per il prelievo coattivo di campioni biologici (art. 224-*bis* c.p.p.).
- Valutare gli elementi di prova, ed in particolare dimostrare il nesso causale fra la condotta e l'evento nel reato, mediante l'uso di leggi scientifiche, derivate dall'osservazione della realtà materiale, ed arrivare ad un risultato probatorio [@Gammarota2016, 66].

Per quanto riguarda la dimostrazione del nesso causale, le leggi scientifiche sono espresse nella forma "data la situazione *X*, deriva *sempre/nella quasi totalità dei casi/nella maggioranza dei casi* la conseguenza *Y*".
Solitamente le leggi scientifiche non sono assolute, ma sono leggi statistiche, con un inevitabile margine di errore.

Quando un giudice applica una legge scientifica al caso concreto, deve valutare che sia adeguata, che sia il più affidabile possibile, e valutare sempre la presenza di spiegazioni causali alternative.

Le leggi scientifiche che presentano un grado di affidabilità minore possono essere utilizzate solo quando le spiegazioni causali alternative siano completamente assenti [@Marinucci2020, 242--245].
Questa logica può essere riassunta con l'aforisma "eliminato l'impossibile, ciò che resta, per improbabile che sia, deve essere la verità".

[^scienze-naturali-forensi]: Ad esempio, medicina legale, tossicologia forense, balistica forense &hellip;

### Scienze sociali forensi

Anche le scienze sociali possono offrire un prezioso contributo all'attività giuridica.
Ad esempio:

- La criminologia è utile per svolgere le indagini in maniera più efficiente ed efficace.
- La vittimologia permette ai soggetti che partecipano al processo di interagire con i soggetti vulnerabili nel miglior modo possibile---si pensi alla norma che permette di utilizzare l'incidente probatorio per assumere la testimonianza "[i]n gni caso, quando la persona offesa versa in condizione di particolare vulnerabilità".^[Art. 392 co. 1-*bis* c.p.p.]
- La psicologia può aiutare a dimostare il dolo [@Marinucci2020, 388], o valutare in maniera più "scientifica" e meno "intuitiva" le circostanze che determinano la quantità di pena che il giudice deve applicare. Ad esempio, i "motivi a delinquere", il "carattere del reo", la condotta e vita prima, durante e dopo il reato, e le "condizioni di vita individuale, familiare e sociale".^[Art. 133 c.p.]

### Affinità fra informatica e matematica

Adesso, si pone il problema di definire che tipo di scienza sia l'informatica. Da un lato, si può sicuramente escludere che sia una scienza sociale. Può essere usata dalle scienze sociali per analizzare grandi quantità di dati,[^analyics] ma interessa principalmente come strumento, non come scienza.

[^analyics]: Si pensi al settore della *data analytics*, che analizza enormi quantità di dati grezzi relativi ad utenti di siti internet per studiare---ed eventualmente, manipolare---fenomeni sociali (ad esempio, a quali temi gli utenti sono interessati, e come incentivarli ad acquistare determinati prodotti), e la relativa regolazione da parte del diritto, che cerca di regolare l'utilizzazione dei dati personali resi disponibili dagli utenti su internet, con strumenti come la GDPR.

Da un altro, si può escludere anche che sia una scienza naturale. L'oggetto dello studio dell'informatica è l'elaborazione automatica delle informazioni,[^definizione-informatica] e non l'informazione come fenomeno naturale.

[^definizione-informatica]: \VediUrl{Treccani.it}{Informatica}{n.d.}{https://www.treccani.it/enciclopedia/informatica/}.

La fisica cerca di elaborare modelli teorici che spiegano come sia possibile parlare di "informazione".
Ad esempio, si può dire che un libro stampato contenga informazioni perché gli atomi che lo compongono tendono a rimanere nella stessa posizione.
A loro volta, la posizione degli atomi all'interno della realtà materiale è una forma di informazione, perché è un dato percepibile e misurabile.

L'informatica, invece, è puramente teorica.

Il suo obiettivo non è tanto di spiegare "come" l'informazione esiste. Il "come" l'informazione esiste può condizionare lo sviluppo dell'informatica, specie quando si passa all'implementazione pratica delle costruzioni teoriche dell'informatica,[^macchina-di-turing] ma in ogni caso, il vero cuore della disciplina è "cosa" si può fare con l'informazione.

[^macchina-di-turing]: Ad esempio, la Macchina di Turing è un modello di calcolatore che memorizza i dati su un nastro di lunghezza infinita. I computer che utilizziamo ogni giorno sono una mera imitazione dell'ideale platonico della Macchina di Turing, perché dispongoono di una quantità di memoria limitata.

Da questo punto di vista, è analoga alla matematica, che normalmente non viene descritta come una "scienza" in senso proprio, termine normalmente riservato per le scienze naturali, ma come una "scienza" in senso lato, ossia un insieme di conoscenze organizzate.[^matematica-scienze-naturali]

[^matematica-scienze-naturali]: È l'opinione di @Bilaniuk1996 In ultima analisi, tutte le scienze naturali sono fondate sulla matematica. La sociologia si fonda sulla psicologia, che si fonda sulla biologia, che si fonda sulla chimica, che si fonda sulla fisica, che per ultima si fonda direttamente sulla matematica, che può essere definita la scienza più "pura", perché non studia né gli esseri umani, né la natura materiale, ma fenomeni completamente astratti. \VediUrl{R. Munroe}{Purity}{n.d.}{https://xkcd.com/435/}.

La matematica non si preoccupa di spiegare "come" esistano i concetti astratti di numeri, i punti, le rette&hellip;^[In verità, si può discutere da un punto di vista filosofico se la matematica sia "scoperta", come un qualsiasi altro fenomeno naturale, seppure estremamente astratto, e quindi se la realtà materiale ponga dei limiti invalicabili a quanto può essere scoperto nella matematica---oppure, se sia "inventata", e quindi qualsiasi assioma, per quanto a prima vista "innaturale", possa comunque essere studiato, anche solo a livello teorico.]
Piuttosto, dà per scontato che questi concetti esistano, seppur in maniera astratta, e mediante ragionamenti deduttivi, queste verità assiomatiche producono "teoremi". Un teorema non è un'ipotesi che aspetta di essere confutata,[^congettura-di-goldbach] ma è una proposizione logica che aspetta di essere provata.[^teorema-di-euclide]
L'esempio meglio conosciuto delle potenzialità del ragionamento deduttivo sono gli *Elementi* di Euclide, dove partendo da un numero limitato di elementi, si costruisce una serie di derivazioni logiche che permettono di dimostrare sempre più risultati.

[^congettura-di-goldbach]: Nella matematica l'equivalente delle "ipotesi" scientifiche sono le "congetture", Ad esempio, la congettura di Goldbach è formulata come "ogni numero pari maggiore di 2 può essere scritto come somma di due numeri primi, anche uguali". Basterebbe trovare un singolo numero non esprimibile come la somma di due numeri primi per confutare la congettura usando il metodo induttivo. 

[^teorema-di-euclide]: Ad esempio, il teorema di Euclide dimostra in maniera deduttiva che i numeri primi sono infiniti. Ottenere lo stesso risultato in maniera induttiva sarebbe impossibile, perché indipendentemente da quanto tempo sia trascorso dall'ultimo numero primo, non è possibile escludere a priori che fra gli infiniti numeri rimanenti non ci siano altri numeri primi.]

Allo stesso modo, l'informatica definisce una serie di concetti fondamentali. Ad esempio:

- Il bit è l'unità minima di informazione---può assumere solo due valori, 0 o 1.
- La memoria è un sequenza di bit---si può immaginare una linea dei numeri, il numero è la posizione di memoria in cui si trova il bit, e ad ogni numero è associato un bit.
- Le variabili permettono di dare un nome agli indirizzi di memoria---la variabile è un modo più semplice di dire "la sequenza di *N* bit, a partire dall'indirizzo *A*".
- Un puntatore è una variabile, il cui valore è un indirizzo di memoria---concettualmente, un puntatore ha la stessa funzione di un indirizzo, indica "dove si trova" un certo luogo, ma non "è" quel luogo.
- Una variable speciale chiamata PC (*program counter*, contatore del programma) o IP (*instruction pointer*, puntatore della istruzione) è un puntatore, che indica l'indirizzo di memoria che contiene la prossima operazione da eseguire.
- Alcune istruzioni particolari (*jump instructions*) permettono di manipolare il PC o IP, e quindi di far "saltare" l'esecuzione del programma ad un'altra posizione di memoria.
  - I salti incondizionati permettono di creare una *subroutine*, una sequenza di istruzioni che può essere visitata più volte  
- I bit possono essere confrontati e manipolati per mezzo degli operatori booleani.^[Gli operatori *and*, *or*, *not* &hellip; (e, o, non &hellip;)]
- Le operazioni artimetiche possono essere effettuate combinando insieme vari operatori booleani.

E così via, fino alla definizione di costruzioni teoriche sempre più complesse, come il controllo di flusso, le *subroutine* (funzioni o programmi), l'esecuzione in parallelo &hellip;

Ancora, laddove le scienze naturali producono teorie che cercano di spiegare un fenomeno, l'informatica produce algoritmi---sequenze di istruzioni che non hanno un contenuto definitorio o conoscitivo, ma solamente imperativo.
L'informatica può sicuramente essere usata per svolgere l'attività di ricerca nelle scienze naturali, ma ha sostanzialmente la stessa funzione della matematica: aiuta nella ricerca, formalizza i risultati, ma non è propriamente una "scienza".

### Affinità fra dati digitali e fenomeni naturali

Tuttavia, quanto detto finora non esclude la possibilità di affermare che l'informatica---in particolare l'informatica forense, come forma applicata dell'informatica---possa avere la natura di una "scienza naturale".

Un sistema informatico---espressione qui intesa come la combinazione di *hardware*, la parte tangibile, e dati digitali, che includono anche il *software*---può benissimo essere considerato un "fenomeno naturale".

L'*hardware* ed i supporti materiali su cui i dati digitali sono memorizzati sono soggetti ai fenomeni naturali. Ad esempio, uno studio della IBM stimò che ogni mese, per ogni 256 MB di RAM, si verifica un *bit flip*, ossia, un bit nella memoria vienee invertito, perché il supporto è stato colpito da una particella ionizzante [@Long2022].

Il *software*---l'insieme di dati digitali che costituiscono il sistema operativo e programmi installati---a sua volta può essere considerato un "fenomeno naturale" perché la sua modalità di funzionamento non è immediatamente apparente.

Se il software è proprietario, e non si ha accesso al codice sorgente, si possono usare le stesse tecniche usate dagli scienziati che studiano un fenomeno naturale:

- Si osserva il software ed si interagisce con esso (si forniscono determinati input, si svolgono certe azioni),
- Si documentano le operazioni svolte ed i risultati osservati.
- Si formulano delle ipotesi di leggi che descrivono il funzionamento del fenomeno ("data la sequenza di azioni *X*, il programma produce i cambiamenti *Y*"). La formulazione delle ipotesi è libera, e non segue schemi formali, ma è possibile formulare nuove ipotesi iterando su quelle già sviluppate [@Blachowicz2009, 321--323].
- Si sviluppa un esperimento che può essere riprodotto e ripetuto anche da altri scienziati.
- Si sottopongono le ipotesi a verificazione mediante l'esperimento, e si documentano i risultati. La fase di verificazione è particolarmente delicata. Il solo fatto che i risultati osservati confermano l'ipotesi oggetto di esame non è sufficiente a dimostre che l'ipotesi sia valida,[^fallacia-affermare-conseguente] perché serve anche dimostrare che i risultati non siano dovuti a cause alternative [@Blachowicz2009, 325].
- Le ipotesi e l'esperimento vengono raffinati, in modo da cercare di creare un esperimento controllato---un esperimento dove l'unico elemento che cambia è la variabile che viene studiata. Nell'informatica, si parla di *minimum reproducibile example* (minimo esempio riproducibile), il numero minimo di azioni necessarie per riprodurre un certo fenomeno.
- Eventualmente, si arriva alla creazione di una serie di massime di esperienza, che sono state comprovate empiricamente.

Se il software è libero, ed è possible prendere visione del codice sorgente, rimane comunque un margine di incertezza. Così come un modello scientifico può essere sempre confutato da un fenomeno che non è in grado di spiegare, così un software può contenere un *bug* (errore di programmazione). Sulla base del codice ci si aspetta il risultato *X*, ma per qualche motivo, quando viene eseguito produce il risultato *Y*. I bug vengono risolti con tecniche di *debugging*, che sono interamente basate sul metodo scientifico.[^debugging]

Anche i *dati digitali* diversi dal software possono essere considerati "fenomeni naturali".

Nei casi in cui l'informatica forense opera come l'equivalente digitale di una autopsia, si deve partire dall'assunto che i dati non possono essere presi *sic et simpliciter* per buoni. Esistono numerose cause---naturali, incolpevoli, colpevoli e volontarie---di modificazione dei dati. Nel corso delle investigazioni, è opportuno accompagnare ogni conclusione che viene tratta sulla base dei dati con un giudizio sulla sua certezza, che tenga conto degli elementi che sono a favore di, o contari a, quella conclusione.

Più in generale, si pone sempre il problema della corretta interpretazione dei dati. Studiare il funzionamento di un programma permette *a priori*, di determinare quali effetti produce sui dati digitali, e viceversa, *a posteriori*, determinare se lo stato dei digitali possa essere stato causato da quel programma. Tuttavia, come visto, un programma potrebbe contenere bug che causano comportamenti inaspettati ed imprevedibili, e viceversa, si potrebbero ipotizzare decorsi causali diversi, dove le modifiche che sono astrattamente riconducibili ad un certo programma o motivo, potrebbero essere dovute ad altri programmi o motivi.

[^fallacia-affermare-conseguente]: È la fallacia logica di affermare il conseguente: "Se *A*, *B*; *B*; pertanto, *A*", ma questo ignora il fatto che *B* potrebbe avere altre cause oltre che *A*. Per fare un esempio pratico: "Se nei programmi ci sono bug, si arresteranno in maniera inaspettata. Windows si è arrestato inaspettatamente, pertanto Windows deve avere un bug". Tuttavia, se Windows si arresta anche quando esegue istruzioni estremamente semplici, come impostare un valore a 0, si inizano a sospettare altre cause per l'arresto inaspettato, tra cui l'instabilità dell'hardware dovuta ad *overclocking* (la sovralimentazione di un processore al fine di aumentare le prestazioni, al costo di sacrificare il suo corretto funzionamento). \VediUrl{R. Chen}{There's an awful lot of overclocking out there}{2005}{https://devblogs.microsoft.com/oldnewthing/20050412-47/?p=35923}.
[^debugging]: Un bug viene rilevato (osservazione), si documentano le azioni che lo causano (documentazione), si formula un ipotesi riguardo a quali istruzioni nel codice possano causare quel bug (formulazione di ipotesi), si apportano le modifiche necessarie al codice per vedere se il bug continua a presentarsi (verifica dell'ipotesi), e si continuano a formulare e verificare altre ipotesi fino a quando il bug viene corretto. È buona pratica documentare, dove possibile e ragionevole, la causa del bug, in modo da evitare una *regression* (situazione dove lo stesso bug che era stato già risolto si ripresenta nel futuro), ed evitare di commettere lo stesso errore in futuro in altre parti del codice.

In conclusione, anche se la sua natura astratta, deduttiva ed esatta rende l'informatica di per sé è una disciplina affine alla matematica,[^numeri-causali] quando si passa al mondo pratico, e si devono analizzare dei dati digitali a fini processuali, l'informatica forense può essere considerata a pieno titolo una scienza naturale. Le sue valutazioni, pur essendo ispirate da una "scienza esatta", non possono che essere espresse in termini di probabilità, data la presenza di margini di incertezza ineliminabili nell'oggetto della materia.

[^numeri-causali]: Basta pensare al fatto che i computer sono incapaci di generare valori casuali. Nell'informatica si parla di *PRNG* (*pseudo-random number generator*, generatore di numeri pseudo-casuali). Il *Mersenne Twister* è il PRNG di default nelle librerie di molti linguaggi di programmazione, e permette di ricombinare una sequenza di bit iniziale chiamata *seed* (seme) in modo da generare (metaforicamente, far germogliare il seme in) una nuova serie di bit, che ad un osservatore umano sembrano casuali. Tuttavia, se si ottiene un sufficiente numero di output, diventa possibile calcolare lo stato interno del PRNG, e quindi prevedere i valori che saranno generati nel futuro. Il nome "pseudo-causale" deriva dal fatto che i risultati sono potenzialmente prevedibili. Un *CSPRNG* (*cryptographically-secure PRNG*, PRNG crittograficamente sicuro) presentano maggiori garanzie di robustezza (si deve dimostrare che anche conoscendo gli output precedenti, il prossimo output sia statisticamente imprevedibile, e che in ogni caso, sia impossibile risalire al *seed*). Il miglior *seed* per un (CS)PRNG è un singolo valore "realmente casuale", che può essere ottenuto soltanto facendo riferimento ad un elemento che si trovi all'esterno (ad esempio, misurando la temperatura della stanza, il movimento del mouse dell'utente, ecc &hellip;).

## Reati informatici

### Potenziale criminale dei sistemi informatici

Il fenomeno che ha richiesto ed incentivato lo sviluppo dell'informatica forense sono i reati informatici.

A partire dalla seconda metà del ventesimo secolo, le tecnologie informatiche si sono sviluppate e sono diventate una parte essenziale della società moderna.
Tuttavia, la diffusione della tecnologia comportava anche il suo abuso ed uso da parte dei criminali [@Gammarota2016, 11].

I sistemi informatici permettono alla condotta di singolo individuo -- purché dotato delle conoscenze tecniche necessarie -- di causare danni enormi.

Ad esempio, nel 1988, il *Morris worm* riuscì a disturbare ed interrompere il funzionamento di un numero significativo[^morris-worm] dei sistemi informatici allora collegati su internet [@Nugent1991, 1].

[^morris-worm]: Si stima che in 24 ore riuscì a diffondersi sul 10% dei 60.000 computer connessi ad internet.
L'obiettivo del *worm* non era di distruggere dati, ma di causare quello che oggi sarebbe chiamato un *denial of service attack* (attacco per l'interruzione del servizio). \VediUrl{Federal Bureau of Investigation}{The Morris Worm}{2018}{https://www.fbi.gov/news/stories/morris-worm-30-years-since-first-major-attack-on-internet-110218}.

Nel campo della protezione dei diritti d'autore, basta che un singolo soggetto riesca ad aggirare le misure di protezione di un programma, in modo che possa essere eseguito anche senza acquistare una licenza, e distribuisca questa versione modificata al pubblico, per generare un numero potenzialmente illimitato di vendite perse.^[La rimozione delle misure di sicurezza viene colloquialmente chiamata *cracking*, o "craccare" in italiano. Esistono siti che elencano quale gruppo pirata ha craccato quale software, e quali software sono in attesa di essere craccati. Ad esempio, <https://crackwatcher.com>.]

Ancora, l'uso di tecnologie *peer-to-peer* permette a chiunque non solo di acquisire materiale pedo-pornografico, ma anche di ridistribuirlo automaticamente ad un numero potenzialmente illimitato di persone [@Ferrazzano2014, 99 ss.]

### Disciplina sostanziale e procedurale dei reati informatici

Date queste premesse, l'intervento del diritto penale era inevitabile.

Negli Stati Uniti, la mancanza di leggi che punissero in maniera specifica i reati informatici, e la natura immateriale dei dati digitali inizialmente non furono di ostacolo per il sistema giudizario.

I *prosecutors* (pubblici ministeri) potevano qualificare il fatto commesso mediante un sistema informatico all'interno dei reati tradizionali, come *fraud* (truffa telematica), *larceny* (furto), o *embezzlement* (appropriazione indebita o peculato).

Le corti affermavano che nonostante i dati digitali avessero natura intangibile ed immateriale, avevano comunque un valore economico, e quindi si legittimava l'intervento del diritto penale [@Nugent1991, 2].

Tuttavia, in alcuni casi, le corti argomentarono che se il legislatore voleva proteggere i sistemi informatici ed i dati digitali, avrebbe dovuto farlo in maniera espressa.
Un'interpretazione estensiva delle leggi penali avrebbe violato:

- Il principio del *due process of law* (giusto processo), perché l'imputato non avrebbe potuto sapere in anticipo che il fatto sarebbe stato considerato un reato dalle corti.
- Il principio della separazione dei poteri, perché i giudici avrebero creato una nuova ipotesi di incriminazione, non espressamente prevista dal legislatore.

Gli Stati iniziarono a dotarsi di leggi sui reati informatici per superare questi problemi.
La prima fu approvata in Florida nel 1978, e nel corso di poco più di un decennio, quasi tutti gli altri Stati si dotarono di proprie leggi [@Nugent1991, 2--4].

In Italia, la prima disciplina riguardo i reati informatici viene introdotta nel 1993.[^legge-reati-informatici]
Il codice penale viene aggiornato, introducendo riferimenti ai sistemi informatici e telematici, ai programmi informatici e ai dati digitali [@Gammarota2016, 71].

[^legge-reati-informatici]: V. L. 547/1993.

Ad esempio, si prevede espressamente---in modo da evitare qualsiasi dubbio:

- Che il danneggiamento può riguardare anche sistemi informatici o telematici, e dati o programmi informatici (artt. 635-*bis*--*quinquies* c.p.).
- Il nuovo reato di accesso abusivo a sistema informatico (art. 615-*ter*).
- Che la "corrispondenza" che può essere violata, sottratta o soppressa è anche quella "informatica o telematica" (art. 616 co. 4 c.p.).
- Il nuovo reato di intercettazione, impedimento ed interruzione di "comunicazioni relative ad un sistema informatico o telematico" (art. 617-*quater* c.p.).
- Il reato di frode informatica, che si fonda sull'alterazione non autorizzata di un sistema informatico o dei suoi dati (art. 640-*ter* c.p.).

Tuttavia, istituire nuove figure di reato è relativamente semplice.
Il vero problema è l'accertamento dei nuovi reati all'interno del processo.

Negli Stati Uniti, la cultura processuale è stata sempre aperta alla formazione della prova in contraddittorio, e la discussione dei principi, strumenti e metodologie scientifiche usate per ricostruire il fatto [@Gammarota2016, 11--12].
Pertanto, la valutazione della attendibilità della prova costituisce una parte naturale del processo.

Viceversa, in Italia la cultura processuale preferisce l'uso di prove precostituite (che devono essere semplicemente presentate), e non le prove costituitende (che invece si formano esclusivamente nel dibattimento fra le parti) [@Gammarota2016, 22--23].

È l'impostazione opposta rispetto alla cultura statunitense, e nel caso specifico della prova informatica, causa gravi problemi.
Le prove informatiche potrebbero benissimo essere considerate dei documenti (art. 234 c.p.p.), possono essere acquisite perché sono il corpo del reato (art. 235 c.p.p.), o perché provengono dall'imputato (art. 237 c.p.p.), e possono essere valutate dal giudice senza il contributo di un perito o dei consulenti tecnici delle parti, perché in fondo, non sono troppo diversi da una fotografia.

Tuttavia, questa impostazione ignora completamente gli aspetti tecnici e scientifici dell'acquisizione e valutazione delle prove informatiche che sono oggetto dell'informatica forense.

Il legislatore è pienamente capace di considerare la caratteristiche particolari di un mezzo di prova, e prevedere cautele apposite.

Ad esempio, si consideri la disciplina minuziosa prevista per la ricognizione di persone---un intero articolo è dedicato agli atti preliminari, si prevede l'esecuzione e la menzione di questi adempimenti nel verbale a pena di nullità, e gli articoli successivi regolano lo svolgimento, e altri tipi di ricognizione (artt. 213--216 c.p.c.).

Il legislatore sa che la memoria umana è labile, e quindi---a ragione---istituisce una disciplina articolata per una prova che si fonda interamente sul ricoonoscere qualcuno o qualcosa.

Anche i dati digitali ed i sistemi informatici presentano numerose particolarità, che non possono essere ignorate per una loro corretta acquisizione e valutazione a fini processuali. 
La prima disciplina di diritto processuale relativa ai dati digitali sarà introdotta solo nel 2008, con la ratifica della Convezione di Budapest del 2001,[^legge-ratifica-convenzione-budapest] ma il suo contenuto si limita ad affermazioni di principio, e non ad una disciplina più dettagliata e accompagnata da gravi sanzioni processuali in caso di violazione, come nel caso delle ricognizioni.

[^legge-ratifica-convenzione-budapest]: V. L. 48/2008.

### Rilevanza procedurale dei dati digitali

L'espressione "reato informatico" può essere intesa in due modi [@Gammarota2016, 29]. Nel caso dei reati informatici "propri", il sistema informatico è l'oggetto ed il bene giuridico protetto dal reato, ed è impossibile prescindere dalla sua presenza.

Si può distinguere fra due casi:

- Il sistema informatico può essere l'unico bene rilevante per il reato. Ad esempio, nella serie di reati dedicati al danneggiamento di dati, programmi e sistemi informatici pubblici e privati,[^reati-danneggiamento]
rileva il solo fatto che siano stati danneggiati dei dati digitali.
- In altri casi, l'offesa al sistema informatico si unisce all'offesa di altri beni giuridici. Ad esempio, il *ransomware* è un tipo di *malware* che cripta i file dell'utente, rendendoli inaccessibili, e chiede il pagamento di un riscatto per decrittarli. Questa condotta può essere qualificata come una frode informatica (art. 640-*ter* c.p.), una fattispecie che richiede l'alterazione del funzionamento di un sistema informatico con lo scopo di procurare un profitto. Il danno al patrimonio della persona si aggiunge al danno causato al corretto funzionamento del sistema informatico [@Bartoli2021, 335].

[^reati-danneggiamento]: Artt. 635-*bis*--*quinquies* c.p.

In questi casi è impossibile prescindere dal dato digitale, perché l'unico modo per dimostare l'evento---il danno causato al sistema informatico---è considerare i dati in esso contenuti.

Nel caso dei reati informatici "impropri", il sistema informatico è soltanto lo strumento usato per compiere il reato, ed il bene -- o beni -- giuridici protetti dalla fattispecie non includono il sistema informatico.

Ad esempio, gli sviluppi più recenti nelle intelligenze artificiali permette di generare dei *deepfake* vocali estraendo il timbro vocale di una persona, ed applicandolo ad un'altra registrazione, mediante un processo chiamato *voice conversion* [@Feffer2023].
Su internet si può trovare il software necessario, guide su come utilizzarlo,\VediAdEsempioUrl{https://github.com/SociallyIneptWeeb/AICoverGen}
raccolte di modelli del timbro vocale di cantanti,\VediAdEsempioUrl{https://huggingface.co/QuickWick/Music-AI-Voices}
servizi a pagamento che offrono un'interfaccia facile da usare.[^ai-voice-cloning]

[^ai-voice-cloning]: Basta cercare termini come "AI services voice cloning from recording" per trovare numerosi risultati.

La truffa (art. 640 c.p.) protegge il patrimonio della vittima e la sua libertà di autodeterminazione [@Bartoli2021, 296], e fra i vari requisiti, richiede l'uso di "artifizi o raggiri".
L'uso di questo tipo di tecnologie può sicuramente integrare quest'ultimo requisito, e casi di truffe telefoniche sono già successi negli Stati Uniti [@Kohli2023].

Nei casi di reato informatico improprio è difficile e controproducente---ma almeno in linea teorica, non impossibile---ignorare il dato digitale ai fini della prova del fatto, e concentrarsi su elmenti diversi.

Infine, in qualiasi altro caso di reato, i dati digitali possono essere una fonte utile di informazioni.
Possono servire sia solo per indirizzare le indagini, oppure come elementi di prova.

Tuttavia, questa distinzione di fini è puramente teoria.
Nella pratica, bisogna considerare che in entrambi i casi è necessario accedere ai dati---non è possibile sapere *a priori* che utilità possono avere senza prenderne visione---e ogni accesso ai dati informatici---quando questi si trovano sul supporto originale---può causare dei cambiamenti irreversibili.

Pertanto, è irragionevole pensare di fare un accesso "informale" ai dati, perché saranno usati solo per continuare le indagini.

Si può applicare una logica analoga a quella prevista nell'art 350 c.p.p.:

> Sul luogo o nell'immediatezza del fatto, gli ufficiali di polizia giudiziaria possono, anche senza la presenza del difensore, assumere dalla persona nei cui confronti vengono svolte le indagini, anche se arrestata in flagranza o fermata a norma dell'articolo 384, notizie e indicazioni utili ai fini della immediata prosecuzione delle indagini.

> Delle notizie e delle indicazioni assunte senza l'assistenza del difensore sul luogo o nell'immediatezza del fatto a norma del comma 5 è vietata ogni documentazione e utilizzazione.

- "senza l'assistenza del difensore" e divieto di utilizzazione, collegamento fra modalità meno garantite e divieto di uso nel dibattimento

## Dati digitali

### Definizione di dati digitali

La Convenzione di Budapest definisce i dati digitali come (art. 1 lett. *b*):

> [A]ny representation of facts, information or concepts in a form suitable for processing in a computer system, including a program suitable to cause a computer system to perform a function.[^definizione-dati-digitali]

[^definizione-dati-digitali]: *Qualsiasi rappresentazione di fatti, informazioni o concetti in una forma che sia adatta ad essere elaborata da un sistema informatico, comprendendo anche un programma che porta un sistema informatico a svolgere una funzione.*

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

### Dimostrazione della fragilità dei bit

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

## Ostacoli all'informatica forense

È opportuno evidenziare le particolarità e difficoltà che l'informatica forense incontra e presenta, al fine di garantire un suo uso consapevole.

### Novità della disciplina

L'informatica è una scienza particolarmente giovane. Il termine stesso "informatica" viene coniato come neologismo per la prima volta in Germania, tra il 1955 ed il 1957, come *Informatik-System*, nella registrazione di un brevetto per un sistema automatizzato per l'amministrazione aziendale, e successivamente, nel 1962 in Francia (*informatique*), e nel 1966 in Russia (*informatika*) [@Bolognesi1999, 915--917].

La prima menzione di "computer sciences" (al plurale) risale al 1959, in un articolo che analizzava la nascita ed evoluzione dei campi di studio riguardanti l'uso di "computer" (calcolatori) ed il "data processing" (trattamento dei dati) [@Fein1959, 7].

Questo non implica che l'informatica sia una disciplina immatura.[^denaro-elettronico]
Piuttosto, si può argomentare che i suoi principi fondamentali non hanno ancora avuto il tempo di diventare parte delle "nozioni di fatto che rientrano nella comune esperienza" (art. 115 c.p.p.).

[^denaro-elettronico]: Altrimenti, il 97% del denaro in circolazione non esisterebbe solo in forma digitale---e tantomeno ci sarebbero proposte per abbandonare completamente banconote e monete, in favore di una valuta completamente digitale. \VediUrl{A. S. Mokerjee}{What If Central Banks Issued Digital Currency?}{2021}{https://hbr.org/2021/10/what-if-central-banks-issued-digital-currency}.

Per fare un paragone con la medicina, non serve essere specialisti nella materia per sapere che un chirurgo rischia di causare infezioni, se non si disinfetta le mani prima di operare su un paziente.

Tuttavia, questa nozione è diventata evidente solo nel tempo. Inizialmente, era stata addirittura ostacolata. Nella scuola di medicina di Vienna, gli studenti entravano in contatto sia con cadaveri, sia con donne partorienti, ed i casi di sepsi puerperale erano frequenti. Nel 1847, Ignaz Semmelweis dimostrò il nesso causale fra il contatto con tessuti organici in putrefazione e la malattia.

Dopo aver dissezionato i cadaveri, gli studenti si lavavano soltanto con acqua e sapone, ma l'odore putrescente rimaneva sulle loro mani.
Semmelweis chiese che gli studenti si disinfettassero le mani con una soluzione contenente cloro.
Nei due mesi precedenti, il 15.4% delle morti fra i pazienti era dovuta alla malattia.
Nei tre mesi successivi all'introduzione della prassi di disinfettarsi le mani, questa percentuale diminuì al 1.4% [@Kadar2019, 30--32].

Tuttavia, i medici si rifiutavano di dare ragione a Semmelweis. Nel 1855, Carl Braun pubblicò un resoconto sulla malattia, indicando trenta possibili cause---incluso lo stress del parto, disturbi emotivi, carenze alimentari &hellip;---e per ultimo, l'infezione dovuta a materia putrescente da cadaveri [@Carter1985, 35].

L'opposizione non era dovuta alla mancanza di sufficienti prove empiriche, ma ad un irragionevole attaccamento alle teorie tradizionali del tempo. Solo dopo che passarono 15 anni dalla morte di Semmelweis---ossia, nel 1880, più di 30 anni dopo la dimostrazione iniziale---le vecchie concezioni furono definitivamente superate, e la sua teoria fu accolta [@Kadar2019, 35].

Una situazione simile si sta ripetendo nell'ambito dell'informatica forense.
I "Semmelweis" della disciplina hanno empiricamente dimostrato che anche le operazioni di investigazione che sono apparentemente poco invasive---perché di "sola lettura"[^esempi-operazioni-sola-lettura]---in realtà comportano un gran numero di modifiche "in scrittura"--ossia, la modificazione delle informazioni e del contenuto di file esistenti, e la creazione di nuovi file [@Cinti2011, 93--95].

[^esempi-operazioni-sola-lettura]: Ad esempio, eseguire una ricerca fra i file, avviare un il browser internet per visualizzare la cronologia, aprire un documento con Word o OpenOffice, anche solo spegnere il computer invece di staccare la spina.

Ancora, è stato dimostrato che cambiare un singolo bit può modificare il senso dei dati digitali.
Ad esempio, basta invertire un singolo bit per passare dal testo "26.07.1966" al testo "26.07.1976", e viceversa, con ovvie ricadute ai fini delle indagini [@Gammarota2016, 61--62].

Per continuare l'analogia con la medicina legale, sarebbe come dire che anche toccare il cadavere con i guanti provoca dei cambiamenti al suo interno, e basta cambiare in minima misura una singola molecola all'interno di un cadavere, per cambiare la data della morte di 10 anni.

Tuttavia, queste nozioni fondamentali riguardo la natura dei programmi informatici e dei dati digitali sono ancora nozioni specialistiche, conosciute solo dai tecnici.
Quando il legislatore richiede l'uso di "misure tecniche dirette ad assicurare la conservazione dei dati originali e ad impedirne l'alterazione" nelle perquisizioni su sistemi informatici (art. 352 co. 1-*bis* c.p.p.), accenna al problema, ma l'accenno rimane lettera morta, se coloro che prendono parte al processo/procedimento (giudice e suoi ausiliari, PM e PG, difensore &hellip;) non hanno ben presente la natura dei dati digitali, le possibili cause di alterazione, le modalità adeguate di conservazione&hellip;

Riprendendo la storia di Semmelweis, richiedere l'uso di "misure tecniche" è come dire che i medici devono lavarsi le mani prima di toccare una partoriente.
Il problema è che se i medici non sanno che acqua e sapone non bastano, ma serve l'uso di un detergente specifico per evitare di infettare i pazienti---fino a quando questa idea viene accettata, e diventa di conoscenza comune---i pazienti continueranno a morire---e specularmente, i dati digitali continueranno ad essere contaminati, e quindi diventare meno affidabili ai fini processuali.

### Complessità tecnica

dell'informatica è una materia complessa, ed in continua evoluzione.

- software sempre più complesso
- architetture distribuite e difficili
- nuovi dispositivi

### Inadeguatezza delle leggi

- incertezze lessicali

Spesso le leggi che regolano l'uso di sistemi informatici e dati digitali commettono gli errori della falsa equivalenza, o dell'*argumentum ad antiquitatem* (appello alla tradizione)---se è possibile trovare un'analogia fra il mondo tradizionale e quello digitale, il secondo viene regolato per analogia applicando le regole del primo.

Ad esempio:

- *E-mail* significa letteralmente "posta elettronica". La PG poteva già sospendere l'inoltro di "lettere, pieghi, pacchi, valori, telegrammi o altri oggetti di corrispondenza". Pertanto, è stato sufficiente aggiungere "anche se in forma elettronica o se inoltrati per via telematica" per permettere la possibilità di sospendere l'inoltro di posta elettronica (art. 353 co. 3 c.p.p.).
- La "D" in PDF significa "documento".[^acronimo-pdf] Il Codice dell'amministrazione digitale equipara espressamente i "documenti informatici" alle scritture private (art. 20).
- Il reato di accesso abusivo ad un sistema informatico (art. 615-*ter* c.p.) è collocato a breve distanza dal reato di violazione di domicilio (art. 614 c.p.).

[^acronimo-pdf]: PDF è un acronimo che significa *Portable Document Format* (formato per documenti interoperabile).

Il problema è che l'utilità delle analogie è limitata.
Sono utili per dimostare che la funzione di due oggetti è la stessa---e che quindi, casi simili devono ricevere tutele simili---ma non dicono nulla sulla diversa natura intrinseca dei beni protetti, e quindi, come i casi diversi devono essere trattati in maniera diversa.

Un messaggio di posta elettronica o un file PDF hanno la natura di dato digitale,[^natura-email] ma dopo essere stati stampati, perdono la natura di dato digitale, e acquistano la natura di documento materiale.
Questa trasformazione rappresenta una perdita di informazioni irreversibile.
Per il diritto sono sostanzialmente la stessa cosa, ma per l'informatica, e conseguentemente, l'informatica forense, sono due cose completamente diverse---e situazioni diverse devono essere trattate in maniera diversa.

[^natura-email]: Per quanto riguarda la posta elettronica, bisogna ulteriormente distinguere fra il messaggio conservato su un server remoto---solitamente il server del gestore del servizio di posta elettronica---e la copia del messaggio che viene salvata sul computer. Se l'utente non ha modo di accedere al server remoto, i protocolli per la trasmissione dei messaggi di posta elettronica permettono solo di leggere o eliminare un messaggio, ma non di modificarlo in parte o per intero. Naturalmente, una volta che il messaggio viene scaricato sul computer, può essere liberamente modificato, come qualsiasi altro file. Pertanto, è preferibile acquisire un messaggio dal server remoto, perché è meno probabile che sia stato soggetto a modificazioni---ma al tempo stesso, acquisire dati da internet richiede l'uso di tecniche particolari, per dimostrare nella maniera più convincente possibile che il processo di acquisizione ha realmente contattato il server remoto, ed i dati non sono stati manipolati durante o dopo l'acquisizione.

Per comprendere meglio la differenza tra dato digitale e riproduzione analogica, si pensi alle norme sull'ispezione nel codice di procedura civile:

- "All'ispezione procede personalmente il giudice istruttore \Omissis{}" (art. 259 c.p.c.).
- "Il giudice istruttore può disporre che siano eseguit[e] \Omissis{} riproduzioni anche fotografiche di oggetti, documenti e luoghi \Omissis{}" (art. 261 c.p.c.).

Sulla base di queste definizioni, è chiaro che c'è una differenza fondamentale fra il luogo in cui si svolge l'ispezione---che deve essere percepito "personalmente" dal giudice---e la riproduzione fotografica del luogo, che "può" essere disposta, se il giudice lo ritiene utile, ma chiaramente serve solo come promemoria, e non come sostituto per l'osservazione in prima persona del luogo.

Adesso, si consideri il seguente potere certificatorio, attribuito al notaio:

> Il notaio può attestare la conformità all'originale di copie, eseguite su supporto informatico o cartaceo, di documenti formati su qualsiasi supporto ed a lui esibiti in originale o copia conforme.^[L. 89/1913, art. 73.]

In altre parole, un notaio può certificare che la stampa cartacea di un documento digitale è "conforme" all'originale digitale.
Tuttavia, il valore di questa certificazione non va sopravvalutato, come invece è pratica comune fare [@Gammarota2016, 23].

Quello che il notaio sta certificando è che il "documento digitale"---inteso come "quanto appare sullo schermo del computer", e non come "file salvato su disco"---sia stato riprodotto correttamente su carta.[^copia-conforme-file]

[^copia-conforme-file]: In realtà, è perfettamente possibile rappresentare dati digitali su carta. Basta usare un sistema che permetta di convertire una sequenza di valori binari in una sequenza di caratteri che possono essere facilmente scritti con una tastiera, e viceversa (ad esempio, la codifica Base64 o Ascii85). Da un punto di vista teorico, la copia cartacea è realmente conforme all'originale digitale, perché il contenuto è lo stesso, bit per bit, è solo conservato in maniera diversa. Da un punto di vista pratico, è un sistema estremamente inefficiente di creare copie di file, ed inefficace, perché la codifica rende il contenuto del file non immediatamente percepibile.

Così come l'ispezione non è riducibile alle fotografie che vengono fatte, il documento digitale non è riducibile a "quello che si vede sullo schermo".

Il luogo oggetto di ispezione ed il documento digitale sono una cosa.
Quanto il giudice ha effettivamente percepito durante l'ispezione, e quanto si vede a schermo sono un'altra.
Quanto viene fotografato, e quanto viene stampato sono un'altra ancora.
Infine, così come esistono modi per nascondere qualcosa all'interno di un luogo (ad esempio, nel controsoffitto, dentro un muro &hellip;), esistono modi per nascondere dati all'interno di un documento digitale.

## Prova informatica come prova scientifica

- "prova scientifica" non si riferisce ad un particolare tipo di prova, ma al fatto che vengono usate conoscenze tecniche
- "prova informatica" e "dati digitali"
- escludere l'uso della prova atipica, usare periti e consulenti

### Periti e consulenti tecnici

- fatto tecnico: il giudice può o usare la sua intuizione, o richiedere l'aiuto di personale specializzato
- Leggi scientifiche [@Marinucci2020, 242].

### Valutazione della prova tecnica

- Sentenza Daubert
- Sentenze della Cassazione

### Importanza delle definizioni

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
