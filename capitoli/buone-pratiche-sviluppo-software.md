# Sviluppo di software scientifico libero

## Introduzione

I capitoli precedenti hanno dimostrato come il software libero sia il modello migliore per soddisfare le esigenze dell'informatica forense. Questo capitolo spiega come viene sviluppato il software libero nella pratica. Il capitolo ha due obiettivi.

Il primo è fornire ai giuristi un'introduzione ai problemi tecnici e le buone pratiche che riguardano lo sviluppo del software. Così come è importante conoscere le problematiche fondamentali poste dall'uso dei dati digitali per garantire il loro corretto trattamento, è altrettanto necessario conoscere le problematiche relative allo sviluppo del software, per garantire un suo uso ed una sua valutazione consapevole.

Il secondo è di dimostrare che il software libero non è di qualità inferiore, e che il suo sviluppo non è caotico. Questi stereotipi negativi nascono dal fatto che il software libero di solito non è sviluppato da società specializzate e non è distribuito a pagamento, e che le libertà fondamentali che rendono il software libero permettono a tutti di modificare il software, e distribuire copie modificate.

## Bilanciamento fra software originale e software già esistente

Il primo passo per sviluppare del software è analizzare il problema da risolvere, e determinare una lista di obiettivi che il software deve raggiungere. Ad esempio, "essere in grado di aprire un'immagine del disco nel formato EWF", "essere in grado di catturare il traffico di rete"&hellip;

Determinati questi obiettivi, si deve valutare se sia effettivamente necessario sviluppare del software *ad-hoc*, oppure se sia possibile ed opportuno usare (ed eventualmente modificare) del software già sviluppato da altri. Nel prendere questa decisione, si deve evitare di cadere in due fallacie.

La prima è la *not invented here syndrome* (sindrome del "non inventato qui"), secondo cui è sempre meglio fare da sé, piuttosto che usare codice scritto da altri. Ad esempio, perché si sarà maggiormente familiari con il proprio codice, sarà più facile modificarlo a proprio piacimento, non ci si deve preoccupare dei *bug* presenti nel codice altrui&hellip;

La seconda è la nozione secondo cui per svolgere operazioni tecniche e scientifiche si possono esclusivamente usare programmi che sono stati espressamente dedicati all'analisi forense fin dalla loro creazione. Questa fallacia può essere considerata un corollario della prima, se si cerca di creare una nuova "versione forense" di un programma già esistente, invece di adattare il programma già esistente ai requisiti dell'informatica forense.

È possibile confutare entrambe queste nozioni.

Il vantaggio principale del codice scritto da altri è che è stato messo alla prova nella pratica, ed è stato soggetto ad un controllo di qualità diffuso. Quanti più utenti usano il software, ognuno con le proprie configurazioni di hardware e software, tanti più *bug* possono essere scoperti e corretti. Quanti più sviluppatori contribuiscono a sviluppare il software, tanto più il codice sarà riorganizzato in maniera che sia leggibile e facilmente comprensibile anche da qualcuno che non è familiare con quel codice.

Viceversa, lo svantaggio principale del codice nuovo scritto *ad hoc* è che non ha ricevuto la stessa attenzione dagli utilizzatori del software, e da altri programmatori:

- Funziona sul proprio sistema, ma potrebbe non funzionare su altri sistemi. Pertanto, non è riproducibile.
- La minore quantità di codice significa anche una minore quantità di *bug*, ma allo stesso tempo, significa anche che c'è meno codice che serve a prevenire o correggere i *bug*. Pertanto, non è affidabile.
- Un gruppo di sviluppatori ristretto e strettamente familiare con il codice avrà un incentivo minore a documentarlo ed riorganizzarlo, perché sanno già come funziona. Pertanto, è difficile da studiare e modificare.

Da un lato, è vero che l'informatica forense ha esigenze particolari e specializzate per quanto riguarda il funzionamento del software, che vanno oltre le aspettative per un programma non specializzato. Il software deve offrire garanzie di correttezza, ripetibilità, riproducibilità dell'analisi, e deve offrire la maggiore quantità possibile di informazioni utili durante il suo funzionamento.

