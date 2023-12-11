# Software scientifico e software libero

## Software usato dall'informatica forense

Come le altre scienze naturali, anche l'informatica forense ha bisogno di strumenti per analizzare il suo oggetto di studio, i dati informatici. Per l'informatica, questo strumento è il *software* (programmi informatici).

È bene chiarire fin da subito che tutto il *software*, i "programmi" informatici, sono a loro volta "dati" informatici, non hanno una natura diversa. La particolarità dei programmi informatici è che sono dati informatici che descrivono una serie di istruzioni, che possono essere eseguite dal computer. Queste istruzioni indicano come altri dati devono essere modificati, al fine di ottenere un risultato utile.

Da questa nozione seguono alcune importanti conseguenze.

Una delle caratteristiche dei dati digitali è che possono copiati con facilità per un numero illimitato di volte. Pertanto, in teoria, è possibile anche copiare il software usato per l'analisi, dato che consiste in semplici dati, in modo che il perito ed i consulenti dispongano non solo degli stessi dati, ma anche degli stessi strumenti di analisi.

Inoltre, i dati informatici non hanno senso in isolamento. Non è sempre possibile determinare se un dato è stato modificato osservando soltanto il singolo dato, perché è generalmente possibile modificare i singoli bit che compongono i dati senza lasciare tracce. Spesso è necessario cercare altri elementi che facciano riferimento a quel file all'interno dell'intero sistema.

Allo stesso modo, copiare il singolo programma potrebbe non essere sufficiente. I programmi spesso hanno bisogno di librerie di terze parti,[^DefinizioneLibreriaEsterna] o possono essere eseguiti solo su versioni particolari di un sistema operativo. Anche al di fuori di questi casi, lo stesso programma si potrebbe comportare in maniera diversa se installato su due computer diversi, per un qualsiasi numero di motivi, che sono difficili da determinare a priori.[^MotiviComportamentoDiversoProgrammi] Per questi motivi, è preferibile copiare l'intero "contesto" in cui il programma viene eseguito, ossia, l'intero sistema operativo utilizzato. In questo modo, perito e consulenti dispongono anche dello stesso, identico ambiente virtuale usato per analizzare i dati.

[^DefinizioneLibreriaEsterna]: Nell'informatica, una *library* ("libreria") è una raccolta di codice (istruzioni) che non possono essere eseguite direttamente, ma hanno una funzione di supporto rispetto al software che viene eseguito. Si può pensare al rapporto che intercorre fra il perito ed il giudice: il perito non esercita il potere giurisdizionale, ma il suo ruolo è di fornire le conoscenze tecniche necessarie al giudice per svolgere il suo ruolo nella migliore maniera possibile. Ad esempio, numerosi programmi devono poter decodificare un file JPG: un visualizzatore di immagini, un browser, un programma per la *image forensics* (analisi forense delle immagini)&hellip; La soluzione è di creare una libreria che possa essere utilizzata da tutti questi programmi. Gli sforzi vengono concentrati su un unico progetto specializzato, non c'è una duplicazione di sforzi o codice inutile, e tutti i miglioramenti alla libreria (ad esempio, nuove funzionalità, maggiore efficienza, correzione di bug&hellip;) beneficiano tutti i programmi che la utilizzano. La soluzione alternativa, dove ogni programma deve "reinventare la ruota" per ogni formato che intende utilizzare, sarebbe estremamente inefficiente e porterebbe ad una disparità di trattamento (non tutti i programmi avrebbero le stesse funzionalità, avrebbero bug diversi, ed in generale, si comporterebbero in maniera diversa).

[^MotiviComportamentoDiversoProgrammi]: Ad esempio, i due computer potrebbero avere due versioni diverse della stessa libreria esterna. Una versione ha un bug, che produce risultati erronei. L'altra versione è più recente, e ha risolto questo bug. Le due versioni possono produrre risultati diversi. Allo stesso modo, analoghe considerazioni possono essere svolte riguardo l'esecuzione dello stesso programma su sistemi operativi diversi (ad esempio, Windows e GNU/Linux), o anche fra versioni diverse dello stesso sistema operativo (che possono aggiornare le librerie incluse nel sistema operativo). Naturalmente, è probabile che queste differenze siano insignificanti nella pratica, ma è comunque preferibile eliminare le differenze dove possibile, in modo che il contraddittorio riguardi effettivamente lo stesso oggetto, e non oggetti diversi. 

