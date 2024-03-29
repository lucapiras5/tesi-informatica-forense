### Presentazione e contraddittorio

- definizione, 27
- obiettivo, 68
- rapporto peer-review e contraddittorio, 69--70
- richiamo a scientificità informatica, 70--73

La presentazione è la fase finale del trattamento dei dati informatici, in cui le valutazioni svolte dal personale tecnico vengono concretamente acquisite all'interno del dibattimento.^[Il perito e gli eventuali consulenti tecnici vengono inseriti nelle liste testimoniali (art. 468 c.p.p.), ed in ogni caso, il giudice acquisisce la relazione finale del perito (art. 227 c.p.p.) e le memorie scritte dai consulenti tecnici (art. 233 co. 1 c.p.p.).]
Il perito ed i consulenti devono indicare le conoscenze scientifiche e tecniche su cui si è fondata la loro analisi e valutazione, quali strumenti di analisi hanno usato, e a quali conclusioni sono giunti [@Ferrazzano2014, pp. 41--42].

In questa fase non si usa il software, ma piuttosto, si discutono le sue caratteristiche e la sua adeguatezza per il trattamento dei dati informatici.^[Tutti gli elementi che sono stati menzionati nei momenti precedenti diventano oggetto di discussione in questa fase, e l'obiettivo del perito e dei consulenti è di argomentare l'utilità e l'affidabilità del proprio strumento di analisi, e di criticare e rispondere alle critiche degli altri soggetti.]

----

Il software scientifico presenta anche delle esigenze di natura scientifica, nel senso che sono legate alle modalità con cui la ricerca scientifica viene svolta. In verità, tutte le esigenze scientifiche tendono ad essere indirettamente anche delle esigenze processuali. La sentenza della corte suprema americana *Daubert v. Merrel Dow Pharmaceuticals* specificò i criteri da utilizzare per poter introdurre la scienza nel processo. Questi criteri furono accolti dalla Casszione per la prima volta nel 2010 nella sentenza Cozzini,[^SentenzaCozzini] ma continuano ad essere richiamati anche di recente:

[^SentenzaCozzini]: Cass. pen., n. 43786/2010.

> Per valutare l'attendibilità di una teoria occorre esaminare gli studi che la sorreggono. Le basi fattuali sui quali essi sono condotti. [L]'ampiezza, la rigorosità, l'oggettività della ricerca. Il grado di sostegno che i fatti accordano alla tesi. La discussione critica che ha accompagnato l'elaborazione dello studio, focalizzata sia sui fatti che mettono in discussione l'ipotesi sia sulle diverse opinioni che nel corso della discussione si sono formate. L'attitudine esplicativa dell'elaborazione teorica. Ancora, rileva il grado di consenso che la tesi raccoglie nella comunità scientifica.

Inoltre, nella sentenza Knox,[^SentenzaKnox] si prevede che la valutazione della ricerca scientifica deve seguire il principio del contraddittorio.[^CassPen-1801-2022-punto-4.1]

[^SentenzaKnox]: Cass. pen., n. 36080/2015.
[^CassPen-1801-2022-punto-4.1]: Cass. pen., n. 1801/2022, punto 4.1 contiene le citazioni delle sentenze Cozzini e Knox citate. \VediUrl{Cassazione Penale, Sez. V}{Sentenza n. 1801 del 2022}{2022}{https://www.italgiure.giustizia.it/xway/application/nif/clean/hc.dll?verbo=attach&db=snpen&id=./20220117/snpen@s50@a2022@n01801@tS.clean.pdf}.

L'obiettivo dei criteri Daubert è di evitare che nel processo entri della *junk science* (pseudoscienza, o teorie scientifiche non adeguatamente comprovate). Pertanto, tutti i requisiti per la "buona scienza" sono requisiti che interessano anche da un punto di vista processuale.

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