Tuttavia, è anche vero che il funzionamento corretto e prevedibile, e la capacità di fornire informazioni diagnostiche sono caratteristiche utili anche per i programmi non specializzati per l'informatica forense. In ultima analisi, tutti i programmi hanno l'interesse a funzionare correttamente, l'unica differenza è che questo maggiore rigore è la priorità fondamentale dell'informatica forense.

Pertanto, si possono trarre due conclusioni. La prima è l'opportunità di cercare di riutilizzare e modificare il codice già esistente, quando possibile, in modo da elevarlo agli standard più stringenti dell'informatica forense. La seconda è che la distinzione fra software "forense" e "non-forense" deve essere valutata da un punto di vista sostanziale, non formale.

In altre parole, il software che afferma di essere specializzato per l'informatica forense potrebbe essere di scarsa qualità. In particolare, nel caso del software non-libero, potrebbe essere impossibile ispezionare il codice sorgente per verificare il buon funzionamento del programma. Viceversa, il software libero che non è nato per essere utilizzato per scopi forensi può essere modificato e adattato alle esigenze dell'informatica forense.

In ogni caso, quanto detto finora non significa che si deve sempre evitare di sviluppare codice originale, innovativo, ed *ad hoc*, ma solo che "reinventare la ruota" non dovrebbe essere la prima scelta,[^RiscrivereCodiceDaZero] ma dovrebbe essere considerata una scelta eccezionale, da prendere solo in situazioni eccezionali. Ad esempio, perché non esistono altre soluzioni, o perché sarebbe più agevole iniziare da zero piuttosto che cercare di modificare le soluzioni già esistenti. Viceversa, se esistono soluzioni mature e largamente utilizzate, è necessario motivare perché non sia possibile utilizzarle.