Nella pratica, questa possibilità può essere limitata per motivi tecnici e/o legali.

Se vengono usati dispositivi specializzati, diversi da un normale computer, per l'acquisizione, potrebbe essere difficile o impossibile ottenere una copia del software che regola il loro funzionamento. Anche quando il software viene eseguito su un normale computer, il suo funzionamento potrebbe essere condizionato dall'uso di misure di protezione hardware.[^HardwareDongle]

[^HardwareDongle]: Ad esempio, un *hardware dongle* (chiave di protezione hardware), un supporto materiale che deve rimanere inserito durante il funzionamento del software, e permette di identificare il licenziatario che sta usando il software. In sua assenza, il software si rifiuta di funzionare.

Anche in assenza di queste limitazioni tecniche, rimangono comunque le limitazioni legali. Il diritto d'autore si applica anche al software, che viene equiparato ad un'opera letteraria (art. 1 co. 2 l.d.a.).[^LeggeDirittoAutore] Anche se il divieto di creare copie del software non venisse menzionato espressamente nel contratto di licenza d'uso concluso fra lo sviluppatore e l'utilizzatore, questa possibilità sarebbe già esclusa dalla legge sul diritto d'autore, che prevede il "diritto esclusivo" dell'autore di creare copie dell'opera, in generale dall'art. 13, e con specifico riguardo per i "programmi per elaboratore" all'art. 64-*bis* lett. *a*.

[^LeggeDirittoAutore]: L. 633/1941.

D'altro canto, esistono delle eccezioni e limitazioni a questo diritto. In particolare, l'art. 67 recita:

> Opere o brani di opere possono essere riprodotti a fini di pubblica sicurezza, nelle procedure parlamentari, giudiziarie o amministrative, purché si indichino la fonte e, ove possibile, il nome dell'autore.

Il processo penale è sicuramente una delle "procedure giudiziarie" che hanno "fini di pubblica sicurezza".

Più in generale, l'art. 68 co. 1 e 6 prevedono che:

> 1\. È libera la riproduzione di singole opere o brani di opere per uso personale dei lettori, fatta a mano o con mezzi di riproduzione non idonei a spaccio o diffusione dell'opera nel pubblico.

> 6\. È vietato lo spaccio al pubblico delle copie di cui ai commi precedenti e, in genere, ogni utilizzazione in concorrenza con i diritti di utilizzazione economica spettanti all'autore.

Sono eccezioni ad una regola generale, e quindi devono essere interpretate in maniera restrittiva. Si potrebbe argomentare che la creazione di una copia nel contesto di un procedimento giudiziario non è un "uso personale", ma piuttosto esiste un interesse pubblico. Ma la *ratio*, l'intento della norma è chiaro, la creazione di copie è ammessa, purché non danneggi la possibilità di sfruttamento economico dell'opera da parte dell'autore.

Creare una copia del software, in modo da permettere alle altri processuali di svolgere un contraddittorio non solo sui metodi usati e sul risultato dell'analisi, ma anche sullo specifico strumento usato per svolgere l'analisi nel caso concreto, difficilmente può essere considerato un ostacolo allo sfruttamento economico del software, essenzialmente una "vendita persa", e tanto meno una "diffusione dell'opera nel pubblico".

L'ultima caratteristica da considerare, che sarà oggetto di trattazione nel resto del capitolo, è il formato in cui le istruzioni di cui il *software* è composto vengono espresse. Questo è forse il punto più cruciale. Fornire una copia dell'ambiente di analisi usato (inteso come la combinazione di sistema operativo, software e dati) beneficia il contraddittorio, perché permette alle controparti di interagire con gli strumenti e ripetere le operazioni svolte, ma si può andare ancora oltre.

