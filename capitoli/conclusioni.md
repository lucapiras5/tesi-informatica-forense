# Conclusioni {-}

<!-- cap. 1 -->

La definizione ideale dell'informatica forense deve evidenziare che il trattamento dei dati informatici è finalizzato al loro uso all'interno di un processo, e deve essere formulata in modo che l'informatica forense trovi la massima applicazione possibile. 

L'informatica forense si è sviluppata all'interno del diritto processuale penale. Con l'introduzione di reati dove il bene giuridico protetto sono i dati informatici in sé, diventava necessario sviluppare una disciplina che fosse in grado di ricostruire i fatti relativi ai dati informatici, e riformare il codice di procedura, che invece era stato pensato per fatti relativi al mondo materiale.

In Italia esiste una preferenza per le prove precostituite, che è particolarmente pericolosa per le prove informatiche, perché ostacola la loro acquisizione e valutazione all'interno del contraddittorio. 

L'informatica forense incontra delle difficoltà importanti, perché il suo oggetto di studio è oscuro (non è sempre facile studiare i programmi, protocolli, formati, ecc.), instabile (la materia è in continua evoluzione) e fragile (i dati digitali possono essere modificati con facilità, senza lasciare tracce).

Tuttavia, piuttosto che considerare lo studio dei dati informatici una causa persa in partenza, è possibile usare quelle caratteristiche come un buon motivo per seguire un approccio scientifico e rigoroso nello studio dell'informatica forense.

Se l'uso dei dati informatici a fini probatori richiede l'uso di conoscenze scientifiche, allora è preferibile usare la perizia sia per acquisire, sia per valutare i dati informatici. I vantaggi sono che il trattamento dei dati informatici viene eseguito da persone con conoscenze specifiche fin dall'inizio, e quindi c'è un minore rischio di danneggiare i dati, e se partecipano anche i consulenti tecnici, tutte le operazioni si possono svolgere in contraddittorio.

<!-- cap. 2 -->

Il secondo capitolo dimostra come l'informatica forense è una disciplina che si presta ad essere regolata da più fonti. La struttura della prima parte del capitolo segue le fasi del trattamento della prova secondo gli standard ISO, ma il contenuto dei singoli capitoli richiama le norme contenute nel codice di procedure penale. Si è fatto riferimento ad un codice di procedura penale colombiano per analizzare una possibile disciplina della catena di custodia. Quanto richiesto dalla legge viene reinterpretato in base a quanto è possible fare con l'informatica.

La conclusione della prima parte è che esiste uno stretto legame fra la scienza, il processo, ed il software. Dato che la scienza ed il processo sono ispirati da principi simili (*peer-review* e contraddittorio, motivazione degli atti e verificabilità degli esperimenti, limitazione del segreti e pubblicazione dei risultati) è opportuno che principi analoghi si applichino anche al software che viene usato dagli esperti all'interno del processo.

Questo obiettivo è pienamente raggiunto con l'uso del software libero. In particolare, l'accesso al codice sorgente è necessario per soddisfare tutti e tre i principi, e la licenza GPL serve proprio a garantire non solo che il software già libero rimanga tale, ma anche che si diffonda, a causa della interpretazione data da Stallman per quanto riguarda l'uso di componenti GPL all'interno di altri programmi.

Ancora, si dimostra che in generale, è preferibile usare il software libero, al posto del software proprietario, e che in alcuni casi l'apparente superiorità del software proprietario in realtà porta a costi e svantaggi nascosti. L'unico caso in cui è impossible usare il software libero è per lo sviluppo di captatori, per il solo fatto che la loro modalità di funzionamento deve rimanere nascosta. Ma il fatto che sia impossible conoscere il funzionamento del captatore aggiunge ulteriori dubbi sulla sua utilità come mezzo di prova.

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

Per quanto riguarda le contribuzioni di terze parti al codice libero, è importante definire un processo per la loro accettazione, che a sua volta deve essere trasparente. La recente *backdoor* trovata all'interno di *xz* non dimostra che il modello di sviluppo aperto a terzi è intrinsecamente inaffidabile, ma piuttosto, l'importanza di prendere precauzioni per evitare questo tipo di situazioni, e come è molto più semplice individuare, studiare e correggere i difetti nel software quando chiunque può ottenere una copia del codice sorgente del programma con facilità.

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

<!-- conclusione -->

In conclusione, si può affermare che il software libero è il modello che risponde meglio alle esigenze dell'informatica forense. I problemi che limitano la sua adozione non sono problemi tecnici. Anche laddove abbia meno funzionalità del software proprietario è sempre possibile migliorarlo, ed in ogni caso è sempre possibile studiare e spiegare l'esatto funzionamento delle funzionalità già presenti.