[^RiscrivereCodiceDaZero]: Per una discussione sul perché riscrivere del codice partendo da zero è una cattiva idea, \VediUrl{J. Spolsky}{Things You Should Never Do, Part I}{2000}{https://web.archive.org/web/20170104073437/https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/}.

## Architettura del software

Si possono distinguere vari gradi di complessità del software. È bene indicare fin da subito che non tutto il software deve ambire a scalare i vari gradi, e aumentare la sua complessità. I gradi più bassi e meno complessi tendono a coincidere con del software che viene sviluppato per risolvere problemi altamente specifici, mentre i gradi più alti rappresentano software più generico, e adatto a risolvere intere categorie di problemi.

Può capitare che un software nato per risolvere un problema specifico, mediante la collaborazione altrui, cresca fino a diventare un software generico, ma questa evoluzione non è necessaria. È La complessità non è una misura della qualità o utilità del software, ed è sempre preferibile ridurre la complessità di un sistema, piuttosto che aumentarla. La priorità principale è il corretto funzionamento del software, e più un sistema è complesso, e più diventa dispendioso garantire che tutti i componenti funzionano correttamente.

Il primo grado è il *glue code* ("codice-colla"), ossia, del codice che serve a collegare fra loro più programmi indipendenti. Il codice contenuto in questo tipo di programmi è generalmente breve e semplice. Il lavoro effettivo e complesso viene interamente delegato ad altri programmi, il *glue code* serve solo ad indicare la filiera che i dati devono seguire.

Il caso d'uso tipico è per automatizzare operazioni meccaniche, che devono essere ripetute più volte. Invece di scrivere manualmente tutti i comandi, è molto più semplice scrivere del codice che eseguirà i comandi necessari in sequenza.

Il secondo grado è il "software monolitico". In questo caso, non si scrive codice che collega vari programmi, ma si scrive un programma completo ed indipendente. L'aggettivo "monolitico" si riferisce al fatto che il codice responsabile per l'analisi e l'elaborazione dei dati, ed il codice responsabile per la presentazione dei dati non sono separati in maniera netta.

Il caso d'uso tipico è quando la logica per l'elaborazione dei dati è diventata troppo complessa per il *glue code*, che generalmente può compiere solo trasformazioni semplici, ma il programma è comunque abbastanza semplice, e compie una funzione, o poche funzioni, altamente specifiche.

Il terzo grado è il software abbinato ad una libreria. La differenza rispetto al grado precedente è che il codice viene diviso in due parti.

La prima parte è chiamata libreria, e contiene la parte di codice più generica ed astratta, che non risolve un problema specifico, ma offre tutti gli strumenti che possono essere utilizzati per la soluzione di problemi specifici. Si tratta del codice che acquisisce, analizza, e/o trasforma i dati. Il tratto caratteristico della libreria è che non può essere utilizzata direttamente, ma deve essere richiamata da un programma.

La seconda parte è il software che può essere direttamente eseguito. Questo codice ha la natura di *glue code*, ma invece di collegare vari programmi, collega le funzioni già definite nella libreria per risolvere un problema concreto, e presentare i dati in maniera utile.

Il caso d'uso tipico di questo modello è quando un programma inizialmente nato per risolvere un singolo problema nel tempo si è arricchito di funzionalità, è diventato sempre più complesso, e per ragioni di organizzazione del codice, è più semplice dividere le parti che elaborano i dati, specie se possono essere riutilizzate da altri programmi, dalle parti che presentano i dati.

La divisione fra programma e libreria presenta due vantaggi. Il primo è la possibilità di riutilizzare la libreria in altri programmi, in modo da beneficiare del lavoro già svolto da altri. Il secondo è la facilità con cui è possibile modificare le parti di codice che gestiscono il flusso dei dati fra i vari componenti della libreria, e la presentazione finale dei dati, in modo da poter adeguare il codice per risolvere un problema specifico.

L'ultimo grado di complessità è dato dal *framework* ("intelaiatura"). Un *framework* raccoglie più librerie, combina le loro funzionalità, e offre ai programmatori un'interfaccia unificata per utilizzarle. I *frameworks* possono essere visti come delle "grandi librerie", che offrono funzionalità astratte. Il compito di chi scrive il *framework* è di implementare correttamente le funzioni più complesse e delicate, in modo che chi lo utilizza per risolvere un problema concreto debba scrivere la minore quantità di codice possibile.

Data la loro complessità, esistono pochi *frameworks*. Questo è un vantaggio, perché gli sforzi della comunità di sviluppatori si può concentrare solo su uno (o pochi) progetti, e qualsiasi miglioramento al *framework* si riflette immediatamente su tutto il software che lo utilizza.

## Scelta di una licenza libera

Il primo passo per lo sviluppo del software ad uso scientifico è di scegliere una licenza per il software. Come anticipato, la licenza ideale è la GNU GPL, per due motivi:

- La GPL impone la distribuzione del codice sorgente. Senza il codice sorgente, è impossibile continuare a sviluppare il programma, o studiare il suo esatto funzionamento.
- La GPL impone che se del codice entra a "stretto contatto" con del codice GPL, nel senso che se del codice non può essere utilizzato in maniera indipendente dal codice GPL, ma devono necessariamente essere usati insieme, allora quel codice deve usare a sua volta la licenza GPL.

È opportuno usare la GPL anche per le librerie a supporto del software. Come visto nel caso di *readline*, questo limita 
Una libreria consiste di codice sorgente o macchina che ha una natura generica ed astratta. Il nome stesso suggerisce una metafora. Una libreria contiene informazioni che hanno natura puramente teorica. È necessario che i libri siano letti, ed il loro contenuto sia messo in pratica, affinché queste informazioni abbiano un'utilità concreta.

Il software in senso stretto consiste sempre di codice, sorgente o macchina. La differenza è che ha una funzione specifica e concreta, e fa riferimento alle funzionalità contenute nelle librerie per realizzare un risultato utile.

Le specificazioni tecniche dei linguaggi di programmazione, oltre a definire la sintassi del linguaggio, il suo funzionamento&hellip; spesso includono anche la specificazione di una *standard library* (libreria standard), una libreria di base che contiene le funzionalità più importanti.

V. <https://www.gnu.org/licenses/license-recommendations.html>

## Scelta del linguaggio di programmazione

### Linguaggi di programmazione

- casi d'uso previsti dal linguaggo, o nicchia in cui il linguaggio è stato adottato
- Ad es., Bash per lo shell scripting, Lua, Python
- idealmente, si deve tendere verso un linguaggio che si avvicina al "pozzo del successo" <https://blog.codinghorror.com/falling-into-the-pit-of-success/>

### Fattori sociali

- popolarità del linguaggio, più programmatori e librerie
- manutenibilità nel tempo del linguaggio: ad es. C
- complessità cognitiva del linguaggio: ad es. Perl

### Fattori tecnici

- sistema dei tipi
- gestione della memoria
- valori immutabili ("const" e binding in JS)
- gestione degli errori
- velocità di esecuzione

## Sistemi di controllo di versione

- distribuzione del codice
- controllo di integrità
- estrazione di versioni particolari
- possibilità di sperimentare con più funzionalità

## Documentazione del codice

- diataxis.fr
- non serve sapere come funziona un computer per poterlo utilizzare, ma cfr. Unix, con pagine del manuale scritte come bug report, UNIX haters handbook, 53 ss., "collect bug reports"), mancata documentazione del codice per proteggere i segreti industriali?

