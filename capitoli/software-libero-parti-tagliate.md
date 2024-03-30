Il massimo grado di trasparenza e approfondimento nel contraddittorio viene raggiunto quando è possibile esaminare non solo il software in sé, ma anche come è stato sviluppato. Si distingue fra "codice macchina", le istruzioni che sono in un formato che può essere direttamente eseguito dal computer, e "codice sorgente", istruzioni in un formato che può essere convertito in codice macchina, ma è più facile da usare per i programmatori.

----

Se il codice sorgente viene fornito, ma si vieta la possibilità di modificarlo o ridistribuirlo, e in generale, se l'unica facoltà concessa è la possibilità di visionarlo, allora si parla di software non-libero, ma *source-available* (con codice sorgente disponibile). Ad esempio, il codice sorgente per il programma di backup *Tarsnap* è pubblicamente disponibile [@Github-Tarsnap], ed è possibile scaricare e compilare il codice sorgente, ma non è possibile compilare una versione modificata del software.[^TarsnapVersioneModificata]

[^TarsnapVersioneModificata]: \VediUrl{Tarsnap.com}{Tarsnap Terms and Conditions}{n.d.}{https://www.tarsnap.com/legal.html}. Il motivo per cui le modifiche non sono permesse è per garantire che il servizio costi il meno possibile. \VediUrl{Tarsnap.com}{Whys of Tarsnap Terms and Conditions}{n.d.}{https://www.tarsnap.com/legal-why.html\#UNMODIFIEDCLIENT}.

----

TODO: inserire in possibilità di copiare il software libero

La trasparenza è l'esigenza scientifica più importante. Gli "studi" e le "basi fattuali" su cui sono condotti devono essere liberamente consultabili. Se fossero mantenuti segreti, la "comunità scientifica" non potrebbe valutare il lavoro che è stato svolto, la peer-review sarebbe impossibile.

La peer-review può essere vista come l'equivalente scientifico del contraddittorio processuale, dato che la metodologia è la stessa. Le varie parti che vi partecipano cercano di "falsificare" (nel senso scientifico di dimostrare l'infondatezza) la teoria oggetto di analisi, per valutare la sua robustezza. Tuttavia, si devono notare alcune differenze fondamentali:

- Per quanto riguarda l'intento che muove le critiche dei soggetti, le parti processuali sono parziali, sono interessate ad una ricostruzione della verità processuale a loro favorevole. Viceversa, gli scienziati devono essere sempre imparziali, perché il loro obiettivo è raggiungere la verità oggettiva.
- Il contraddittorio nel processo è "chiuso", è limitato alle parti processuali. La peer-review deve essere sempre "aperta" al pubblico, in modo che chiunque abbia le capacità tecniche necessarie possa partecipare alla discussione.

Nell'ambito dell'informatica forense, laddove gli "studi" e le "basi fattuali" consistono di dati informatici, si ha la possibilità di duplicarli e ridistribuirli con facilità. In particolare, salvo sia assolutamente necessario usare hardware specializzato,[^NecessitàHardwareSpecializzato] tutti gli studi sono ripetibili. Il massimo grado di trasparenza viene raggiunto quando tutti gli elementi usati ai fini dello studio, incluso anche il software sviluppato *ad hoc* dai ricercatori, vengono resi liberamente disponibili al pubblico. Laddove non sia possibile ridistribuire un elemento, è necessario identificarlo nella maniera più precisa possibile, ed indicare come ottenerlo.  

[^NecessitàHardwareSpecializzato]: Ad esempio, esistono componenti hardware specializzati per operazioni come il calcolo di hash, la compressione o decompressione dei video, l'uso di intelligenze artificiali&hellip; tuttavia, non è necessario usarli, è possibile eseguire le stesse operazioni su un normale processore, ed ottenere gli stessi risultati. L'unica differenza sarà l'efficienza, in termini di tempo ed energia consumata.

Dopo che lo studio e le sue basi fattuali sono state pubblicate, è possibile svolgere la peer-review. Il grado minimo di peer-review è valutare lo studio da un punto di vista puramente formale, considerando elementi come gli strumenti usati, la metodologia seguita, la quantità e qualità della motivazione, la coerenza logica fra l'oggetto dello studio, la motivazione e le conclusioni&hellip;

Il grado massimo invece richiede la ripetizione delle operazioni descritte nello studio, e la verifica della riproducibilità dei risultati. La *replication crisis* è la situazione per cui numerosi studi scientifici sono difficili o impossibili da riprodurre. L'informatica presenta delle caratteristiche particolari, che permettono di mitigare il problema:

- Come già visto, l'oggetto di studio dell'informatica, i dati informatici, possono essere copiati con facilità un numero illimitato di volte.
- È possibile copiare tutto l'ambiente virtuale (sistema operativo, programmi, dati) usato per eseguire lo studio su un altro dispositivo, salvo limitazioni dovute al diritto d'autore, o altre limitazioni tecniche.[^CopiaAmbienteStudioLimitazioniTecniche].
- Dato che l'informatica studia il trattamento automatico dei dati, è possibile automatizzare le modalità con cui lo studio viene ripetuto mediante *script* ("copioni"), ed i risultati vengono verificati mediante *tests* (controlli).[^DefinizioneScriptTests]

[^CopiaAmbienteStudioLimitazioniTecniche]: Ad esempio, le licenze digitali per l'uso di Windows 10 e 11 sono legate all'hardware contenuto nel proprio computer. Se l'hardware cambia in maniera significativa (ed è il caso in cui il sistema operativo viene copiato, per poi essere eseguito su un'altra macchina, per verificare la esatta riproducibilità dello studio), sarà necessario attivare di nuovo il sistema operativo, inserendo la licenza. \VediUrl{Microsoft}{Reactivating Windows after a hardware change}{2023}{https://support.microsoft.com/en-us/windows/reactivating-windows-after-a-hardware-change-2c0e962a-f04c-145b-6ead-fb3fc72b6665}.
[^DefinizioneScriptTests]: Uno *script* è una serie di istruzioni scritte in un linguaggio di programmazione di alto livello, ossia, un linguaggio più facile da usare, che nasconde al programmatore i dettagli di basso livello come la gestione manuale della memoria. Gli *scripting languages* (linguaggi per scrivere script) spesso rientrano nella categoria dei *glue languages*, linguaggi che sono usati per scrivere programmi che "tengono incollati", o fanno funzionare insieme, i vari componenti di un sistema. Un *test* è una serie di istruzioni che verifica la presenza di determinate condizioni. Gli unici risultati possibili sono *pass* (la verifica è stata superata), o *fail* (alcune delle condizioni non sono state soddisfatte).

Naturalmente, nell'ultimo punto è sempre necessario un controllo umano. È importante ispezionare i contenuti dello *script* che esegue le operazioni, per verificare che le operazioni necessarie siano effettivamente eseguite (ed il programma non restituisca risultati fittizi), ed i *test* siano adeguati per verificare il corretto funzionamento (devono essere sufficientemente specifici, e controllare che il programma faccia esattamente quanto ci si aspetta, senza falsi positivi o falsi negativi).

L'uso di script presenta vari vantaggi:

- Permette di automatizzare le faccende informatiche più ripetitive e meccaniche. Ad esempio, convertire i file in un determinato formato, preimpostare un programma, eliminare i file temporanei o intermedi generati dai programmi, ripristinare lo stato iniziale dell'ambiente di analisi&hellip;
- L'operazione ripetitiva più importante è l'esecuzione di *test*. Invece di dover eseguire un comando, e controllare manualmente il risultato, è molto più efficiente specificare al computer gli esatti risultati desiderati, e per sicurezza, anche quelli indesiderati. È anche possibile configurare il programma che esegue i test in modo che generi un resoconto contenente i test che sono stati eseguiti, e per i test che non sono stati superati, la differenza tra il risultato che ci si aspettava, ed il risultato che è stato rilevato.
- Infine, l'ultimo vantaggio è che dato che lo script deve eseguire il programma, funziona anche come una forma di documentazione estremamente pratica su come usare il programma. La sua utilità va oltre la stretta riproduzione dello studio, ed entra anche nell'uso concreto del programma.

Idealmente, la peer-review deve essere solo aperta a tutti coloro che hanno le qualifiche tecniche per apportare contributi utili, ma deve svolgersi anche in maniera trasparente, in modo che il pubblico in generale possa prendere visione della discussione.

Nel caso in cui lo studio scientifico preveda, ispiri o influenzi lo sviluppo di un software che implementa i risultati dello studio, è estremamente opportuno che anche lo sviluppo di quel software sia soggetto ad una processo analogo alla "peer-review", aperto e trasparente, con i dovuti adattamenti per il software.

In questo modo, si garantisce che l'informatica forense, il software sviluppato sulla base della ricerca scientifica, ed il processo siano tutti accomunati dal principio del "contraddittorio",[^ContraddittorioSensoLato] del confronto fra vari punti di vista, e della loro sintesi, per arrivare ad un risultato finale che sia il più ponderato possibile.

[^ContraddittorioSensoLato]: Il principio del contraddittorio qui va inteso in senso lato e generico, e non nel senso tecnico e specifico che assume all'interno del processo penale.