Il massimo grado di trasparenza e approfondimento nel contraddittorio viene raggiunto quando è possibile esaminare non solo il software in sé, ma anche come è stato sviluppato. Si distingue fra "codice macchina", le istruzioni che sono in un formato che può essere direttamente eseguito dal computer, e "codice sorgente", istruzioni in un formato che può essere convertito in codice macchina, ma è più facile da usare per i programmatori.

Il rapporto fra codice sorgente e codice macchina è simile al rapporto che esiste fra il processo di cognizione ed il processo di esecuzione. Il primo consiste nell'accertamento del fatto, e nel suo inquadramento all'interno del sistema giuridico, e affianca al dispositivo (il "cosa" deve essere fatto) una lunga motivazione, che spiega in dettaglio il "perché". Viceversa, il processo di esecuzione consiste principalmente di attività materiali. Il "perché" è stato già stabilito, adesso rimane soltanto eseguire concretamente il "cosa".

Il punto fondamentale è che osservare il processo di esecuzione non permette di risalire alla esatta motivazione del processo di cognizione, perché ai fini dell'esecuzione rileva soltanto il dispositivo. Allo stesso modo, se non si ha accesso ad una copia del software come codice sorgente, ma soltanto ad una copia del software come codice macchina, già pronto per essere eseguito, l'unica valutazione possibile riguarda il funzionamento "a valle" del software, ma non è possibile valutare "a monte" quali tecniche di analisi sono state usate, se sono state implementate correttamente nel codice sorgente&hellip; in altre parole, è possibile solo una valutazione formale, e non sostanziale, del programma.

## Esigenze processuali

Il principio fondamentale nel processo penale è la formazione della prova nel contraddittorio. Tutte le operazioni precedenti, che riguardano anche solo indirettamente il contraddittorio, devono essere svolte con l'obiettivo di garantire la sua migliore realizzazione possibile.

### Acquisizione

Per quanto riguarda la prova informatica, la prima fase del suo trattamento in cui rileva l'uso di software è l'acquisizione di dati.
La legge di ratifica ed esecuzione della Convenzione di Budapest[^LeggeRatificaEsecuzioneConvenzioneBudapest] ha modificato vari articoli del codice di procedura penale, prevedendo esplicitamente che l'acquisizione di dati informatici non modifichi i dati originali, e crei una copia uguale all'originale (art. 8).

[^LeggeRatificaEsecuzioneConvenzioneBudapest]: L. 48/2008.

Da un punto di vista concettuale, soddisfare questi requisiti è apparentemente semplice. Basta garantire che il software esegua solo operazioni in lettura, e mai in scrittura, sul supporto originale, e che la copia sia identica all'originale, bit per bit. Tuttavia, quando si considerano i dettagli tecnici, le operazioni diventano più complicate.

In primo luogo, il programma deve prendere ogni accortezza possibile per cercare di evitare i dati. Ad esempio, per aprire un file è possibile usare due funzioni, *fopen* e *open*. Normalmente, i programmatori preferiscono usare *fopen* invece di *open*, perché presenta solo le funzionalità più comuni con una sintassi semplice da ricordare. Per aprire un file in sola lettura, è sufficiente scrivere [@Man7_Fopen, sez. "DESCRIPTION"]:

```c
FILE *fp = fopen("file-da-acquisire", "r");
```

Tuttavia, nel caso dell'informatica forense, dove è necessario avere il maggior grado di controllo possibile sul funzionamento del programma, è preferibile usare la funzione di basso livello *open*, che richiede di indicare espressamente tutte le opzioni volute. In questo caso, non solo si richiede l'apertura in sola lettura (*O_RDONLY* significa "opzione: sola lettura"), ma si richiede anche di non modificare la data in cui il file è stato aperto per l'ultima volta (*O_NOATIME* significa "opzione: non cambiare la data di accesso") [@Man7_Open, sez. "DESCRIPTION"].

```c
FILE *fp = open("file-da-acquisire",
    O_RDONLY | O_NOATIME);
```

