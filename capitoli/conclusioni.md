# Conclusioni {-}

<!-- cap. 1 -->

La definizione ideale dell'informatica forense deve evidenziare che il trattamento dei dati informatici è finalizzato al loro uso all'interno di un processo, e deve essere formulata in modo che l'informatica forense trovi la massima applicazione possibile. 

L'informatica forense si è sviluppata all'interno del diritto penale. Con il riconoscimento di reati dove il bene giuridico protetto sono i dati informatici in sé, diventava necessario sviluppare una disciplina che fosse in grado di ricostruire i fatti relativi ai dati informatici, e riformare il codice di procedura, che invece era stato pensato per fatti relativi al mondo materiale.

In Italia esiste una preferenza per le prove precostituite, che è particolarmente pericolosa per le prove informatiche, perché ostacola la loro acquisizione e valutazione all'interno del contraddittorio. 

L'informatica forense incontra delle difficoltà importanti, perché il suo oggetto di studio è oscuro (non è sempre facile studiare i programmi, protocolli, formati, ecc.), instabile (la materia è in continua evoluzione) e fragile (i dati digitali possono essere modificati con facilità, senza lasciare tracce).

Tuttavia, piuttosto che considerare lo studio dei dati informatici una causa persa in partenza, è possibile usare quelle caratteristiche come un buon motivo per seguire un approccio scientifico e rigoroso nello studio dell'informatica forense.

Se l'uso dei dati informatici a fini probatori richiede l'uso di conoscenze scientifiche, allora è preferibile usare la perizia sia per acquisire, sia per valutare i dati informatici. I vantaggi sono che il trattamento dei dati informatici viene eseguito da persone con conoscenze specifiche fin dall'inizio, e quindi c'è un minore rischio di danneggiare i dati, e se partecipano anche i consulenti tecnici, tutte le operazioni si possono svolgere in contraddittorio.

----

<!-- cap. 2 -->

&hellip;

----

<!-- cap. 3 -->

Il terzo capitolo si concentra sugli aspetti più tecnici e pratici dello sviluppo del software libero, andando ad individuare elementi concreti che possono essere usati per argomentare a favore del suo uso e della sua affidabilità.

L'accesso al codice sorgente, che viene garantito dalle licenze libere, ha numerosi vantaggi, perché permette di esaminare:

- Come i programmatori hanno cercato di risolvere i problemi creati dalle caratteristiche sfavorevoli del linguaggio di programmazione usato;
- La documentazione relativa al codice stesso, e quindi di sapere come il programma funziona;
- Se e come il codice di terze parti è stato integrato all'interno del software;
- L'uso di strumenti automatizzati che permettono di analizzare e correggere problemi nel codice;
- L'uso di *test* per garantire che il programma continua a funzionare correttamente, anche a seguito di modifiche del codice.

Nel caso di programmi proprietari, tutti questi elementi generalmente non vengono condivisi con il pubblico, perché sono strettamente legati allo sviluppo del software, e pertanto non possono essere nemmeno valutati dai tecnici.

L'uso di tecniche come la *containerization* e le *reproducible builds* permettono di garantire che il software funzioni sempre allo stesso modo, e sono utili per garantire la ripetibilità e riproducibilità delle analisi.

Il capitolo si conclude con le buone pratiche riguardo le modalità di sviluppo del software.
 
Gli elementi fondamentali sono la definizione della funzione del programma, le linee-guida per la sua progettazione, e la scelta di una licenza libera.

L'uso di un sistema di controllo di versione è utile sia per gli sviluppatori (perché permette di sviluppare il software ed integrare le contribuzioni di terzi in maniera ordinata), sia per gli utilizzatori finali (perché permette di ottenere facilmente copie del software, di verificare l'integrità della propria copia, di estrarre una versione specifica del programma in qualsiasi momento, e di valutare le differenze fra versioni).

Lo sviluppo del software libero deve essere ispirato alla massima trasparenza, e alla pubblicazione non solo del codice del programma, ma anche di qualsiasi altro elemento ad esso collegato.

Per quanto riguarda le contribuzioni di terze parti al codice libero, è importante definire un processo per la loro accettazione, che a sua volta deve essere trasparente.

----

