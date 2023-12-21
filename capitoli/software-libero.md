# Software scientifico e software libero

## Software usato dall'informatica forense {#software-usato-informatica-forense}

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
FILE *fp = open(
    "file-da-acquisire",
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

È possibile raggiungere un compromesso utilizzando hardware generico, e software specializzato, che sia sviluppato in maniera da garantire l'integrità dei dati, cercare di riparare i dati automaticamente in caso di corruzione, ed evitare la sovrascrittura o aggiornamento dei dati già esistenti.

Essenzialmente, si tratta di programmi per la creazione di copie di *backup*, sviluppati dando priorità alle esigenze dell'informatica forense, e quindi preoccupandosi di garantire la correttezza e completezza dell'acquisizione, anche a scapito dell'efficienza dell'acquisizione (in termini di velocità, quantità di spazio usata) o altre funzionalità (come compressione dei dati, crittografia&hellip;). Più funzionalità si aggiungono, più il software diventa complesso, e più è difficile dimostrare che funziona correttamente.

### Catena di custodia

L'unica formalità per le cose sequestrate prevista dal codice di procedura è l'apposizione e rimozione di sigilli dell'ufficio giudiziario (artt. 260 e 261 c.p.p.), non si prevede la redazione di una catena di custodia. Tuttavia, è possibile prendere come riferimento il codice di procedura penale colombiano,[^CodiceProceduraPenaleColombiano] che regola espressamente la catena di custodia (art. 254 ss.).

[^CodiceProceduraPenaleColombiano]: \VediUrl{Congreso de la República de Colombia}{Ley 906 de 2004, Por la cual se expide el Código de Procedimiento Penal. (Corregida de conformidad con el Decreto 2770 de 2004)}{2004}{https://www.funcionpublica.gov.co/eva/gestornormativo/norma.php?i=14787}.

L'art. 254 indica la finalità e gli elementi che devono essere considerati:

> *Con el fin de demostrar la autenticidad de los elementos materiales probatorios y evidencia física, la cadena de custodia se aplicará teniendo en cuenta los siguientes factores: identidad, estado original, condiciones de recolección, preservación, embalaje y envío; lugares y fechas de permanencia y los cambios que cada custodio haya realizado. Igualmente se registrará el nombre y la identificación de todas las personas que hayan estado en contacto con esos elementos.*

Per quanto riguarda la prova informatica, è importante indicare tutti gli elementi indicati dall'articolo sia per i supporti materiali, sia per i dati informatici, considerando le rispettive peculiarità.

L'identificazione:

- Di un supporto materiale avverrà con l'indicazione del numero seriale.
- Dei dati informatici avverrà riferendosi al loro hash.

Lo stato originale:

- Per il supporto materiale è la condizione in cui viene rinvenuto. Ad esempio, "inserito in un computer trovato acceso", oppure "disco rigido esterno, non collegato ad un computer". Queste informazioni possono essere utili ai fini dell'analisi, perché rappresentano le ultime cause di modificazione che sono intervenute subito prima dell'acquisizione.
- Per i dati è il log dell'acquisizione, che indicherà informazioni come quando l'operazione è stata compiuta, su quale supporto, quanti dati sono stati copiati, se sono avvenuti errori di lettura o verificazione, l'hash dei dati&hellip;

La modalità di acquisizione, conservazione, imballaggio e trasporto:

- Per i supporti materiali si indicano le operazioni che sono state svolte per la loro estrazione, e come sono stati conservati per proteggerli da danni.
- Per i dati informatici si indicano le modalità usate per acquisire e archiviare i dati, indicando la loro idoneità a conservare i dati originali, creare una copia conforme, e assicurare l'integrità dei dati nel tempo, ed indicando anche le circostanze pratiche e concrete ostative a queste finalità.

Ancora, si devono indicare i luoghi e date in cui i supporti e dati sono stati conservati, i cambiamenti che ogni custode ha apportato, il nome ed identificazione di tutte le persone che sono entrate in contatto con questi elementi.

La redazione della catena di custodia è di responsabilità dei pubblici ufficiali (art. 255):

> *La aplicación de la cadena de custodia es responsabilidad de los servidores públicos que entren en contacto con los elementos materiales probatorios y evidencia física.*

Per identificare il custode e le persone che entrano in contatto con i dati informatici, si possono usare le firme digitali. Ogni atto che entra a fare parte della catena di custodia viene firmato congiuntamente dal PU responsabile e da tutti gli altri partecipanti. Data la presenza del PU, si tratterà di firma digitale autenticata (art. 25 c.a.d.).

Pertanto, sarà possibile acquisire anche una firma autografa con modalità digitali, oltre che la firma digitale eseguita con un certificato elettronico con chiave privata. La seconda modalità è preferibile, dato che falsificare la firma con certificato elettronico è praticamente impossibile.

La catena di custodia inizia ad essere redatta dal primo pubblico ufficiale che entra in contatto con il supporto o i dati durante le indagini (art. 257):

> *El servidor público que, en actuación de indagación o investigación policial, hubiere embalado y rotulado el elemento material probatorio y evidencia física, lo custodiará.*

Le norme successive regolano il trasferimento del "materiale probatorio", in modo che arrivi il prima possibile al perito, che dovrà controllare l'integrità degli elementi, e procedere all'analisi (artt. 258 a 261):

> [Art. 258] *El funcionario de policía judicial o el servidor público que hubiere recogido, embalado y rotulado el elemento material probatorio y evidencia física, lo trasladará al laboratorio correspondiente* \Omissis{}
>
> [Art. 259] *El servidor público de la oficina de correspondencia o la que haga sus veces, sin pérdida de tiempo* \Omissis{} *entregará el contenedor al perito que corresponda según la especialidad.*
>
> [Art. 260] *El perito que reciba el contenedor dejará constancia del estado en que se encuentra y procederá a las investigaciones y análisis del elemento material probatorio y evidencia física, a la menor brevedad posible* \Omissis{}

Si prevede che tutti i pubblici ufficiali sono responsabili per la conservazione degli elementi, mentre ne sono in possesso (art. 261). Per quanto riguarda i dati informatici, questo significa che i soggetti devono ricalcolare l'hash della copia, per verificare che non sia cambiato rispetto all'hash iniziale. Viceversa, i supporti informatici non devono essere verificati, si deve solo garantire la loro migliore conservazione dal punto di vista puramente materiale.

> *Cada servidor público de los mencionados en los artículos anteriores, será responsable de la custodia del contenedor y del elemento material durante el tiempo que esté en su poder, de modo que no pueda ser destruido, suplantado, alterado o deteriorado.*

Questi articoli sembrano tutti ispirati da un *favor*, una preferenza per il trattamento scientifico di quanto trovato durante le investigazioni da parte del perito. La PG ha il solo compito di assicurare le fonti di prova, la PG ed i soggetti intermedi hanno il compito di garantire la corretta conservazione degli elementi raccolti, e la perizia rappresenta la regola generale. Questa impostazione è particolarmente adeguata ai dati digitali, dato che possono essere modificati con facilità ad ogni passaggio di mani, e rilevare queste modifiche non è assolutamente una scienza certa.

Si dispone la conservazione degli elementi dopo la loro analisi, in modo che possano essere recuperati in qualsiasi altro momento per analisi successive, o eventualmente, la loro distruzione (art. 262):

> *Los remanentes del elemento material analizado, serán guardados en el almacén que en el laboratorio está destinado para ese fin. Al almacenarlo será previamente identificado de tal forma que, en cualquier otro momento, pueda ser recuperado para nuevas investigaciones o análisis o para su destrucción, cuando así lo disponga la autoridad judicial competente.*

Se i dati devono essere conservati a lungo termine, è opportuno proteggerli con uno schema di crittografia autenticata, e di conservare le password per decrittarli su carta, in un luogo diverso rispetto ai dati. Questo presenta vari vantaggi:

- Se i dati venissero sottratti per qualsiasi motivo, non potrebbero essere letti senza la password.
- Viceversa, per distruggere i dati in maniera irreversibile è sufficiente distruggere la password.
- L'unica persona che potrebbe modificare i dati è chi possiede la password. Tuttavia, basterebbe ricalcolare gli hash dei dati prima di una nuova analisi, e confrontarli con i primi hash memorizzati nella catena di custodia per rilevare una qualsiasi manipolazione.
- Si può procedere periodicamente ad una verifica dell'integrità dei dati, provando a decrittarli. Se la copia criptata dei dati è cambiata per qualsiasi motivo (deterioramento del supporto su cui sono memorizzati, o manipolazione intenzionale), la decrittazione fallirà.

Si prevede che ad ogni passaggio, la persona dia un rendiconto dello stato degli elementi, e si identifichi personalmente (artt. 263 e 264):

> [Art. 263] *Toda persona que deba recibir un elemento material probatorio y evidencia física, antes de hacerlo, revisará el recipiente que lo contiene y dejará constancia del estado en que se encuentre.*
>
> [Art. 264] *Toda persona que aparezca como embalador y rotulador, o que entrega o recibe el contenedor de elemento material probatorio y evidencia física, deberá identificarse con su nombre completo y apellidos, el número de su cédula de ciudadanía y el cargo que desempeña. Así constará en el formato de cadena de custodia.*

Come già discusso, la prima disposizione consiste nella verifica dell'integrità del supporto e dei dati, la seconda può essere integrata con l'apposizione di una firma digitale, che sia legata all'identità fisica della persona.

La catena di custodia deve essere certificata (art. 265):

> *La policía judicial y los peritos certificarán la cadena de custodia.*
>
> *La certificación es la afirmación de que el elemento hallado en el lugar, fecha y hora indicados en el rótulo, es el que fue recogido por la policía judicial y que ha llegado al laboratorio y ha sido examinado por el perito o peritos. Además, que en todo momento ha estado custodiado.*

Le attività descritte dal codice consistono in una verifica formale della veridicità di quanto scritto nella catena, ma se la catena di custodia è redatta in forma elettronica, e si usano le firme digitali, si può andare oltre, ed usare una versione semplificata dell'algoritmo di *blockchain*. L'essenza della blockchain è di essere un registro immutabile di valori, condiviso fra più persone. Nel caso dei Bitcoin, viene usato per tenere traccia delle transazioni effettuate fra vari indirizzi. Ma la stessa tecnologia può essere usata per tenere traccia delle operazioni compiute dai vari soggetti.

Il vantaggio principale della blockchain è la sua immutabilità. La catena è distribuita fra più soggetti, e quando si decide di aggiungere un nuovo blocco, tutti devono essere d'accordo riguardo al suo contenuto. Si calcola il nuovo blocco, facendo riferimento all'ultimo blocco nella catena, e tutti aggiorneranno la loro copia di conseguenza. Tuttavia, se qualcuno decidesse di modificare un blocco intermedio nella sua copia della catena, questa modifica potrebbe essere rilevata con facilità:

- In primo luogo, dovrebbe modificare tutti i blocchi successivi a quello modificato, altrimenti sarebbe facile dimostrare che la sua catena è invalida, perché ad un certo punto il blocco successivo non fa più riferimento a quello precedente.
- Tuttavia, se modifica tutti i blocchi successivi, dovrà necessariamente modificare anche l'ultimo blocco. Se proverà ad aggiungere un nuovo blocco, sarà facile verificare che il blocco a cui si sta riferendo non coincide con l'ultimo blocco nelle altre copie.

In altre parole, si immagini che tutti siano inizialmente d'accordo su questa catena:

\begin{center}
Buona fede: A, B, C, D, E
\end{center}

Analogamente, tutti saranno d'accordo che il prossimo blocco *F* farà riferimento a *E*. Tuttavia, se qualcuno decide di modificare il blocco *D* nella sua copia, ottenendo *D1*, dovrà modificare anche il valore successivo in *E1*, e si avranno due catene divergenti:

\begin{center}
Buona fede: A, B, C, D, E
\par
Mala fede: A, B, C, D1, E1
\end{center}

Si possono immaginare tre possibili scenari a questo punto:

- Se *E1* viene sostituito con *E*, si può dimostrare che *E* non può essere ottenuto da *D1*.
- Se *E1* viene usato per suggerire il blocco successivo, gli altri contesterebbero che *F1* non fa riferimento ad *E*, e quindi non potrebbe essere il "vero" *F*.
- Se *F* viene aggiunto dopo *E1*, si può sempre dimostrare che *F* non può derivare da *E1*.

In ogni caso, la modifica alla catena può essere dimostrata confrontandola con le altre copie, e trovando una divergenza, o verificando la sua integrità, e trovando un'irregolarità.

### Analisi e valutazione

Per quanto riguarda le fasi dell'analisi e valutazione da parte dei consulenti tecnici o perito, il software deve rispondere ad una serie di esigenze.

In primo luogo, il software dovrebbe essere il più flessibile possibile. Naturalmente, ogni software si specializza per l'analisi di un certo tipo di dati informatici. Tuttavia, all'interno di quell'ambito è opportuno offrire una varietà di metodi di analisi. Questo presenta due vantaggi. Il primo è che è difficile prevedere in anticipo i quesiti che potrebbero essere posti dal giudice all'interno di un caso concreto, pertanto è meglio avere quanti più strumenti possibile a disposizione. Il secondo è che se più metodi di analisi hanno la stessa funzione, ma operano secondo tecniche diverse, e queste tecniche sono tutte valide, è possibile confrontare i vari risultati per giungere ad una valutazione più ponderata.[^VirusTotal]

[^VirusTotal]: Ad esempio, VirusTotal permette di analizzare un file usando più di 70 programmi antivirus. Se un ristretto numero di programmi ritiene che il file sia un virus, ma gli altri non rilevano nulla, molto probabilmente si tratta di un falso positivo. Adesso, si immagini il caso in cui si usi solo un programma, e sia uno di quei programmi che rilevano erroneamente il file come un virus. Si giungerebbe ad una conclusione errata. \VediUrl{VirusTotal.com}{How it works}{2023}{https://docs.virustotal.com/docs/how-it-works}.

Il massimo grado di flessibilità viene raggiunto se soggetti diversi dagli sviluppatori originali (i c.d. sviluppatori di terze parti) possono sviluppare dei *plug-in* (moduli aggiuntivi) per il software. A questo punto non si è più limitati dai metodi di analisi offerti dagli sviluppatori originali, ma tutti possono contribuire ad estenderlo. Gli sviluppatori di terze parti non sono necessariamente meno affidabili degli sviluppatori originali, ed in alcuni casi, è proprio la loro opera a mantenere utile ed aggiornato un software che non è più sviluppato in maniera attiva.

Per ciascun metodo di analisi, è necessario dimostrare la loro conformità ai risultati prodotti dalla ricerca scientifica, e in generale, la ragionevolezza dell'approccio usato. La ricerca scientifica presenta il vantaggio di essere stata comprovata empiricamente. Non è pura speculazione teorica, ma la sua efficacia è stata argomentata e verificata pubblicamente, con il processo imparziale di peer-review. Pertanto, rappresenta la migliore base da cui partire.

Tuttavia, non è sempre possibile seguire la ricerca scientifica. Ad esempio, è il caso di metodi di analisi:

- Nuovi o sperimentali, che non sono stati ancora sottoposti a peer-review.
- Proprietari, per cui non si vuole rendere pubblico il loro funzionamento nei dettagli.
- Basati su tecnologie che per loro natura sono opache, come le intelligenze artificiali che sono state sviluppate per riconoscere determinati tipi di contenuti.

In questi casi, la ragionevolezza dell'approccio va dimostrata caso per caso, dato che non è possibile fare un rinvio alla scienza già affermata. Di conseguenza:

- Nel caso di approcci innovativi, si deve fornire l'accesso non solo al software, ma anche ai materiali preparatori (la ricerca scientifica "privata" e non soggetta a peer-review), in modo che si possa svolgere una quanto limitata peer-review nel contraddittorio.
- Nel caso di approcci proprietari, esiste una tensione fra il rivelare come l'algoritmo funzioni, e mantenere il segreto industriale. In questo caso, più l'approccio è complesso, più la spiegazione è poco chiara, lacunosa o irragionevole, e più è difficile verificare anche solo sommariamente che il programma segue effettivamente l'approccio descritto, e più il giudice deve valutare con sfavore un approccio che è complesso e di cui non è dato conoscere il funzionamento.
- Nel caso delle intelligenze artificiali, i fattori che influiscono sulla loro qualità sono le modalità con cui sono state allenate, ed il *training/test set* (dati utilizzati per l'allenamento e la verifica del corretto funzionamento). Le modalità di allenamento potrebbero essere mantenute segrete per le già citate ragioni di segreto industriale. Per quanto riguarda il *training set*, potrebbero esistere ostacoli legali e/o etici alla sua pubblicazione. Ad esempio, si immagini il caso di un'intelligenza artificiale che è in grado di riconoscere immagini pedopornografiche. Per verificare il suo funzionamento, sarebbe necessario condividere immagini di vittime di reati sessuali.

Infine, è necessario garantire il corretto funzionamento del programma. Un conto è dimostrare che il metodo di analisi è valido da un punto di vista conoscitivo, un altro è dimostrare che il metodo di analisi è stato trasfuso correttamente nel software. Qualsiasi software contiene bug, errori di programmazione che portano il programma a compiere operazioni inaspettate o indesiderate.

Per quanto riguarda questo aspetto, si devono garantire due esigenze. La prima è che il programma contenga quanti meno bug possibile, in modo da garantire che produca risultati corretti, e anche davanti a situazioni inaspettate, si comporti in maniera prevedibile. La seconda è che i bug che sono presenti e conosciuti siano resi pubblici, in modo che ci si possa regolare di conseguenza ai fini dell'analisi. 

<!-- TODO -->

### Presentazione e contraddittorio

La presentazione dei risultati da parte del perito e degli esperti riguarda tre aspetti:

- A quali conclusioni sono giunti.
- Sulla base di quali conoscenze scientifiche o tecniche si fonda il loro giudizio.
- Quali strumenti sono stati utilizzati nella loro valutazione.

I primi due punti sono stati analizzati nel capitolo precedente, quando si è discusso della natura scientifica dell'informatica forense, e di come le conclusioni dei periti e consulenti devono essere valutati dal giudice.

L'ultimo punto è il punto focale di questo capitolo e dei successivi.

Le sezioni precedenti di questo capitolo si sono concentrate sull'ultimo punto, considerando l'impatto del software nelle varie fasi del trattamento della prova informatica. 

Nella fase della presentazione delle conclusioni, non rileva tanto l'uso del software. Le esigenze tecniche o scientifiche sono state già esaurite nella fase di analisi e valutazione. Questa fase piuttosto è incentrata sulla "discussione" del software, come uno degli elementi che va ad influire sull'attendibilità delle conclusioni degli esperti (perito e consulenti). 

Nel trattamento della prova informatica prova informatica, è impossibile prescindere dal software. Non è un'esagerazione dire che senza il software, i dati informatici sarebbero illeggibili, e pertanto, ai fini delle indagini, sarebbe come se fossero inesistenti. Anche le operazioni apparentemente più semplici, come la copia forense dei contenuti di un disco, richiedono comunque un minimo di software. Pertanto, è altrettanto importante che il perito ed i consulenti dimostrino o critichino l'adeguatezza del software rispetto allo scopo per cui viene utilizzato.

## Esigenze scientifiche

Il software scientifico presenta anche delle esigenze di natura scientifica, nel senso che sono legate alle modalità con cui la ricerca scientifica viene svolta. In verità, tutte le esigenze scientifiche tendono ad essere indirettamente anche delle esigenze processuali. La sentenza della corte suprema americana *Daubert v. Merrel Dow Pharmaceuticals* specificò i criteri da utilizzare per poter introdurre la scienza nel processo. Questi criteri furono accolti dalla Casszione per la prima volta nel 2010 nella sentenza Cozzini,[^SentenzaCozzini] ma continuano ad essere richiamati anche di recente:

[^SentenzaCozzini]: Cass. pen., n. 43786/2010.

> Per valutare l'attendibilità di una teoria occorre esaminare gli studi che la sorreggono. Le basi fattuali sui quali essi sono condotti. l'ampiezza, *[sic]* la rigorosità, l'oggettività della ricerca. Il grado di sostegno che i fatti accordano alla tesi. La discussione critica che ha accompagnato l'elaborazione dello studio, focalizzata sia sui fatti che mettono in discussione l'ipotesi sia sulle diverse opinioni che nel corso della discussione si sono formate. L'attitudine esplicativa dell'elaborazione teorica. Ancora, rileva il grado di consenso che la tesi raccoglie nella comunità scientifica.

Inoltre, nella sentenza Knox,[^SentenzaKnox] si prevede che la valutazione della ricerca scientifica deve seguire il principio del contraddittorio.[^CassPen-1801-2022-punto-4.1]

[^SentenzaKnox]: Cass. pen., n. 36080/2015.
[^CassPen-1801-2022-punto-4.1]: Cass. pen., n. 1801/2022, punto 4.1 contiene le citazioni delle sentenze Cozzini e Knox citate.

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

Naturalmente, nell'ultimo punto è sempre necessario un controllo umano. È importante ispezionare i contenuti dello *script* che esegue le operazioni, per verificare che le operazioni necessarie siano effettivamente eseguite (ed il programma non restituisca risultati fittizi), ed i *test* siano adeguati per verificare il corretto funzionamento (devono essere sufficientemente specifici, ed controllare che il programma faccia esattamente quanto ci si aspetta, senza falsi positivi o falsi negativi).

L'uso di script presenta vari vantaggi:

- Permette di automatizzare le faccende informatiche più ripetitive e meccaniche. Ad esempio, convertire i file in un determinato formato, preimpostare un programma, eliminare i file temporanei o intermedi generati dai programmi, ripristinare lo stato iniziale dell'ambiente di analisi&hellip;
- L'operazione ripetitiva più importante è l'esecuzione di *test*. Invece di dover eseguire un comando, e controllare manualmente il risultato, è molto più efficiente specificare al computer gli esatti risultati desiderati, e per sicurezza, anche quelli indesiderati. È anche possibile configurare il programma che esegue i test in modo che generi un resoconto contenente i test che sono stati eseguiti, e per i test che non sono stati superati, la differenza tra il risultato che ci si aspettava, ed il risultato che è stato rilevato.
- Infine, l'ultimo vantaggio è che dato che lo script deve eseguire il programma, funziona anche come una forma di documentazione estremamente pratica su come usare il programma. La sua utilità va oltre la stretta riproduzione dello studio, ed entra anche nell'uso concreto del programma.

Idealmente, la peer-review deve essere solo aperta a tutti coloro che hanno le qualifiche tecniche per apportare contributi utili, ma deve svolgersi anche in maniera trasparente, in modo che il pubblico in generale possa prendere visione della discussione.

Nel caso in cui lo studio scientifico preveda, ispiri o influenzi lo sviluppo di un software che implementa i risultati dello studio, è estremamente opportuno che anche lo sviluppo di quel software sia soggetto ad una processo analogo alla "peer-review", aperto e trasparente, con i dovuti adattamenti per il software.

In questo modo, si garantisce che l'informatica forense, il software sviluppato sulla base della ricerca scientifica, ed il processo siano tutti accomunati dal principio del "contraddittorio",[^ContraddittorioSensoLato] del confronto fra vari punti di vista, e della loro sintesi, per arrivare ad un risultato finale che sia il più ponderato possibile.

[^ContraddittorioSensoLato]: Il principio del contraddittorio qui va inteso in senso lato e generico, e non nel senso tecnico e specifico che assume all'interno del processo penale.

## Software libero

### Quattro libertà fondamentali

Il modo migliore per garantire tutte le esigenze che sono state elencate in precedenza è di usare il software libero, ossia, il software che viene distribuito al pubblico in maniera da garantire quattro libertà fondamentali [@FSF-What-is-free-software]:

- Eseguire il programma a piacere, per qualsiasi finalità.
- Studiare come il programma funzioni, ed effettuare cambiamenti in modo che funzioni a proprio piacimento.
- Ridistribuire copie del software (non modificato), così che tutti possano usare il software.
- Ridistribuire copie modificate del software, insieme al codice sorgente, così che tutti possano beneficiare dei miglioramenti o cambiamenti apportati.

In mancanza di anche solo una di queste libertà, si parla di software non-libero.

### Libertà di eseguire il programma

La prima libertà è la libertà più fondamentale di tutte, ed è importante che sia indicata espressamente. Viene spiegata in questo modo [@FSF-What-is-free-software]:

> *The freedom to run the program means the freedom for any kind of person or organization to use it on any kind of computer system, for any kind of overall job and purpose, without being required to communicate about it with the developer or any other specific entity.*[^FreedomRunProgram]

[^FreedomRunProgram]: "La libertà di eseguire il programma indica la libertà per qualsiasi persona o organizzazione di usarlo su qualsiasi tipo di sistema informatico, per qualsiasi tipo di lavoro o scopo complessivi, senza richiedere che lo si comunichi allo sviluppatore, o altre entità."

Un software che non può essere eseguito sembrerebbe un ossimoro, ma è una situazione che si presenta con regolarità con il software venduto commercialmente. Le licenze sono uno strumento con cui lo sviluppatore concede la possibilità di eseguire il programma. L'accordo che regola la licenza può liberamente indicare scopi per cui il software non può essere usato. Se questo accordo viene violato, lo sviluppatore può liberamente e unilateralmente revocare o disattivare la licenza, e quindi rendere il programma inutilizzabile, non solo da un punto di vista legale, ma anche da un punto di vista tecnico.

Il programma in sé può sempre essere copiato, è difficile creare misure tecniche che impediscano in maniera assoluta la copia dei dati. Per rimediare a questo problema, il software include misure di protezione che controllano la presenza di una licenza valida (ad esempio, controllando la presenza di *dongle* USB che contengono una licenza in formato digitale, e/o contattando i server dello sviluppatore per verificare che l'utente è registrato ed autorizzato ad usare il programma&hellip;) ed in caso contrario, fermano l'esecuzione del programma.

L'art. 11 del WIPO Copyright Treaty regola l'uso di misure tecnologiche per questo scopo [@Blomqvist2014, 205]:

> *Contracting Parties shall provide adequate legal protection and effective legal remedies against the circumvention of effective technological measures that are used by authors in connection with the exercise of their rights under this Treaty or the Berne Convention and that restrict acts, in respect of their works, which are not authorized by the authors concerned or permitted by law.*

Spesso ci si riferisce all'uso di queste misure con l'acronimo *DRM* (*digital rights management*, gestione digitale dei diritti). Gli sviluppatori del software non sono tenuti ad usare questo tipo di misure [@Blomqvist2014, 207], ed in questo caso si parla di opere che sono *DRM-free* (libere da DRM).

A livello nazionale, l'uso di misure di protezione è definito e regolato dalla legge sul diritto d'autore all'art. 102-*quater*:

> 1\. I titolari di diritti d'autore \Omissis{} possono apporre sulle opere o sui materiali protetti misure tecnologiche di protezione efficaci che comprendono tutte le tecnologie, i dispositivi o i componenti che, nel normale corso del loro funzionamento, sono destinati a impedire o limitare atti non autorizzati dai titolari dei diritti.
>
> 2\. Le misure tecnologiche di protezione sono considerate efficaci nel caso in cui l'uso dell'opera o del materiale protetto sia controllato dai titolari tramite l'applicazione di un dispositivo di accesso o di un procedimento di protezione, quale la cifratura, la distorsione o qualsiasi altra trasformazione dell'opera o del materiale protetto, ovvero sia limitato mediante un meccanismo di controllo delle copie che realizzi l'obiettivo di protezione.

La l.d.a. non indica un elenco di *exceptions and limitations* ("eccezioni e limitazioni") che rendono possibile rimuovere o aggirare le misure di sicurezza.  L'art. 102-*quater* co. 3 afferma solo che resta salva la disciplina in generale sui programmi per elaboratore.  Questa possibilità è stata prevista in alcuni stati, ma solo in casi limitati ed eccezionali (ad esempio, l'uso da parte dell'autorità giudiziaria, o per ragioni di sicurezza nazionale) [@Blomqvist2014, 208].

In ogni caso, anche se la legge prevedesse esplicitamente questa possibilità, è preferibile evitare di rimuovere le misure di protezione al fine di creare copie liberamente eseguibili di software non-libero. Rimuovere le misure di protezione è analogo ad una chirurgia. Durante l'operazione si deve fare attenzione ad essere il meno invasivi possibile, e quindi modificare la minore quantità di dati possibile, e così come dopo l'operazione il paziente potrebbe avere complicazioni, così il software modificato potrebbe essere più instabile, o comportarsi in maniera imprevista.[^ProblemiRimozioneDRM] Questo margine di incertezza sarebbe inaccettabile per il software ad uso scientifico.

[^ProblemiRimozioneDRM]: Continuando la similitudine con la chirurgia, il DRM deve agire come un tumore, deve integrarsi con il "software ospite" in profondità, in modo che sia difficile separarli, e deve creare "metastasi", andando a coprire tutte le parti del software.

Viceversa, il software libero evita tutti i problemi sopra indicati. Se si è in possesso di una copia del software, non ci sono ulteriori requisiti, restrizioni, né servono modifiche per poterlo eseguire.

### Libertà di studiare e modificare il programma

Le due libertà sono strettamente legate, perché è difficile modificare il programma se non si ha accesso al codice sorgente. Il codice sorgente viene definito in maniera estremamente generica come [@FSF-What-is-free-software]:

> *[T]he preferred form of the program for making changes in. Thus, whatever form a developer changes to develop the program is the source code of that developer's version.*[^DefinizioneCodiceSorgente]

[^DefinizioneCodiceSorgente]: "La rappresentazione del programma preferita per apportare cambiamenti. Pertanto, qualsiasi rappresentazione lo sviluppatore cambi al fine di sviluppare il programma è il codice sorgente di quella versione del programma."

Di solito il codice sorgente consiste in file di testo che contengono codice scritto in un determinato linguaggio di programmazione, ma qualsiasi elemento che contribuisce allo sviluppo del programma, e che può essere alterato dallo sviluppatore per cambiare il funzionamento del programma è comunque codice sorgente.

Inoltre, si specifica che "*[o]bfuscated "source code" is not real source code and does not count as source code*" (il codice sorgente offuscato non è vero codice sorgente, e non rileva come codice sorgente). Affinché il codice sorgente possa essere modificato in maniera utile, deve essere espresso in una forma comprensibile allo sviluppatore. L'offuscamento è un processo con cui il codice sorgente viene trasformato in maniera che esegua le stesse operazioni, e rimanga leggibile, ma è espresso in una forma incomprensibile.[^EsempioOffuscamento]

L'offuscamento è una cosa diversa dalla compilazione, il processo con cui il codice sorgente viene trasformato in modo che sia eseguibile dalla macchina. Anche il codice compilato è incomprensibile al programmatore, ma è comprensibile per il computer, ed è necessario compilare il codice sorgente per poterlo eseguire. L'offuscamento è opzionale.

[^EsempioOffuscamento]: La trasformazione consiste in usare nomi per le variabili e funzioni generati in maniera casuale, aggiungere codice inutile che serve solo come distrazione, non svolgere le operazioni in maniera semplice e lineare, ma creare numerosi valori intermedi che vengono combinati fra di loro in maniera intricata&hellip; \VediUrl{T. Serafim, T. Kachalov}{JavaScript Obfuscator Tool}{n.d.}{https://obfuscator.io}. L'offuscamento può essere utilizzato anche quando si va a compilare il codice. \VediUrl{xoreaxeaxeax}{movfuscator}{2020}{https://github.com/xoreaxeaxeax/movfuscator/tree/ea37dae93fbcd93f642c71a53878da588bd7ddb4}.

Se non si ha accesso al codice sorgente, si può solo studiare "cosa" fa il software. Se invece si ha accesso al codice sorgente, è possibile capire anche "perché" il software si comporta in un certo modo, andando a leggere le istruzioni di cui è composto. Ancora, è possibile modificare il software, aggiungendo, rimuovendo, o cambiando le istruzioni presenti a proprio piacere.

Se il codice sorgente viene fornito, ma si vieta la possibilità di modificarlo o ridistribuirlo, e in generale, se l'unica facoltà concessa è la possibilità di visionarlo, allora si parla di software non-libero, ma *source-available* (con codice sorgente disponibile). Ad esempio, il codice sorgente per il programma di backup *Tarsnap* è pubblicamente disponibile [@Github-Tarsnap], ed è possibile scaricare e compilare il codice sorgente, ma non è possibile compilare una versione modificata del software.[^TarsnapVersioneModificata]

[^TarsnapVersioneModificata]: \VediUrl{Tarsnap.com}{Tarsnap Terms and Conditions}{n.d.}{https://www.tarsnap.com/legal.html}. Il motivo per cui le modifiche non sono permesse è per garantire che il servizio costi il meno possibile. \VediUrl{Tarsnap.com}{Whys of Tarsnap Terms and Conditions}{n.d.}{https://www.tarsnap.com/legal-why.html\#UNMODIFIEDCLIENT}.

Normalmente il software non-libero non è distribuito con il codice sorgente, si riceve solo una copia del codice macchina, già compilato e pronto per essere eseguito. La l.d.a. afferma espressamente il diritto di poter studiare il funzionamento del software, anche se proprietario, e sanziona le clausole contrattuali che vietano questa possibilità con la nullità (art. 64-*ter*, co. 3):

> Chi ha il diritto di usare una copia del programma per elaboratore può, senza l'autorizzazione del titolare dei diritti, osservare, studiare o sottoporre a prova il funzionamento del programma, allo scopo di determinare le idee ed i principi su cui è basato ogni elemento del programma stesso \Omissis{} Le clausole contrattuali pattuite in violazione del presente comma e del comma 2 sono nulle.

Inoltre, la l.d.a. ammette la possibilità di eseguire il *reverse-engineering* ("ingegneria a ritroso"). Laddove la *software engineering* (ingegneria informatica) costruisce il software, la reverse-engineering serve a capire come il software è stato costruito. Consiste nell'analisi del codice macchina, già compilato, per riprodurre le funzionalità del codice sorgente originale, di cui non si dispone. Tuttavia, questa facoltà è limitata al solo scopo dell'interoperabilità (art. 64-*quater*, co. 1):

> L'autorizzazione del titolare dei diritti non è richiesta qualora la riproduzione del codice del programma di elaboratore e la traduzione della sua forma ai sensi dell'art. 64-bis, lettere a) e b), compiute al fine di modificare la forma del codice, siano indispensabili per ottenere le informazioni necessarie per conseguire l'interoperabilità, con altri programmi, di un programma per elaboratore creato autonomamente purché siano soddisfatte le seguenti condizioni:
>
> a) le predette attività siano eseguite dal licenziatario o da altri che abbia il diritto di usare una copia del programma oppure, per loro conto, da chi è autorizzato a tal fine;
> 
> b) le informazioni necessarie per conseguire l'interoperabilità non siano già facilmente e rapidamente accessibili ai soggetti indicati alla lettera a);
> 
> c) le predette attività siano limitate alle parti del programma originale necessarie per conseguire l'interoperabilità.

L'interoperabilità è definita come la "[c]apacità di due o più sistemi, reti, mezzi, applicazioni o componenti, di scambiare informazioni tra loro e di essere poi in grado di utilizzarle."[^DefinizioneInteroperabilità] Il software di analisi che viene usato nell'informatica forense rientra a pieno titolo all'interno di questa definizione, perché è interessato ad estrarre ed utilizzare informazioni da sistemi, reti, e altre applicazioni.

[^DefinizioneInteroperabilità]: \VediUrl{Treccani.it}{Interoperabilità}{2008}{https://www.treccani.it/enciclopedia/interoperabilita_\%28Enciclopedia-della-Scienza-e-della-Tecnica\%29/}.

Il limite fondamentale alla reverse-engineering è indicato nel co. 2 dello stesso articolo. Le informazioni ottenute non possono essere usate per "lo sviluppo, la produzione o la commercializzazione di un programma per elaboratore sostanzialmente simile nella sua forma espressiva, o per ogni altra attività che violi il diritto di autore".

L'obiettivo della norma è di prevenire la concorrenza sleale (mediante la creazione di software essenzialmente identico a software già esistente), e la pirateria (la rimozione delle misure di protezione richiede l'uso di tecniche di reverse-engineering). È estremamente improbabile che il software di analisi sia "sostanzialmente simile nella sua forma espressiva" rispetto al software analizzato, perché hanno finalità radicalmente diverse. Il software di analisi non può essere usato per svolgere le stesse funzioni del programma analizzato, serve solo ad estrarre ed elaborare informazioni che possono essere utili all'interno di un processo.

Infine, il co. 3 sanziona le clausole contrattuali che vietano il reverse-engineering (se eseguito con la specifica finalità dell'interoperabilità) con la nullità.

### Ridistribuire copie del software

Le ultime due libertà riguardano la possibilità di ridistribuire il software, "*either with or without modifications, either gratis or charging a fee for distribution, to anyone anywhere*" (con o senza modifiche, gratuitamente o addebitando il costo della distribuzione, a chiunque, e dovunque) [@FSF-What-is-free-software].

In inglese, il "software libero" è chiamato *free software*, e *free* può significare sia libero da vincoli, sia gratuito. Il *free software* può essere oggetto di vendita (se così non fosse, questo rappresenterebbe una limitazione alla libertà di ridistribuzione), ma dopo che qualcuno ha una copia, è libero di ridistribuirla gratuitamente [@FSF-Selling-free-software].

La ridistribuzione deve sempre includere una copia del codice sorgente, anche se non è stato modificato. Includere il codice macchina già compilato è una cortesia per la convenienza dell'utente, in modo che il programma possa essere eseguito subito, ma non un requisito.

Il software non-libero invece generalmente nega la possibilità di ridistribuirlo, o esplicitamente, con i termini contrattuali con cui viene venduto o fornito, o implicitamente, perché i termini contrattuali non concedono questo diritto a chi ne ottiene una copia.

### Vantaggi del software libero per l'informatica forense

Riassumendo, il software libero è caratterizzato dalla possibilità di essere eseguito, studiato, modificato e ridistribuito. Tutte queste facoltà devono poter essere esercitate liberamente, senza vincoli o condizioni.

Per quanto riguarda le esigenze processuali, la possibilità di studiare il funzionamento del software è la più importante, perché è strettamente funzionale al pieno svolgimento del diritto di difesa. Una difesa approfondita e specifica è possibile solo se è possibile sapere "perché" il software ha prodotto un certo risultato, se è possibile consultare le esatte istruzioni di cui è composto all'origine. In mancanza di queste informazioni, il contraddittorio fra le parti viene svuotato del suo significato, perché non ci sono molti punti su cui discutere. Viceversa, in presenza di queste informazioni è effettivamente possibile verificare se il software svolge l'analisi in maniera adeguata e conforme al suo scopo.

Rileva anche la possibilità di modificare il software. Ad esempio, la risoluzione dei quesiti posti dal giudice potrebbe richiedere la modifica dei metodi di analisi esistenti, o la creazione di nuovi, oppure durante il contraddittorio tecnico si potrebbe scoprire la presenza di un bug, che potrebbe essere corretto.

La possibilità di eseguire e distribuire il software rilevano ai fini del contraddittorio, in modo che tutte le parti possano avere la copia degli stessi esatti strumenti che sono stati usati, e possano studiare liberamente il codice sorgente. Inoltre, rileva anche ai fini della ripetibilità futura delle analisi, perché la copia del software usato può essere liberamente conservata insieme alla copia dei dati.

Per quanto riguarda le esigenze scientifiche, la possibilità di eseguire e ridistribuire il codice permette di verificare che i risultati dello studio siano effettivamente riproducibili, mentre la possibilità di studiare il codice sorgente permette di verificare la ragionevolezza e correttezza degli strumenti o tecniche di analisi implementate. La possibilità di modificare il codice rileva nel momento successivo alla peer-review. Dopo che i ricercatori hanno mosso le loro critiche, possono anche pubblicare la loro versione corretta e migliorata del software.

In generale, i principi che guidano il software libero sono in buona parte analoghi ai principi della trasparenza e del confronto fra più punti di vista, che sono alla base della ricerca scientifica e del contraddittorio nel processo. Il modello di software libero non è stato sviluppato per soddisfare queste esigenze, ma è innegabile che le sue caratteristiche lo rendono il miglior candidato per lo sviluppo di software scientifico ad uso processuale.

Si possono svolgere due ulteriori osservazioni rispetto al software libero. La prima è che il suo sviluppo è solitamente (ma non necessariamente) trasparente e aperto al pubblico. Le discussioni che avvengono fra gli sviluppatori, e fra utenti del software e sviluppatori, sono solitamente pubbliche.[^SoftwareLiberoMailingList] I *bug* vengono raccolti, discussi e risolti pubblicamente.[^SoftwareLiberoBugTracker] Spesso gli sviluppatori incoraggiano gli utenti a contribuire *patch* ("pezze"), ossia i cambiamenti e miglioramenti che questi ultimi hanno apportato alla loro copia del codice sorgente, in modo che possano essere integrate nella copia del codice gestita degli sviluppatori originali, e tutti possano beneficiarne.[^SoftwareLiberoPatch]

[^SoftwareLiberoMailingList]: La forma più tradizionale sono le *mailing lists* (liste di discussione). Ad esempio, il progetto GNU ha numerose *mailing lists*. Se il nome della lista contiene *bug*, la lista è per la segnalazione di bug, se contiene *devel* è usata dagli sviluppatori per coordinare le loro attività, se contiene *user* è usata dagli utenti per chiedere informazioni e dirigere richieste agli sviluppatori. \VediUrl{GNU.org}{Mail Archives}{n.d.}{https://lists.gnu.org/archive/html/}.
[^SoftwareLiberoBugTracker]: Un *bug tracker* è un programma sviluppato in maniera specifica per la gestione dei bug. Ad esempio, per i bug di Chromium (il software libero alla base di Chrome), \vediUrl{Chromium.org}{Chromium Bugs}{n.d.}{https://bugs.chromium.org/p/chromium/issues/list}.
[^SoftwareLiberoPatch]: Il nome *patch* deriva dal fatto che sono "cucite" all'interno del software per "chiudere un buco" (eliminare un bug), oppure per "ampliare l'area" coperta dal software (aggiungere nuove funzionalità). Le *patch* possono essere inviate e discusse via mail, ed alcuni progetti, come il kernel Linux, accettano esclusivamente contribuzioni inviate in questo modo (\vediUrl{Comunità degli sviluppatori del kernel Linux}{Submitting patches: the essential guide to getting your code into the kernel}{n.d.}{https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html}), ma le piattaforme che ospitano codice sorgente più recenti come GitHub offrono agli sviluppatori modalità più agevoli per visionare ed integrare i cambiamenti, detta *pull request* (richiesta di inclusione dei cambiamenti, "pull" significa "tirare" i cambiamenti fatti da altri nella propria copia del codice).

I *fork* (bivi) del software libero avvengono quando invece di integrare le modifiche nel progetto originale, gli sviluppatori che le hanno proposte continuano a sviluppare una copia del progetto originale, in parallelo con gli sviluppatori originali. Il nome deriva dal fatto che ad un certo punto il codice sorgente inizia a divergere in due versioni separate.

I motivi che possono portare ad un fork possono essere disaccordi tecnici (su quali modifiche includere), "politici" (se un gruppo di sviluppatori non è contento con il modo in cui il software è sviluppato),[^ForkMotivi] o perché il progetto originale è stato abbandonato dai suoi sviluppatori. La possibilità di creare *fork* permette al software libero di sopravvivere nel tempo, ed evitare il *maintainer hit by a bus problem* (problema dello sviluppatore colpito da un autobus).

Se le persone fisiche e legali che sviluppano il software non-libero vengono a mancare per qualsiasi motivo, il software non sarà più aggiornato, e sarà sempre più difficile continuare a farlo funzionare.[^BackwardsCompatibility] Viceversa, il software libero può sempre essere studiato e modificato dalla comunità di utilizzatori, in modo che continui a funzionare correttamente nel tempo, nonostante l'evoluzione tecnologica.

[^BackwardsCompatibility]: Ad esempio, si immagini di dover provare a far funzionare del software sviluppato per Windows XP sulle versioni più moderne di Windows. Windows offre la possibilità di eseguire i programmi in modalità di compatibilità con le versioni precedenti, ma se non è dato sapere esattamente come questo meccanismo funziona, è rischioso ed inopportuno usarlo per il software scientifico, dato che è necessario dimostrare in modo rigoroso il suo corretto funzionamento.
[^ForkMotivi]: Ad esempio, se un software è sviluppato esclusivamente da una sola persona, che ha una visione personale del software estremamente specifica, e questo limita la possibilità di contribuire cambiamenti, è possibile fare un *fork* di quel software, in modo che la partecipazione allo sviluppo del *fork* sia più democratica.

Un ulteriore vantaggio del software libero è che si presta ad essere *super partes*. È impossibile far prevalere gli interessi di una parte sugli interessi di un'altra, perché entrambe sono libere di apportare le modifiche che vogliono, senza danneggiare l'altra. Pertanto, il software libero nel tempo tende naturalmente a soddisfare tutti gli interessi di tutte le parti, tende a supportare quanti più formati e funzionalità possibili, mentre il software non-libero soddisfa solo gli interessi degli sviluppatori originali.

Quanto detto finora riguarda in maniera specifica il software libero per l'informatica forense. Tuttavia, per sviluppare software è necessario usare altro software. L'attività di ricerca scientifica richiede software, per fare il *debug* degli strumenti di analisi sviluppati serve software, per compilare il codice sorgente serve software, per eseguire il software serve un sistema operativo&hellip;

Idealmente, tutti i vari componenti che partecipano alla creazione ed esecuzione del software libero ad uso scientifico devono essere a loro volta liberi, in modo che i vantaggi tecnici e scientifici del software libero valgano anche per loro. Ogni elemento non-libero nella filiera produttiva del software ad uso scientifico rappresenta un elemento di cui non è dato sapere l'esatto funzionamento, o che non è possibile modificare e migliorare, e questo va a danno del software finale.

## Licenze d'uso del software nell'ordinamento italiano

Di per sé, il codice non è intrinsecamente "software libero". Le libertà che distinguono il software libero dal software non-libero non trovano il loro fondamento nel codice stesso, ma principalmente[^SoftwareLiberoLibertà] dai termini con cui il codice viene offerto al pubblico. Secondo il trattato dell'OMPI sul diritto d'autore, il software è considerato un'opera letteraria (ai sensi dell'art. 2 della Convenzione di Berna), indipendentemente dal modo in cui sia espresso (art. 4) [@Blomqvist2014, 87--88].

[^SoftwareLiberoLibertà]: In verità, il codice sorgente può contenere limitazioni alle libertà. La libertà di eseguire il codice può essere limitata artificialmente, includendo dei controlli che fanno terminare l'esecuzione del programma a determinate condizioni. La libertà di studiare il codice può essere limitata usando tecniche di offuscamento (ma a quel punto è difficile parlare di "codice sorgente"). La libertà di apportare modifiche può essere limitata se si includono delle funzioni per controllare l'integrità del software. La libertà di ridistribuire il software può essere parzialmente limitata allo stesso modo con cui viene limitata l'esecuzione (non è possibile impedire la copia dei dati informatici di cui è composto il software). Tuttavia, queste limitazioni che tendono a rendere il programma non-libero hanno senso solo se il software viene offerto come codice macchina. Se viene offerto come codice sorgente, può essere sempre modificato per rimuoverle (salvo il caso dell'offuscamento, dove il codice deve essere essenzialmente riscritto).

Il godimento ed esercizio dei diritti previsti dalla Convenzione di Berna non sono condizionati dall'esercizio di nessuna formalità (art. 5(2)). Pertanto, se qualcuno sviluppa del software, ne detiene automaticamente il diritto d'autore, e se pubblica il codice sorgente su internet, i diritti rimangono riservati.

L'unica libertà esercitabile dai soggetti terzi è la possibilità di studiare il codice sorgente. Le altre libertà (eseguire il software, fare modifiche, ridistribuirlo) implicano la riproduzione dell'opera, che è un diritto esclusivo dell'autore (art. 9(1)). Per questo motivo, è necessario distribuire il software al pubblico secondo dei termini che permettano l'esercizio di tutte le libertà.

Questi termini sono contenuti nel contratto di licenza d'uso del software. È un modello di origine statunitense, in cui il licenziante (generalmente, chi sviluppa il software) concede al licenziatario (chi ne ottiene una copia) vari diritti, a titolo gratuito o oneroso. Il diritto più fondamentale è la possibilità di usare il software.

Il termine "licenza" è un calco linguistico dall'inglese *license*, in italiano le "licenze" propriamente dette riguardano la possibilità di sfruttare economicamente il diritto di privativa industriale (marchi e brevetti) [@Geraci2015, 7--8]. Nel seguito della trattazione, i termini "contratto di licenza d'uso" e "licenza" saranno usati in maniera intercambiabile.

Il software non-libero generalmente usa licenze scritte *ad hoc*, che negano, o non concedono espressamente le libertà fondamentali necessarie per il software libero. Per quanto riguarda il software libero, è preferibile usare le licenze che sono state approvate dalla FSF (Free Software Foundation)[^LicenzeApprovateFSF] e dalla OSI (Open Source Initiative).[^LicenzeApprovateOSI] Le licenze approvate dalla FSF sono licenze che garantiscono le libertà fondamentali elencate in precedenza.

Le licenze approvate dalla OSI sono licenze che sono conformi alla loro definizione specifica di *open-source* (sorgente aperto), che non significa semplicemente l'accesso al codice, ma prevede anche altri requisiti.[^DefinizioneOpenSource] Per semplicità, in seguito si parlerà in maniera più generica di "licenze d'uso a codice disponibile" [@Geraci2015, 56].

[^LicenzeApprovateFSF]: \VediUrl{Free Software Foundation}{Various Licenses and Comments about Them}{2023}{https://www.gnu.org/licenses/license-list.html}.
[^LicenzeApprovateOSI]: \VediUrl{Open Source Initiative}{OSI Approved Licenses}{n.d.}{https://opensource.org/licenses/}.
[^DefinizioneOpenSource]: \VediUrl{Open Source Initiative}{The Open Source Definition}{2023}{https://opensource.org/osd/}.

È fortemente sconsigliato scrivere una licenza a codice disponibile *ad hoc*, per vari motivi. In primo luogo, una licenza è un contratto, e quindi deve essere redatta da un esperto in materie legali. 

Le licenze a codice disponibili più famose sono state usate in procedimenti giudiziari, ed esistono precedenti che ne affermano la loro conformità all'ordinamento giuridico, e alla possibilità di farle valere in giudizio.[^PrecedentiLicenzeLibere] Una licenza inedita non avrebbe questo vantaggio.

[^PrecedentiLicenzeLibere]: Per un riassunto di vari casi, \vediUrl{AA. VV.}{Have there been any lawsuits involving breach of open source licences?}{2021}{https://opensource.stackexchange.com/questions/11452/have-there-been-any-lawsuits-involving-breach-of-open-source-licences}.

Ancora, uno dei vantaggi più importanti del software libero è la possibilità di condividere il codice sorgente fra più progetti, ed includere codice già esistente nel proprio progetto. A questo fine, è necessario verificare che le varie licenze con cui i vari componenti sono distribuiti siano compatibili fra di loro, ossia, che i termini delle varie licenze non si contraddicano fra di loro. Questa analisi è stata già svolta per le licenze a codice disponibile più utilizzate, ma andrebbe fatta caso per caso se ciascuno usasse una propria licenza [@Stallman-License-compatibility-and-relicensing].

Il problema più importante è stabilire l'inquadramento delle licenze a codice disponibile all'interno dell'ordinamento giuridico italiano. La legge sul diritto d'autore permette la trasmissione dei vari diritti che spettano agli autori ad altri soggetti, all'art. 107:

>  I diritti di utilizzazioni spettanti agli autori delle opere dell'ingegno, nonché i diritti connessi aventi carattere patrimoniale, possono essere acquistati, alienati o trasmessi in tutti i modi e forme consentiti dalla legge \Omissis{}

Il contratto con cui i diritti vengono trasmessi può essere anche un contratto atipico (art. 1322 c.c.) [@Geraci2015, 16], e la trasmissione deve essere provata per iscritto (art. 110). Nel tempo sono stati dati vari inquadramenti del contratto di licenza d'uso come all'interno delle fattispecie di contratto tipiche e già regolate dal codice civile. Ad esempio, è stato qualificato come un contratto di locazione che ha ad oggetto l'uso del software [@Geraci2015, 21], oppure come un contratto di compravendita che ha per oggetto la trasmissione del diritto di usare il software [@Geraci2015, 23].

Mentre è teoricamente possibile far rientrare l'uso del software all'interno dell'oggetto di quei contratti tipici, rimane il problema delle altre caratteristiche dei contratti, che non erano stati originariamente pensati per il software. Ancora, locazione e compravendita riguardano solo l'uso del software, mentre il software libero fornisce più diritti all'utente, e locazione e compravendita sono contratti a titolo oneroso, mentre il software libero di solito viene distribuito gratuitamente. Pertanto, è preferibile inquadrare i contratti di licenza d'uso a codice disponibile come contratti atipici.

I rapporti giuridici che formano l'oggetto del contratto devono essere patrimoniali, ossia, devono poter avere una valutazione patrimoniale [@Galgano2013, 228]. I diritti che sono oggetto di trasmissione rientrano sicuramente in questa categoria. I contratti possono essere a titolo gratuito, ossia, la prestazione di una delle parti non richiede una controprestazione dall'altra parte [@Galgano2013, 248].

In verità, le licenze possono richiedere delle controprestazioni a chi riceve il codice, ma generalmente si tratta di obblighi di non fare che hanno natura più morale che patrimoniale, come "non cancellare il nome degli autori", "non rimuovere la licenza", e nel caso delle licenze *copyleft*, "non distribuire le versioni modificate del codice con una licenza diversa".

Infine, è possibile concludere contratti atipici, purché siano finalizzati a realizzare "interessi meritevoli di tutela secondo l'ordinamento giuridico" (art. 1322 co. 2 c.c.). Questo significa che gli interessi perseguiti devono essere leciti, ma anche avere una causa. Per gli atti che trasferiscono diritti senza corrispettivo, la *causa donandi* deve essere resa esplicita, a pena di nullità [@Galgano2013, 248--250]. 

L'individuazione della causa dei contratti di licenza d'uso a codice disponibile che sono conclusi a titolo gratuito potrebbe essere l'unico problema per il loro riconoscimento. Tuttavia, è possibile ritenere che la loro causa sia la liberalità. La liberalità è caratterizzata dal fatto che soddisfa un interesse non patrimoniale, non viene fatta perché "conviene" dal punto di vista economico [@Galgano2013, 924--925]. Questo è sicuramente il caso del software libero, che è ispirato da un modello fortemente idealistico, e non interessato a fini di risparmio economico.

## Licenze copyleft (GPL)

- Opere derivate devono usare la stessa licenza, e distribuire il codice sorgente
- Ideale per il software scientifico

## Licenze permissive (LGPL, MIT)

- Opere derivate possono rimanere proprietarie

## Licenze per la documentazione

- Per la ricerca scientifica e per la documentazione dei programmi
- Licenze per le raccolte di dati