Se non si vieta la modifica della data di accesso, una operazione che normalmente dovrebbe essere di sola lettura implica anche un'operazione in scrittura, che va a modificare delle informazioni relative al file su disco.

In secondo luogo, si deve considerare anche il comportamento del sistema operativo. Ad esempio, se il software deve montare un supporto materiale per accedere ai dati che contiene come file, ai fini di una ispezione/perquisizione, è bene usare tutte le opzioni che permettono di evitare la modifica dei dati, come:

```sh
blockdev --setro ...
mount -o ro,noatime ...
```

Il comando *blockdev* [@Man7_Blockdev, sez. "COMMANDS"] impedisce qualsiasi scrittura sul dispositivo materiale, ed il comando *mount* rende i contenuti del dispositivo visibili al sistema operativo. *ro* significa "sola lettura", e *noatime* ha la stessa funzione menzionata in precedenza. Se non si usa *blockdev*, in alcuni casi particolari il supporto materiale potrebbe subire modificazioni [@UtilLinux_Mount, sez. "COMMAND-LINE OPTIONS"].

Per quanto riguarda la verifica della corretta copia dei dati, normalmente si eseguono due passaggi. Con il primo passaggio i dati vengono semplicemente copiati. Con il secondo passaggio, si verifica che la copia sia identica all'originale, calcolando almeno due hash crittografici per entrambi.

Il primo problema da considerare è la corretta implementazione della funzione di hash. Fortunatamente, è altamente improbabile che la funzione di checksum sia implementata in maniera erronea, sia perché la specificazione tecnica è dettagliata [@NIST_FIPS_180-4], sia perché esistono esempi che permettono di verificare il corretto funzionamento di un'implementazione.[^TestVectorsSHA]