<!-- cap. 4 -->

Il quarto capitolo indica alcuni esempi di software libero che sono già in uso.

Si enfatizza l'importanza di usare anche un sistema operativo libero, in modo da ridurre al minimo il numero di "scatole nere" di cui non si può conoscere o studiare il funzionamento in maniera agevole all'interno del processo di analisi. Esistono sistemi operativi liberi specializzati per l'informatica forense.

I sistemi operativi liberi generalmente permettono di installare il software da un archivio centralizzato, e gestito dagli stessi sviluppatori del sistema.

I problemi più importanti con l'installazione del software sono la tensione fra avere la versione più aggiornata del software e avere un sistema facilmente riproducibile, e la fiducia che si deve riporre in chi gestisce l'archivio. Per questi motivi, è preferibile usare un sistema operativo libero specializzato, che contiene software preinstallato.

Per quanto riguarda l'acquisizione dei dati, esiste un numero ristretto di programmi generalmente maturi, e usati da tempo. FIT rappresenta un'eccezione parziale, perché è un programma recente, ma che fa largo uso di software di terze parti largamente maturo.

Per quanto riguarda la conservazione dei dati, esistono programmi che permettono di garantire la corretta conservazione e duplicazione dei dati. Le caratteristiche dello strumento di controllo della versione *Git* permettono di utilizzarlo anche per la redazione della catena di custodia.

Infine, per quanto riguarda l'analisi dei dati, si può scegliere fra due approcci. Il primo è di usare uno strumento di analisi integrata come Autopsy, che offre un'interfaccia grafica, ed è paragonabile in termini di funzionalità anche al software proprietario.

Il secondo è di usare strumenti di analisi separati e specializzati, e di combinare le loro funzionalità mediante un file che contiene le istruzioni da eseguire. Questo approccio è più complesso, ma è anche più flessibile e maggiormente riproducibile.

Le macchine virtuali non sono uno strumento di analisi in sé, ma sono estremamente utili per l'informatica forense, perché permettono di studiare il funzionamento di un sistema, di creare ambienti di analisi riproducibili, e di svolgere esperimenti giudiziali.

----

In conclusione, si può affermare che il software libero è il modello che risponde meglio alle esigenze dell'informatica forense. I problemi che limitano la sua adozione non sono problemi tecnici. Anche laddove abbia meno funzionalità del software proprietario, è sempre possibile migliorarlo, ed in ogni caso, è sempre possibile studiare e spiegare l'esatto funzionamento delle funzionalità già presenti.

Piuttosto, il vero ostacolo alla sua adozione sono dei problemi sociali. I tecnici non usano il software libero perché non sono al corrente della sua esistenza (gli sviluppatori del software libero generalmente non hanno le capacità economiche per pubblicizzarlo), o per sfiducia (i tecnici ritengono che il software libero non sia sufficientemente sofisticato, o non si fidano del modello di sviluppo aperto), o per pura inerzia (sono abituati ad un certo programma, e non vogliono imparare ad usarne un altro).

In primo luogo, è necessario sensibilizzare i giuristi per quanto riguarda le esigenze relative al trattamento dei dati informatici, e come il software libero si allinea alle esigenze processuali, in modo che possano fare pressione sui tecnici affinché usino strumenti di analisi liberi.

In seguito, è necessario sensibilizzare i tecnici per quanto riguarda i principi relativi alla prova nel processo, tra cui l'importanza del diritto alla difesa, e di un contraddittorio tecnico approfondito, che presuppongono la possibilità di sapere esattamente come funziona il software con cui si ricostruiscono i fatti.

In generale, è importante continuare a rendere il software libero più accessibile e facile da usare, in modo da incentivare la sua adozione, e re-implementare il software proprietario già esistente, come è successo con FIT e FAW.

Infine, sarebbe utile menzionare l'uso del software libero nel codice di procedura, almeno negli istituti che riguardano l'acquisizione dei dati informatici. Ad esempio, quando si parla del sequestro di dati informatici, e si richiede l'uso di una "procedura che assicuri la conformità dei dati acquisiti a quelli originali" (art. 254-*bis* c.p.p.) si potrebbe inserire un'espressione come "laddove possibile, con l'uso di software a sorgente aperto".