Piuttosto, il vero ostacolo alla sua adozione sono dei problemi sociali. I tecnici non usano il software libero perché non sono al corrente della sua esistenza (gli sviluppatori del software libero generalmente non hanno le capacità economiche per pubblicizzarlo), per sfiducia (i tecnici ritengono che il software libero non sia sufficientemente sofisticato, o non si fidano del modello di sviluppo aperto) o per pura inerzia (sono abituati ad un certo programma, e non hanno un incentivo sufficiente per imparare ad usarne un altro).

In primo luogo, è necessario sensibilizzare i giuristi per quanto riguarda le esigenze relative al trattamento dei dati informatici, e come il software libero si allinea alle esigenze processuali, in modo che possano fare pressione sui tecnici affinché usino strumenti di analisi liberi.

In seguito, è necessario sensibilizzare i tecnici per quanto riguarda i principi relativi alla prova nel processo, tra cui l'importanza del diritto alla difesa, e di un contraddittorio tecnico approfondito, che presuppongono la possibilità di sapere esattamente come funziona il software con cui si ricostruiscono i fatti.

In generale, è importante continuare a rendere il software libero più accessibile e facile da usare, in modo da incentivare la sua adozione, e re-implementare il software proprietario già esistente, come è successo con FIT^[V. nota \ref{fit} a p. \pageref{fit}.] e FAW.

Infine, sarebbe utile menzionare l'uso del software libero nel codice di procedura, almeno negli istituti che riguardano l'acquisizione dei dati informatici. Ad esempio, quando si parla del sequestro di dati informatici, e si richiede l'uso di una "procedura che assicuri la conformità dei dati acquisiti a quelli originali" (art. 254-*bis* c.p.p.) si potrebbe inserire un'espressione come "laddove possibile, con l'uso di software con codice sorgente aperto".[^UlterioriProposte]

[^UlterioriProposte]: Volendo, si potrebbe richiedere anche "la consegna di una copia del programma informatico o sistema operativo usato durante l'acquisizione", "l'uso di tecniche per verificare la riproducibilità della compilazione" (le *reproducible builds*, per dimostrare che il programma non è stato alterato prima dell'acquisizione), aggiungere una sanzione processuale di inutilizzabilità per le prove informatiche non acquisite con l'uso di programmi informatici con codice sorgente aperto, ecc.

Purtroppo, il recente DDL sul sequestro di dati digitali che propone l'introduzione dell'art. 254-*ter* c.p.p.[^DDLSequestroDatiDigitali] non affronta il problema. Si continuano ad usare formule generiche[^FormuleGenericheDDL] che non menzionano in maniera specifica la necessità di usare il software libero per l'acquisizione.

La volontà del legislatore di applicare il principio di proporzionalità all'interno del sequestro[^DDLSelezione] e l'introduzione di una sanzione di inutilizzabilità espressa (art. 1 co. 7) vanno lodate, ma si deve criticare la formulazione dei casi in cui si applica la disciplina[^DDLOggettiSequestrabili] e l'espresso sfavore per la perizia nella procedura.[^DDLAccertamentoIrripetibile]

[^DDLSelezione]: Si prevede che le operazione di selezione dei dati siano svolte in contraddittorio con gli interessati (co. 2).
[^DDLOggettiSequestrabili]: Nell'art. 1 co. 1 si menzionano "dispositivi e sistemi informatici", "smartphone", e "memorie digitali". Sarebbe stato sufficiente fermarsi alla prima espressione, dato che gli "smartphone" e le "memorie digitali" (si presuppone che si faccia riferimento ai supporti materiali che contengono dati digitali) rientrano già in quelle categorie.
[^DDLAccertamentoIrripetibile]: Nell'art. 1 co. 3 si prevede che le operazioni di selezione debbano essere svolte ai sensi dell'art. 360 c.p.p. ("Accertamenti tecnici non ripetibili"). La categorizzazione è corretta (l'acquisizione di un dispositivo comporta sempre il rischio di modificarlo), ma non si comprende perché il legislatore precluda categoricamente all'indagato la possibilità di richiedere una perizia. Sacrificare il diritto alla difesa per garantire che la procedura di sequestro si concluda in tempi rapidi è irragionevole e mette anche a rischio l'integrità dei dati.
[^FormuleGenericheDDL]: Come "mediante una procedura che assicuri la conformità della copia all'originale e la sua immodificabilità" (art. 1 co. 2), e "con procedure che assicurino la conformità della copia ai dati fonte e l'immodificabilità della medesima" (art. 1 co. 6).
[^DDLSequestroDatiDigitali]: Disegno di legge d'iniziativa dei senatori Zanettin e Bongiorno, comunicato alla presidenza il 19 luglio 2023, "Modifiche al codice di procedura penale in materia di sequestro di dispositivi e sistemi informatici, smartphone e memorie digitali", v. <https://web.archive.org/web/20230725110052/https://www.giurisprudenzapenale.com/wp-content/uploads/2023/07/ddl-806__427387.pdf>.