[^TestVectorsSHA]: La sezione "Secure Hashing" contiene vari esempi. \VediUrl{National Institute of Standards and Technology}{Examples with Intermediate Values}{2023}{https://csrc.nist.gov/Projects/cryptographic-standards-and-guidelines/example-values}.

Un problema più grave riguarda il fatto che le funzioni di hash potrebbero essere vulnerabili ad attacchi crittografici, e quindi restituire un risultato uguale per valori in input diversi, un fenomeno chiamato *collision* (collisione). Le funzioni di hash usate tradizionalmente, MD5 e SHA-1, sono state già compromesse individualmente con dei *chosen-prefix attacks* (attacchi con prefisso predeterminato) [@Stevens2012; @Leurent2020].

Anche questo tipo di attacco ha una rilevanza pratica limitata. Il problema fondamentale è che il suo funzionamento richiede di aggiungere un "suffisso" creato ad arte, dopo i dati originali. Questo suffisso permette di "manipolare" la funzione di hash, in modo che produca in uscita il valore desiderato [@Leurent2020, 1839], ma presenta un problema significativo [@Stevens2012, 341]:

> Given current methods, collisions require appendages consisting of unpredictable and mostly uncontrollable bitstrings. These must be hidden in the usually heavily formatted application data structure without raising suspicion.[^ProblemaChosenPrefix]

[^ProblemaChosenPrefix]: "Dati i metodi attuali, le collisioni richiedono delle appendici che consistono di dati imprevedibili, e difficilmente controllabili. Questi dati devono essere nascosti nelle strutture di dati dell'applicazione, che solitamente accettano valori ristretti, senza sollevare sospetti."

Pertanto, anche nel caso in cui questo attacco sia usato nella pratica, può essere rilevato grazie alla necessaria presenza di questi "suffissi". Ancora, il rischio può essere ridotto usando più funzioni di hash per gli stessi dati. È estremamente difficile trovare un suffisso che possa manipolare più funzioni contemporaneamente. La soluzione ancora migliore è di usare funzioni di hash più recenti, per cui non esistono ancora attacchi crittografici.[^NuoveFunzioniHash]

[^NuoveFunzioniHash]: Ad esempio, il NIST prevede di abbandonare completamente l'uso di SHA-1 per qualsiasi uso entro il 2030. \VediUrl{National Institute of Standards and Technology}{NIST Transitioning Away from SHA-1 for All Applications}{2022}{https://csrc.nist.gov/news/2022/nist-transitioning-away-from-sha-1-for-all-apps}.

Se la verifica dei dati dopo la copia non pone problemi particolari, la lettura dei dati dal supporto è un'operazione estremamente delicata.

In primo luogo si deve considerare la quantità di dati che il software può acquisire, sulla base del supporto materiale. Si può immaginare una gradazione di casi possibili.

Nel caso ideale, e forse non sempre realizzabile:

- È possibile acquisire tutti i dati informatici memorizzati per qualsiasi motivo sul supporto materiale.
- Questo include, oltre ai dati normalmente visibili, anche il *firmware* (software che controlla direttamente il funzionamento dell'*hardware*), informazioni diagnostiche, dati contenuti in settori nascosti, riservati o danneggiati&hellip;
- È necessario smontare l'hardware per essere in grado di esaminare "tutti" i dati, anche quelli che normalmente sono nascosti. È un'operazione costosa, per sua natura irripetibile, e che rischia di danneggiare i dati durante l'acquisizione, se non eseguita correttamente.

Nel caso di supporti materiali estraibili, come dischi rigidi e memorie *flash*:

- È possibile acquisire tutti i dati che sono normalmente accessibili al sistema operativo, eventualmente anche usando comandi di basso livello (ossia, che permettono di interagire direttamente con l'hardware).
- Questo permette di ottenere una copia esatta di quello che il sistema operativo può vedere, incluse le partizioni normalmente nascoste, e lo *slack space* (spazio libero).
- È necessario implementare correttamente le specifiche tecniche relative al funzionamento dei supporti materiali. Questo aspetto viene gestito direttamente dal sistema operativo, e pertanto i programmi possono solo leggere quanto viene loro offerto.

Nel caso di supporti materiali non estraibili o *embedded* (integrati), come smartphone, tablet, i computer più recenti della Apple, dispositivi creati *ad hoc* che non usano parti standard (ad esempio, apparecchiature mediche):

- Più il dispositivo tende ad essere "monolitico" nel loro funzionamento, più è difficile aprirlo, estrarre i componenti in cui sono memorizzati i dati, e far funzionare questi componenti senza l'hardware originale, e meno è probabile che sia possibile leggere il loro intero contenuto.
- Si potrà leggere solo quanto il supporto materiale espone all'utente. Pertanto, sarà al più possibile recuperare singoli file, o log, ma non sarà possible leggere l'intero supporto per cercare file cancellati.
- È necessario sviluppare software *ad hoc*, che sia in grado di interfacciarsi con questi supporti.

L'acquisizione di dati mediante le tecniche di *network forensics* tende a ricadere in quest'ultima categoria. Non si ha accesso diretto al supporto materiale, è possibile leggere solo quanto viene reso disponibile dal software eseguito sul *server* remoto.[^DatiEspostiServerRemoto] In particolare, nel caso di acquisizione di dati da servizi *cloud*, è necessario considerare quali dati vengono esposti dal servizio, in che modo è possibile richiederli, e sviluppare software di acquisizione *ad hoc*.

[^DatiEspostiServerRemoto]: Ad esempio, il protocollo HTTP (RFC 9110) è largamente usato per trasferire singoli file. Tuttavia, il protocollo non richiede la comunicazione corretta degli elementi più basilari del file. Ad esempio, il campo *Last-Modified* ("modificato l'ultima volta") non deve coincidere con l'effettiva ultima modifica del file, è usato solo per non inviare il file una seconda volta se non è stato modificato. Ancora, il campo *Content-Disposition*, che permette di indicare se il file deve essere mostrato nel browser o scaricato, e nel secondo caso, con quale nome, non fa nemmeno parte dello standard HTTP di base, ma è un'estensione regolata da uno standard diverso (RFC 6266).
\VediUrl{R. Fielding, M. Nottingham, J. Reschke}{RFC 9110: HTTP Semantics}{2022}{https://httpwg.org/specs/rfc9110.html}.
\VediUrl{J. Reschke}{RFC 6266: Use of the Content-Disposition Header Field in the Hypertext Transfer Protocol (HTTP)}{2011}{https://httpwg.org/specs/rfc6266.html}

Durante l'acquisizione potrebbero avvenire degli errori di lettura, o nel caso di acquisizione su internet, degli errori di trasmissione. In questo caso, è necessario che il software sia in grado di rilevarli, di segnalarli all'utente, e di indicare nella maniera più dettagliata possibile il loro impatto ai fini dell'acquisizione corretta dei dati.

Il software deve dare una scelta all'utilizzatore riguardo come continuare a seguito dell'errore. Le opzioni ipotizzabili sono:

- Se l'errore sembra accidentale o temporaneo (ad esempio, una disconnessione temporanea dal server), si può riprovare ad acquisire lo stesso dato immediatamente.
- Se l'errore continua a ripresentarsi, e non sembra risolvibile (ad esempio, nel caso di un supporto con settori corrotti, o di file non più disponibili sul server), si può decidere di saltare l'acquisizione di quel particolare settore o file. In questo caso, è importante sapere come il software segnalerà all'interno dei dati acquisiti come non è stato possibile acquisire i dati, a causa di un errore.
- Come soluzione estrema, in caso di errori irrisolvibili, dove non è possibile trovare un punto in cui è possibile continuare ad acquisire i dati, si può chiedere l'interruzione dell'acquisizione. Il software indicherà che l'acquisizione non è stata completata, ed i dati sono soltanto parziali.

### Conservazione

Dopo l'acquisizione dei dati, inizia la fase della conservazione. Il codice di procedura menziona brevemente la custodia di dati informatici (art. 259 c.p.p.):

> Quando la custodia riguarda dati, informazioni o programmi informatici, il custode è altresì avvertito dell'obbligo di impedirne l'alterazione o l'accesso da parte di terzi, salva, in quest'ultimo caso, diversa disposizione dell’autorità giudiziaria.

La soluzione più semplice e efficace per impedire l'accesso non autorizzato da parte di terzi non richiede nemmeno l'uso di software. Basta tenere i supporti materiali che contengono una copia dei dati sequestrati all'interno di una cassetta di sicurezza, scollegati da un sistema informatico.

Per quanto riguarda l'alterazione, l'interpretazione letterale sembra suggerire che il custode non sia tenuto a prevenire l'alterazione "naturale" dei dati dovuta alla degradazione dei supporti materiali, ma solo l'alterazione "intenzionale" da parte di terzi. Questo problema è risolto dall'articolo successivo (art. 260 co. 2 c.p.p.):

> L'autorità giudiziaria fa estrarre copia dei documenti e fa eseguire fotografie o altre riproduzioni delle cose sequestrate che possono alterarsi o che sono di difficile custodia \Omissis{} Quando si tratta di dati, di informazioni o di programmi informatici, la copia deve essere realizzata su adeguati supporti, mediante procedura che assicuri la conformità della copia all'originale e la sua immodificabilità; in tali casi, la custodia degli originali può essere disposta anche in luoghi diversi dalla cancelleria o dalla segreteria.

Il modo più semplice di garantire l'immodificabilità è di usare i supporti ottici, ma questa soluzione è particolarmente scomoda, per vari motivi:

- Per acquisire un disco rigido da 256 GB, servirebbero quasi 60 DVD.
- La velocità di scrittura/lettura su un supporto ottico è inferiore rispetto alle velocità raggiungibili da un disco rigido o disco a stato solido moderno, ed in generale, è preferibile usare velocità più basse per evitare errori di scrittura/lettura.
- Se il supporto ottico presenta anche un singolo errore di scrittura, non è possibile correggerlo, e deve essere buttato via e riscritto.
- I supporti ottici sono una tecnologia che è in tendenziale disuso. Questo significa che i supporti ottici disponibili sul mercato saranno probabilmente di qualità inferiore, e non dureranno a lungo.

Un'altra soluzione è di usare il formato *LTO* (*Linear-Tape Open*), che è sviluppato appositamente per l'archiviazione di grandi quantità di dati a lungo termine. In particolare, permette l'uso della crittografia autenticata, e permette di memorizzare dati in sola lettura. Il problema principale è che la tecnologia richiede hardware specializzato per essere usata.

È possibile raggiungere un compromesso utilizzando hardware generico, e software specializzato. In particolare, il software deve garantire l'integrità dei dati.

----

- Sistemi operativi potrebbero nascondere dati proprietari, è meglio un sistema operativo *super partes* che non abbia nulla da nascondere.

- (considerazioni analoghe anche per conservazione dei dati)

Idealmente si deve verificare l'esatto funzionamento del software, ma se è impossibile visionare il codice sorgente o sapere quali algoritmi vengono utilizzati, ci si può affidare alle certificazioni attribuite da soggetti autorevoli

----

La conservazione della prova informatica ...

- Analisi della prova informatica:
  - Software deve essere sufficientemente flessibile, in modo da poter essere utilizzato nei vari casi concreti che si possono presentare
  - Risultati devono essere corretti, stesse considerazioni fatte per l'acquisizione
- Valutazione della prova informatica:
  - Perito e consulenti devono spiegare perché il metodo di analisi è affidabile, *argumentum ab auctoritate* del software non è sufficiente
  - Più è possibile fare riferimento al concreto funzionamento del software, e meglio è
  - Meno è possibile sapere come il software ha svolto l'acquisizione ed analisi, e più il giudice deve essere critico (un conto è il principio di conservazione della prova, un conto è sopravvalutare il valore e la validità epistemologica di una prova)
- Ammissibilità:
  - Criteri della sentenza Daubert per valutare l'uso di conoscenze scientifiche nel processo
  - Analogamente, uso degli stessi criteri per valutare l'uso di software sviluppato sulla base di ricerca scientifica
- Contraddittorio sulla prova informatica:
  - Diritto alla difesa implica la necessità di sapere come l'analisi è stata svolta
  - L'analisi deve essere ripetibile (usare gli stessi strumenti) e riproducibile (ottenere gli stessi risultati) per la controparte, e nel futuro (giudizio di impugnazione, revisione&hellip;)

## Esigenze scientifiche

- Tendono a sovrapporsi con le esigenze processuali, perché nel processo non può entrare *junk science*
- Libero accesso a ricerca e codice:
  - La ricerca scientifica ed il software di analisi devono essere resi disponibili liberamente
  - È un prerequisito per le fasi successive
- Riproducibilità e ripetibilità:
  - *Replication crisis* esiste anche per l'informatica, necessità di tecniche per mitigare il problema
  - Analisi devono essere ripetibili, risultati devono essere riproducibili e verificabili
- Peer review e trasparenza:
  - Equivalente scientifico del contraddittorio fra le parti, deve riguardare la ricerca scientifica ed il software prodotto
  - Deve essere aperta a chiunque abbia le capacità tecniche necessarie
  - Discussione aperta dei contributi suggeriti
  - Sviluppo del software con modalità trasparenti
- Esattezza:
  - Software deve implementare quando concluso dalla ricerca scientifica in maniera esatta
  - Conoscenza dei bug: i bug vanno documentati e risolti in maniera trasparente, metodi per evitare che i bug si ripresentino
  - Robustezza dei metodi di analisi: il software deve sempre comportarsi in maniera prevedibile, specie se incontra un formato invalido o inaspettato (analogia con inammissibilità ed improcedibilità)

## Codice macchina e codice sorgente

Un'altra caratteristica dei dati informatici è che sono facilmente modificabili senza lasciare tracce. Se il perito o consulente conosce il formato in cui i dati sono codificati, è possibile cercare irregolarità (valori invalidi, irragionevoli, incongruenze&hellip;) all'interno del file, o all'interno del sistema.

Il problema del "formato" in cui i dati sono codificati è estremamente importante per il software. Il software deve essere eseguito dall'hardware, da un processore, e l'hardware, per definizione, non è facilmente modificabile o riprogrammabile.[^HardwareRiprogrammabile] L'hardware si aspetta un formato ben preciso per le istruzioni che riceverà, e se questo formato non è rispettato, il processore non eseguirà il codice, o produrrà risultati incorretti.

[^HardwareRiprogrammabile]: Processori riprogrammabili esistono. Ad esempio, i FPGA sono circuiti integrati che possono essere riprogrammati, ma sono meno efficienti di una soluzione hardware specializzata.

Il termine *software* (programma informatico) può essere inteso in due modi.
Nel linguaggio comune, indica un programma eseguibile da un computer.
Nell'ambito specifico della programmazione, si distingue fra software inteso come *machine code* (codice macchina) e *source code* (codice sorgente).

Il codice macchina può essere 

L'espressione "software" si riferisce ad un programma che può essere eseguito direttamente da un computer.

si parla di software, in realtà ci si riferisce al **codice macchina**.

- Software come codice macchina o come codice sorgente
- Anche il sistema operativo fa parte del software

- Codice macchina:
    - Istruzioni di basso livello, indicano direttamente alla macchina cosa fare
    - Non leggibili da parte del programmatore (salvo *disassembly*)
    - Natura puramente materiale, analogia con il giudizio di esecuzione
    - Strettamente legato ad un processore, ogni processore ha un set di istruzioni particolare
- Codice sorgente:
    - File di testo
    - Descrizione astratta del programma, il processore non può utilizzarla diversamente, analogia con il giudizio di cognizione
    - Possono contenere commenti
    - Linguaggi di programmazione di basso livello: assembler, C, ecc, gestione della memoria manuale, paradigma imperativo
    - Linguaggi di alto livello: gestione automatica della memoria, paradigma descrittivo (al massimo livello con SQL)

- Copia dei dati e manutenzione del loro funzionamento: più facili con il software libero, che presenta ulteriori vantaggi (si può sapere come il software funziona).
- Opportunità anche per il software di analisi di essere open-source.

## Compilazione

- Conversione permanente da codice sorgente a codice macchina, sempre necessario
- Informazioni perse, possibilità di offuscamento
- Utile per il software proprietario che vuole nascondere il suo funzionamento
- Problema del software scientifico che non dà accesso al codice sorgente

## Reverse-engineering

- Legata alla libertà di studiare il funzionamento del software
- Interessa principalmente per la fase di ricerca dell'informatica forense, quando la semplice osservazione del funzionamento del programma non è sufficiente
- Rappresenta il contrario della compilazione
- Casi giuridici che affermano questa libertà
- Ostacoli alla reverse-engineering di natura tecnica

## Documentazione del software scientifico

- Tutto il software scientifico deve essere documentato, facendo riferimento alla ricerca scientifica, e spiegando come funziona il software, che tipo di input si aspetta, i limiti dell'analisi&hellip;
- Software proprietario: tensione fra documentare il suo funzionamento, e non rivelare troppi dettagli per mantenere il *competitive advantage*, problema di verificare se il funzionamento corrisponde alla documentazione
- Software libero: "code as documentation", tensione fra la possibilità di documentazione estensiva e la mancanza di risorse

## Licenze d'uso del software

- Software è soggetto al copyright, è considerato un'opera scritta
- Software proprietario: solo compilato, *open-source* ma solo *source-available*
- Software libero: usa licenze libere, libertà secondo la FSF, licenze approvate dalla FSF e OSI, meglio evitare licenze ad-hoc
- Inquadramento delle licenze nel sistema giuridico italiano

## Licenze copyleft (GPL)

- Opere derivate devono usare la stessa licenza, e distribuire il codice sorgente
- Ideale per il software scientifico

## Licenze permissive (LGPL, MIT)

- Opere derivate possono rimanere proprietarie

## Licenze per la documentazione

- Per la ricerca scientifica e per la documentazione dei programmi
- Licenze per le raccolte di dati

