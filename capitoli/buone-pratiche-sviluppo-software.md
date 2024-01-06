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

Specularmente, lo svantaggio principale del codice nuovo è che è sviluppato ed utilizzato da un pubblico molto più ridotto, nel caso peggiore solo un singolo sviluppatore. La maggiore semplicità del codice è sicuramente un vantaggio, perché meno codice significa anche meno *bug*, ma allo stesso tempo, è anche uno svantaggio, perché meno codice significa anche meno codice che serve a prevenire, gestire o correggere i *bug*. Inoltre, un gruppo di sviluppatori ristretto e strettamente familiare con il codice avrà un incentivo minore a documentarlo ed organizzarlo, perché sanno già come funziona.

Per quanto riguarda la qualifica di "software per l'informatica forense", si deve valutare il software dal punto di vista sostanziale, non formale.

----

- quantità di bug per linea
- svantaggi di fare un rewrite del software

- software "forense" a pagamento potrebbe essere di scarsa qualità
- software non-forense ma libero può essere facilmente adattato alle esigenze dell'informatica forense

In ogni caso, le due modalità non si escludono a vicenda, in ultima analisi si dipende sempre da software scritto da terze parti.

- firmware, sistema operativo, librerie standard sono componenti scritti da terzi

Questo punto sarà approfondito nel capitolo successivo, ma è opportuno anticipare che anche il sistema operativo è un software (meglio, una collezione di software), ed esistono sistemi operativi composti interamente, o quasi interamente[^SistemiOperativiQuasiInteramenteLiberi] di software libero. Dati i vantaggi del software libero è opportuno valutare la possibilità di usare questi sistemi operativi, e scegliere sistemi operativi non-liberi solo se strettamente necessario.

[^SistemiOperativiQuasiInteramenteLiberi]: In alcuni casi, è necessario includere software non-libero per far funzionare alcuni componenti hardware, come la connessione Wi-Fi, o la scheda video. Ad esempio, il programma per installare la distribuzione GNU/Linux Debian tradizionalmente non includeva questo tipo di software, perché per motivi ideologici, voleva rimanere un sistema composto interamente da software libero. Debian permetteva l'installazione di questo software, ma doveva essere un processo manuale, in modo che l'utente fosse consapevole che il sistema contiene componenti non-liberi. Tuttavia, a partire da Debian 12 (rilasciata nel 2023), a seguito di una discussione nel progetto, il programma per l'installazione è stato modificato, in modo da includere anche i componenti non-liberi. \VediUrl{Autori di Debian Wiki}{Firmware}{2023}{https://web.archive.org/web/20230720195706/https://wiki.debian.org/Firmware}.

## Architettura del software

- diversi gradi di complessità del software
- non tutto il software deve arrivare al massimo grado

- glue code
- software monolitico
- software più libreria
- framework

<!-- note -->

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