### README

- Equivalente ad un abstract

### Commenti

- Spiegano perché quel codice esiste, non cosa fa
- Se spiegano cosa fa

### Manuale di riferimento

- approccio teorico, spiega il perché
- utile per i programmatori, indica a cosa serve ogni componente

#### Architettura in generale

- sguardo d'insieme, spiega l'obiettivo da raggiungere, e come i vari componenti interagiscono fra di loro

#### Singoli componenti

- analisi più dettagliata dei singoil componenti, e come operano sui dati

### Manuale per l'utilizzatore

- approccio pratico, spiega il come
- utile per gli utilizzatori finali, spiega come usare concretamente il software per raggiungere quell'obiettivo
- deve indicare le limitazioni tecniche del programma

#### Installazione

- passi da seguire per compilare ed eseguire il software: programmi e librerie necessarie, ecc.

#### Uso delle funzionalità

- passi da seguire per usare una certa funzionalità
- spiegazione di cosa serve, esempi con le opzioni più importanti
- spiegazione dettagliata con tutte le opzioni disponbili

## Contribuzioni da parte di terzi

- organizzazione del progetto
- si applica specie ai progetti più importanti, o con molti contributori
- definizione di responsabilità
- CLA
- controllo del codice
- caso di contribuzioni in mala fede

## Uso di codice di terze parti

### Vantaggi

### Dependency hell

### Supply chain attacks

### Vendoring

## Gestione degli errori di runtime

- Errore di runtime:
    - Problemi che si verificano solo quando il codice viene eseguito
    - Problema dell'*happy path*, di imprevisti, dell'errore umano, di attacchi voluti
    - Filosofie del look before you leap e easier to ask for forgiveness
    - Look before you leap è migliore da un punto di vista scientifico
- Errori in-band:
    - Valori-guardia
- Errori come eccezioni:
    - Praticamente un goto, Dijkstra
- Errori out-of-band:
    - Controllo automatico degli errori, possibilità di analisi statica

## Analisi del codice
### Type-checking

- Problemi che possono essere individuati guardando solo il codice

### Linting

- Linters

### Testing

- funzioni testabili
- evitare regressioni
- integration testing

### Fuzzing

- garantire che il programma funziona in maniera prevedibile anche con input corrotti
- evitare situazioni in cui il software 

## Build riproducibili
## Sostenibilità economica del software libero

- Privati che distribuiscono codice libero, o che rendono parte del loro codice libero
- Sostenibilità economica
