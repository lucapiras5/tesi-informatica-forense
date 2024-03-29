# Software scientifico e software libero

## Software usato dall'informatica forense {#software-usato-informatica-forense}

Da questa nozione seguono alcune importanti conseguenze.

Una delle caratteristiche dei dati digitali è che possono essere copiati con facilità per un numero illimitato di volte. Pertanto, in teoria, è possibile anche copiare il software usato per l'analisi, dato che consiste in semplici dati, in modo che il perito ed i consulenti dispongano non solo degli stessi dati, ma anche degli stessi strumenti di analisi.

Inoltre, i dati informatici non hanno senso in isolamento. Non è sempre possibile determinare se un dato è stato modificato osservando soltanto il singolo dato, perché è generalmente possibile modificare i singoli bit che compongono i dati senza lasciare tracce. Spesso è necessario cercare altri elementi che facciano riferimento a quel file all'interno dell'intero sistema.

Allo stesso modo, copiare il singolo programma potrebbe non essere sufficiente. I programmi spesso hanno bisogno di librerie di terze parti,[^DefinizioneLibreriaEsterna] o possono essere eseguiti solo su versioni particolari di un sistema operativo. Anche al di fuori di questi casi, lo stesso programma si potrebbe comportare in maniera diversa se installato su due computer diversi, per un qualsiasi numero di motivi, che sono difficili da determinare a priori.[^MotiviComportamentoDiversoProgrammi] Per questi motivi, è preferibile copiare l'intero "contesto" in cui il programma viene eseguito, ossia, l'intero sistema operativo utilizzato. In questo modo, perito e consulenti dispongono anche dello stesso, identico ambiente virtuale usato per analizzare i dati.

[^DefinizioneLibreriaEsterna]: Nell'informatica, una *library* ("libreria") è una raccolta di codice (istruzioni) che non possono essere eseguite direttamente, ma hanno una funzione di supporto rispetto al software che viene eseguito. Si può pensare al rapporto che intercorre fra il perito ed il giudice: il perito non esercita il potere giurisdizionale, ma il suo ruolo è di fornire le conoscenze tecniche necessarie al giudice per svolgere il suo ruolo nella migliore maniera possibile. Ad esempio, numerosi programmi devono poter decodificare un file JPG: un visualizzatore di immagini, un browser, un programma per la *image forensics* (analisi forense delle immagini)&hellip; La soluzione è di creare una libreria che possa essere utilizzata da tutti questi programmi. Gli sforzi vengono concentrati su un unico progetto specializzato, non c'è una duplicazione di sforzi o codice inutile, e tutti i miglioramenti alla libreria (ad esempio, nuove funzionalità, maggiore efficienza, correzione di bug&hellip;) beneficiano tutti i programmi che la utilizzano. La soluzione alternativa, dove ogni programma deve "reinventare la ruota" per ogni formato che intende utilizzare, sarebbe estremamente inefficiente e porterebbe ad una disparità di trattamento (non tutti i programmi avrebbero le stesse funzionalità, avrebbero bug diversi, ed in generale, si comporterebbero in maniera diversa).

[^MotiviComportamentoDiversoProgrammi]: Ad esempio, i due computer potrebbero avere due versioni diverse della stessa libreria esterna. Una versione ha un bug, che produce risultati erronei. L'altra versione è più recente, e ha risolto questo bug. Le due versioni possono produrre risultati diversi. Allo stesso modo, analoghe considerazioni possono essere svolte riguardo l'esecuzione dello stesso programma su sistemi operativi diversi (ad esempio, Windows e GNU/Linux), o anche fra versioni diverse dello stesso sistema operativo (che possono aggiornare le librerie incluse nel sistema operativo). Naturalmente, è probabile che queste differenze siano insignificanti nella pratica, ma è comunque preferibile eliminare le differenze dove possibile, in modo che il contraddittorio riguardi effettivamente lo stesso oggetto, e non oggetti diversi. 

Nella pratica, questa possibilità può essere limitata per motivi tecnici e/o legali.

Se vengono usati dispositivi specializzati, diversi da un normale computer, per l'acquisizione, potrebbe essere difficile o impossibile ottenere una copia del software che regola il loro funzionamento. Anche quando il software viene eseguito su un normale computer, il suo funzionamento potrebbe essere condizionato dall'uso di misure di protezione hardware.[^HardwareDongle]

[^HardwareDongle]: Ad esempio, un *hardware dongle* (chiave di protezione hardware), un supporto materiale che deve rimanere inserito durante il funzionamento del software, e permette di identificare il licenziatario che sta usando il software. In sua assenza, il software si rifiuta di funzionare.

D'altro canto, esistono delle eccezioni e limitazioni a questo diritto. In particolare, l'art. 67 recita:

> Opere o brani di opere possono essere riprodotti a fini di pubblica sicurezza, nelle procedure parlamentari, giudiziarie o amministrative, purché si indichino la fonte e, ove possibile, il nome dell'autore.

Il processo penale è sicuramente una delle "procedure giudiziarie" che hanno "fini di pubblica sicurezza".

Più in generale, l'art. 68 co. 1 e 6 prevedono che:

> 1\. È libera la riproduzione di singole opere o brani di opere per uso personale dei lettori, fatta a mano o con mezzi di riproduzione non idonei a spaccio o diffusione dell'opera nel pubblico.

> 6\. È vietato lo spaccio al pubblico delle copie di cui ai commi precedenti e, in genere, ogni utilizzazione in concorrenza con i diritti di utilizzazione economica spettanti all'autore.

Sono eccezioni ad una regola generale, e quindi devono essere interpretate in maniera restrittiva. Si potrebbe argomentare che la creazione di una copia nel contesto di un procedimento giudiziario non è un "uso personale", ma piuttosto esiste un interesse pubblico. Ma la *ratio*, l'intento della norma è chiaro, la creazione di copie è ammessa, purché non danneggi la possibilità di sfruttamento economico dell'opera da parte dell'autore.

Creare una copia del software, in modo da permettere alle altri processuali di svolgere un contraddittorio non solo sui metodi usati e sul risultato dell'analisi, ma anche sullo specifico strumento usato per svolgere l'analisi nel caso concreto, difficilmente può essere considerato un ostacolo allo sfruttamento economico del software, essenzialmente una "vendita persa", e tanto meno una "diffusione dell'opera nel pubblico".

L'ultima caratteristica da considerare, che sarà oggetto di trattazione nel resto del capitolo, è il formato in cui le istruzioni di cui il *software* è composto vengono espresse. Questo è forse il punto più cruciale. Fornire una copia dell'ambiente di analisi usato (inteso come la combinazione di sistema operativo, software e dati) beneficia il contraddittorio, perché permette alle controparti di interagire con gli strumenti e ripetere le operazioni svolte, ma si può andare ancora oltre.

## Fasi per il trattamento della prova informatica {#fasi-trattamento-prova-informatica}

<!-- le fasi per il trattamento sono riprese nel sottocapitolo successivo -->

Il trattamento della prova informatica può essere diviso in sette fasi [@Ferrazzano2014, 29].

L'identificazione (prima fase) consiste nella ricerca dei supporti materiali che possono contenere dati informatici utili. Si devono considerare le loro caratteristiche, in modo da stabilire le priorità e modalità di acquisizione [@Ferrazzano2014, 29--30].

La raccolta (seconda fase) consiste nel rimuovere fisicamente i supporti materiali su cui i dati sono conservati, e qualsiasi altro oggetto che sia necessario per il loro funzionamento, o utile per le indagini. In alcuni casi (sistemi informatici che devono rimanere accesi perché erogano servizi essenziali, dati presenti su server di terze parti&hellip;), la raccolta non è possibile, e si può procedere solo all'acquisizione [@Ferrazzano2014, 30--34].

## Esigenze processuali

Il principio fondamentale nel processo penale è la formazione della prova nel contraddittorio. Tutte le operazioni precedenti, che riguardano anche solo indirettamente il contraddittorio, devono essere svolte con l'obiettivo di garantire la sua migliore realizzazione possibile.

### Acquisizione

Per quanto riguarda la prova informatica, la prima fase del suo trattamento in cui rileva l'uso di software è l'acquisizione di dati.
La legge di ratifica ed esecuzione della Convenzione di Budapest[^LeggeRatificaEsecuzioneConvenzioneBudapest] ha modificato vari articoli del codice di procedura penale, prevedendo esplicitamente che l'acquisizione di dati informatici non modifichi i dati originali, e crei una copia uguale all'originale (art. 8).

[^LeggeRatificaEsecuzioneConvenzioneBudapest]: L. 48/2008.

Da un punto di vista concettuale, soddisfare questi requisiti è apparentemente semplice. Basta garantire che il software esegua solo operazioni in lettura, e mai in scrittura, sul supporto originale, e che la copia sia identica all'originale, bit per bit. Tuttavia, quando si considerano i dettagli tecnici, le operazioni diventano più complicate.

## Definizione di software libero

Il modo migliore per garantire tutte le esigenze che sono state elencate in precedenza è di usare il software libero, ossia, il software che viene distribuito al pubblico in maniera da garantire quattro libertà fondamentali [@FSF-What-is-free-software]:

- Eseguire il programma a piacere, per qualsiasi finalità.
- Studiare come il programma funzioni, ed effettuare cambiamenti in modo che funzioni a proprio piacimento.
- Ridistribuire copie del software (non modificato), così che tutti possano usare il software.
- Ridistribuire copie modificate del software, insieme al codice sorgente, così che tutti possano beneficiare dei miglioramenti o cambiamenti apportati.

In mancanza di anche solo una di queste libertà, si parla di software non-libero.

## Libertà di eseguire il programma

La prima libertà è la libertà più fondamentale di tutte, ed è importante che sia indicata espressamente. Viene spiegata in questo modo [@FSF-What-is-free-software]:

> *The freedom to run the program means the freedom for any kind of person or organization to use it on any kind of computer system, for any kind of overall job and purpose, without being required to communicate about it with the developer or any other specific entity.*[^FreedomRunProgram]

[^FreedomRunProgram]: "La libertà di eseguire il programma indica la libertà per qualsiasi persona o organizzazione di usarlo su qualsiasi tipo di sistema informatico, per qualsiasi tipo di lavoro o scopo complessivi, senza richiedere che lo si comunichi allo sviluppatore, o altre entità."

Un software che non può essere eseguito sembrerebbe un ossimoro, ma è una situazione che si presenta con regolarità con il software venduto commercialmente. Le licenze sono uno strumento con cui lo sviluppatore concede la possibilità di eseguire il programma. L'accordo che regola la licenza può liberamente indicare scopi per cui il software non può essere usato. Se questo accordo viene violato, lo sviluppatore può liberamente e unilateralmente revocare o disattivare la licenza, e quindi rendere il programma inutilizzabile, non solo da un punto di vista legale, ma anche da un punto di vista tecnico.

Il programma in sé può sempre essere copiato, è difficile creare misure tecniche che impediscano in maniera assoluta la copia dei dati. Per rimediare a questo problema, il software include misure di protezione che controllano la presenza di una licenza valida (ad esempio, controllando la presenza di *dongle* USB che contengono una licenza in formato digitale, e/o contattando i server dello sviluppatore per verificare che l'utente è registrato ed autorizzato ad usare il programma&hellip;) ed in caso contrario, fermano l'esecuzione del programma.

L'art. 11 del *WIPO Copyright Treaty* regola l'uso di misure tecnologiche per questo scopo [@Blomqvist2014, 205]:

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

## Libertà di studiare e modificare il programma

### Accesso al codice sorgente

Se non si ha accesso al codice sorgente, si può solo studiare "cosa" fa il software. Se invece si ha accesso al codice sorgente, è possibile capire anche "perché" il software si comporta in un certo modo, andando a leggere le istruzioni di cui è composto. Ancora, è possibile modificare il software, aggiungendo, rimuovendo, o cambiando le istruzioni presenti a proprio piacere.

### Giurisprudenza amministrativa sulle decisioni algoritmiche

L'importanza di conoscere il funzionamento del software e degli algoritmi che vengono usati per prendere una decisione sono stati evidenziati dalla giurisprudenza amministrativa,^[\VediUrl{TAR Campania, Napoli, Sez. III}{Sent. 14 novembre 2022, n. 7003}{2022}{https://portali.giustizia-amministrativa.it/portale/pages/istituzionale/visualizza?nodeRef=&schema=tar_na&nrg=202105119&nomeFile=202207003_01.html&subDir=Provvedimenti}.] ma i principi sono gli stessi per qualsiasi tipo di decisione:

> Tra le indicate garanzie assume primaria importanza il rispetto del principio di trasparenza, che, com'è noto, trova un immediato corollario nell'obbligo di motivazione degli atti amministrativi ex art. 3 l. 241/90 e che non può essere soppresso né ridotto sol per la presenza di un algoritmo all'interno dell'iter procedimentale.
>
> Invero, il fatto che il provvedimento venga emanato sulla scorta di una complessa operazione di calcolo produce l'opposto effetto di rafforzare, per certi versi, l'obbligo motivazionale in capo all'Amministrazione, la quale dovrà rendere la propria decisione finale non solo conoscibile, ma anche comprensibile.
>
> Occorre spostare l'attenzione a monte, sulla costruzione dell'algoritmo; su come i parametri dell'algoritmo vengono scelti (operazione di per sé soggettiva), e come si combinano tra loro; e ancor prima su come i termini assunti quale parametro siano stati realizzati.
>
> La questione dell'individuazione dei termini da assumersi per la costruzione dell'algoritmo indica il momento in cui si opera la scelta caratterizzata da discrezionalità, sì che a queste fasi preliminari alla nascita dell'algoritmo devono essere anticipate le garanzie che devono accompagnare ogni scelta dell'amministrazione.
> 
> Fondamentale è a tal fine la garanzia di trasparenza, volte ad assicurare la conoscibilità della costruzione dell'algoritmo, anche, eventualmente, in funzione del sindacato sull'atto adottato sulla base dello stesso: "la decisione amministrativa automatizzata impone al giudice di valutare in primo luogo la correttezza del processo informatico in tutte le sue componenti: dalla sua costruzione, all'inserimento dei dati, alla loro validità, alla loro gestione" (cfr. Cons. St., sez. VI, n. 2270/2019).
> 
> In caso di decisione fondata su algoritmo, si richiede pertanto che sia assicurata una "declinazione rafforzata del principio di trasparenza", intesa come "piena conoscibilità della regola espressa in un linguaggio differente da quello giuridico" (Cons. St., sez. VI, n. 2270/2019).

Il software libero è pienamente in grado di soddisfare il principio di trasparenza, il giudice può (e deve) spiegare come il software funziona, e perché l'algoritmo usato è utile ai fini della decisione. Viceversa, nel caso di software non-libero, per cui non è possibile conoscere il suo funzionamento, la decisione viene rimessa ad una "scatola nera", di cui non si conosce il funzionamento, con evidenti ricadute sul diritto alla difesa, ed il diritto ad un giusto processo [@Maldonato2019, 408--410].

La sentenza evidenza inoltre due diritti di origine europea.

Il principio di conoscibilità dà il diritto "sia a conoscere l'esistenza di processi decisionali automatizzati che lo riguardino, sia a ricevere informazioni significative sulla logica utilizzata, così come previsto dagli artt. 13 e 14 del GDPR (Regolamento 2016/679) che risultano formulati in maniera generale e, perciò, applicabili sia a decisioni prese da soggetti privati che da soggetti pubblici (cfr. Cons. St. s. 8472/2019)."

Il principio di "non esclusività della decisione algoritmica (art. 22 GDPR) \Omissis{} attribuisce al destinatario degli effetti giuridici di una decisione automatizzata il diritto a che tale decisione non sia basata unicamente sul processo automatizzato, affidando al funzionario responsabile il compito di controllare, e quindi validare o, al contrario, smentire la decisione automatica."

Ad analogo risultato è giunta la Corte Suprema del Winsconsin nel caso Loomis. Loomis aveva completato un questionario sul rischio di recidiva che usava un algoritmo proprietario e segreto, chiamato COMPAS, e sulla base del risultato di questo questionario, la corte "aveva condannato Loomis a sei anni di reclusione e cinque anni di *extended supervision*". Loomis impugnò questa sentenza, sostenendo che l'uso dell'algoritmo lo aveva privato del suo diritto ad avere una sentenza individualizzata, e nel 2016, la Corte Suprema affermò che l'algoritmo non può essere l'unico strumento usato per fondare una pronuncia di condanna [@Maldonato2019, 404].

Per quanto riguarda il principio di conoscibilità, se si ha il diritto di conoscere in maniera dettagliata come funzionano i processi decisionali automatizzati che riguardano una persona, a maggior ragione si ha il diritto di conoscere il funzionamento dell'algoritmo usato per fondare o determinare una condanna, l'applicazione di misure di sicurezza, e altre norme processuali (art. 187 c.p.p.).

Per quanto riguarda il principio di non-esclusività, il giudice non può accettare in maniera acritica il risultato prodotto dal software di analisi. Anzi, più la decisione si fonda su quel risultato, e più il giudice deve dimostrare l'affidabilità di quel risultato.

## Libertà di ridistribuire copie modificate e non del software

Le ultime due libertà riguardano la possibilità di ridistribuire il software, "*either with or without modifications, either gratis or charging a fee for distribution, to anyone anywhere*" (con o senza modifiche, gratuitamente o addebitando il costo della distribuzione, a chiunque, e dovunque) [@FSF-What-is-free-software].

In inglese, il "software libero" è chiamato *free software*, e *free* può significare sia libero da vincoli, sia gratuito. Il *free software* può essere oggetto di vendita (se così non fosse, questo rappresenterebbe una limitazione alla libertà di ridistribuzione), ma dopo che qualcuno ha una copia, è libero di ridistribuirla gratuitamente [@FSF-Selling-free-software].

La ridistribuzione deve sempre includere una copia del codice sorgente, anche se non è stato modificato. Includere il codice macchina già compilato è una cortesia per la convenienza dell'utente, in modo che il programma possa essere eseguito subito, ma non un requisito.

Il software non-libero invece generalmente nega la possibilità di ridistribuirlo, o esplicitamente, con i termini contrattuali con cui viene venduto o fornito, o implicitamente, perché i termini contrattuali non concedono questo diritto a chi ne ottiene una copia.

## Vantaggi del software libero per l'informatica forense

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

## Limiti del software libero, e soluzioni

### Finanziamenti

Nonostante i vantaggi del software libero, il software non-libero mantiene comunque alcuni vantaggi.

Il primo vantaggio è la quantità di capitale disponibile per lo sviluppo del software non-libero. Dato che viene offerto a pagamento, e dato che il software per l'analisi forense tende ad essere un mercato ristretto, con pochi sviluppatori, il costo per una singola licenza di un programma è nell'ordine delle centinaia o migliaia di euro. Questo permette di coprire i costi di sviluppo e reinvestire nel miglioramento del software, mentre il software libero è distribuito gratuitamente, e quindi non produce entrate.

Tuttavia, il fatto che il software libero è offerto gratuitamente non significa che debba essere anche sviluppato gratuitamente. È possibile finanziare il suo sviluppo in vari modi:

- Mediante donazioni occasionali o ricorrenti,^[Ad esempio, RPCS3, il progetto per l'emulazione della console PlayStation 3, ottiene circa 2.000 euro al mese da più di 500 donatori. V. <https://www.patreon.com/nekotekina/about>.] Gli sviluppatori possono incentivare le donazioni promettendo l'implementazione di certe funzionalità al raggiungimento di certe somme.
- Offrendo agli sviluppatori una somma di denaro, per dare maggiore priorità allo sviluppo o aggiunta di una certa funzionalità. A differenza della donazione, questo è essenzialmente un contratto d'opera. Per garantire che il software rimanga libero, e i miglioramenti vadano a beneficio di tutti, è importante specificare che il codice scritto sarà fornito secondo gli stessi termini del programma principale.
- Vendendo eccezioni alla licenza. Ad esempio, la licenza GPL richiede la pubblicazione del codice sorgente, e che le versioni modificate del software siano a loro volta rilasciate con la licenza GPL. Queste due condizioni garantiscono che il software rimanga sempre libero, ma ostacolano il suo uso all'interno di un software non-libero, per cui non si vuole rendere disponibile il codice sorgente. Tuttavia, è possibile vendere delle eccezioni alla GPL, nel senso di fornire lo stesso codice con una licenza diversa, dietro il pagamento di una somma di denaro [@Stallman-Selling-exceptions-to-the-GNU-GPL].
- Mediante un contratto di sponsorizzazione. Spesso le grandi imprese usano il software libero per svolgere la loro attività. La sponsorizzazione è un modo per ripagare gli sviluppatori, e per gli sviluppatori, è un modo per dimostrare che il loro software è sufficientemente capace e affidabile per lo svolgimento di attività commerciali.^[Ad esempio, il programma *curl* e la libreria associata *libcurl* offrono funzioni per la trasmissione di dati su un enorme numero di protocolli internet, e sono utilizzati in software e dispositivi di ogni genere. V <https://curl.se/>, e per gli sponsor del progetto, v. <https://curl.se/sponsors.html>.]
- Creando un'impresa che sviluppa e rende disponibile al pubblico software libero, ma copre i costi di sviluppo mediante attività di assistenza tecnica, formazione, *consulting*&hellip;[^EsempioMySQL]

[^EsempioMySQL]: Ad esempio, MySQL è stato originariamente sviluppato da una società a responsabilità limitata (MySQL AB, successivamente la società è stata acquisita, e attualmente MySQL è sviluppato da Oracle), ma è sempre stato software libero, distribuito secondo i termini della licenza GPL. La compagnia guadagnava vendendo assistenza tecnica con il prodotto, oppure vendendo copie del codice con una licenza diversa rispetto alla GPL. \VediUrl{Oracle}{What is MySQL?}{2023}{https://dev.mysql.com/doc/refman/8.0/en/what-is-mysql.html}, sez. "MySQL software is Open Source."

In generale, il software non-libero che viene sviluppato ricercando solo lo stretto profitto è anche soggetto a dei *perverse incentives*,[^DefinizionePerverseIncentives] degli incentivi "perversi" e controproducenti. Per massimizzare il profitto è necessario:

- Ridurre i tempi e costi di sviluppo. Il software sviluppato velocemente accumula debito tecnico,[^DefinizioneDebitoTecnico] contiene più bug, e tende a privilegiare la quantità di funzioni, rispetto alla qualità dei risultati.
- Massimizzare le vendite. Dato che il codice sorgente e lo sviluppo del software rimangono nascosti, e non c'è trasparenza, è facile nascondere o minimizzare i difetti del software, in modo da farlo sembrare migliore di quanto effettivamente sia.

[^DefinizionePerverseIncentives]: Il migliore esempio di un *perverse incentive* è il *cobra effect* (effetto cobra). Si racconta che il governatore britannico in India iniziò ad offrire denaro a chiunque gli portasse i cadaveri di serpenti cobra, con l'intenzione di ridurre il loro numero. Invece di andare a caccia di cobra selvaggi, le persone iniziarono ad allevare i cobra in cattività, così da guadagnare più facilmente. Quando il governatore scoprì gli allevamenti di cobra, non offrì più denaro, e le persone rilasciarono i cobra in natura, poiché  ormai non valevano più nulla, aumentando ancora di più il loro numero.
[^DefinizioneDebitoTecnico]: Il *technical debt* (debito tecnico) consiste nel costo (in termini di produttività futura persa) che si accumula quando si va al risparmio, e si fa solo il minimo indispensabile che funziona, senza considerare quanto sarà difficile estendere e provvedere al mantenimento del codice nel futuro. Si può fare un'analogia con il comprare una macchina di seconda mano che costa poco: nel breve termine si risparmia, ma nel lungo termine lo stress mentale dovuto all'inaffidabilità del mezzo ed il costo delle riparazioni nullificheranno il risparmio iniziale. Esistono numerose cause che portano al *technical debt*, come la duplicazione del codice, non scrivere commenti, eseguire pochi test di funzionamento, non semplificare le parti che contengono codice complesso, non usare una guida allo stile per il codice&hellip; \VediUrl{J.L. Letouzey, D. Whelan \textit{et al.}}{Introduction to the Technical Debt Concept}{n.d.}{https://www.agilealliance.org/wp-content/uploads/2016/05/IntroductiontotheTechnicalDebtConcept-V-02.pdf}.

La combinazione di questi due fattori è disastrosa per lo sviluppo di software scientifico, che invece dipende interamente dalla sua aderenza alla ricerca scientifica, e al suo corretto funzionamento. Il problema diventa insanabile, perché non è nemmeno possibile prendere visione del codice, e suggerire modifiche per migliorarlo. Viceversa, la creazione del software libero è generalmente slegata dalla ricerca del profitto, è ispirata alla creazione di software utile per sé e per gli altri. Inoltre, la possibilità di condividere e contribuire al codice permette il suo continuo miglioramento.

### Segreto industriale e brevetti

Un altro problema in cui il software libero può incorrere sono l'implementazione di algoritmi protetti dal segreto industriale o dai brevetti.

Per quanto riguarda il segreto industriale, un esempio è dato dal *filesystem* NTFS, usato di default su Windows. La specifica tecnica del formato non è stata rilasciata al pubblico, ma è di grande interesse per l'informatica forense. Il *filesystem* è il formato con cui i file ed i relativi metadati (dati relativi ai file, come il nome, permessi per gli utenti, data di creazione, ultima data di modifica e accesso&hellip;) sono salvati su disco. Conoscere queste informazioni è estremamente utile, perché permette di determinare se i file sono stati manomessi, come i file cancellati vengono trattati&hellip;

La Microsoft potrebbe condividere queste informazioni in maniera confidenziale con gli sviluppatori di software per l'analisi forense non-libero, ma non avrebbe nessun incentivo a condividerle con gli sviluppatori di software libero. In entrambi i casi, si avrebbe una trasposizione della specifica tecnica nel codice sorgente per il software. Nel caso del software libero, il codice sorgente sarebbe visibile al pubblico, e quindi, la specificazione tecnica sarebbe comunque resa pubblica.

In ogni caso, la legge sul diritto d'autore ammette la possibilità di *reverse engineering*, purché il file sia l'interoperabilità. La possibilità di analizzare un certo formato a fini scientifici rientra sicuramente in questo fine.

Il secondo problema è l'implementazione di algoritmi e procedure protette da brevetti. In questo caso, vari progetti non hanno avuto problemi distribuendo solamente il codice sorgente, e non la versione compilata. In fondo, il brevetto è "effettivamente" violato solo quando il software viene eseguito. Il codice può essere visto come una spiegazione estremamente dettagliata del brevetto, ma una semplice discussione del brevetto non rappresenta la sua applicazione.

Ad esempio, la tecnica di compressione audio MP3 è stata protetta da un brevetto fino al 2017.[^ScadenzaBrevettoMP3] Il progetto *LAME* per la codifica e decodifica di file MP3 è sempre stato distribuito (e continua ad essere distribuito) esclusivamente come codice sorgente, e non come file binario.[^ProgettoLAME]

[^ScadenzaBrevettoMP3]: \VediUrl{A. Orlowski}{MP3 'died' and nobody noticed: Key patents expire on golden oldie tech}{2017}{https://www.theregister.com/2017/05/16/mp3_dies_nobody_noticed/}.
[^ProgettoLAME]: V. <https://lame.sourceforge.io/lame-faq.en.php>, sez. "Tell me the history of LAME."

### Difficoltà d'uso

Un ulteriore problema, tendenzialmente legato alla mancanza di fondi per lo sviluppo, è che il software libero tende ad essere "più difficile da utilizzare" rispetto al software non-libero, a causa di mancanza di documentazione, o mancanza di interfacce grafiche, e quindi c'è un ostacolo aggiuntivo al suo uso. Queste obiezioni possono essere superate.

In primo luogo, tutto il software tecnico è difficile da utilizzare, ed è comunque necessario imparare ad usarlo. Anzi, si potrebbe argomentare che se un software è particolarmente intuitivo, molto probabilmente sta nascondendo molte opzioni e informazioni all'utilizzatore, che sono fondamentali per acquisire e valutare correttamente i dati. Pertanto, lo sforzo necessario per imparare ad usare il software libero è paragonabile, e non sproporzionato, rispetto a quello necessario per usare il software non-libero. Ancora, la mancanza di documentazione è generalmente controbilanciata dalla possibilità di interagire con la comunità di utenti del software, e la possibilità di consultare il codice sorgente.

Anche la mancanza di interfacce grafiche non è uno svantaggio, è semplicemente un paradigma diverso, e non necessariamente inferiore. Anzi, l'uso di programmi a linea di comando permette di automatizzare le operazioni con facilità. L'analisi diventa completamente riproducibile, perché consiste semplicemente in una serie di comandi da eseguire, raccolti all'interno di un file di testo.

### Casi in cui è impossibile usare il software libero

Un caso in cui non è assolutamente possibile, ma anzi, sarebbe controproducente usare il software libero nell'ambito della prova informatica, è per lo sviluppo di captatori. Un captatore è un virus informatico usato dall'autorità giudiziaria a fini investigativi, capace di compiere un enorme numero di operazioni, che incidono in maniera significativa sui diritti fondamentali della persona [@Caneschi2019, 418--420]:

- La libertà personale (art. 13 Cost.), intesa in senso estensivo come il libero sviluppo della persona umana.
- Il domicilio (art. 14 Cost.), ormai inteso anche nel senso di "domicilio informatico".
- La riservatezza delle comunicazioni (art. 15 Cost.), che per la formulazione ampia data dalla Costituzione include anche le comunicazioni in formato digitale.

Questi diritti sono definiti come "inviolabili", e possono essere limitati solo nei casi e modi indicati dalla legge. Purtroppo, la legge non disciplina adeguatamente l'uso di questi strumenti. Il codice di procedura penale disciplina espressamente solo l'intercettazione di comunicazione fra presenti (art. 266 co. 2 e 2-*bis*), ponendo alcune limitazioni ai luoghi in cui può essere compiuta, e l'intercettazione di flussi di dati informatici fra più sistemi (art. 266-*bis*).

I captatori permettono anche un'attività che viene chiamata "perquisizione on-line", ma che non può essere ricondotta alla perquisizione (anche informatica) propriamente detta (art. 247 c.p.p.), perché mancano le garanzie informative e difensive tipiche della perquisizione, e mentre la perquisizione riguarda solo la ricerca del corpo del reato, la perquisizione on-line può riguardare l'intero contenuto del dispositivo [@Caneschi2019, 421].

Pertanto, per tutte le attività che è possibile svolgere mediante il captatore informatico, compresa la "perquisizione" on-line, che non sono riconducibili alle ipotesi già disciplinate, dovrebbero essere considerate delle prove atipiche (art. 189 c.p.p). Le prove atipiche devono essere idonee ad accertare i fatti, non devono pregiudicare la libertà morale della persona, ed il giudice deve sentire le parti sulla modalità di assunzione della prova [@Caneschi2019, 421--422].

L'art. 89 disp. att. c.p.p. prevede che i captatori devono essere "programmi conformi ai requisiti tecnici stabiliti con decreto del Ministro della giustizia".^[\VediUrl{Ministero della Giustizia}{Decreto 20 aprile 2018 - Disposizioni di attuazione per le intercettazionii [sic] mediante inserimento di captatore informatico e per l'accesso all'archivio informatico a norma dell'articolo 7, commi 1 e 3, del d.lgs. 216/2017}{2018}{https://www.giustizia.it/giustizia/it/mg_1_8_1.page?contentId=SDC289658}.] I requisiti tecnici sono specificati all'art. 4 del decreto, che ha una formulazione piuttosto generica [@Caneschi2019, 425]:

> 1\. I programmi informatici funzionali all'esecuzione delle intercettazioni mediante captatore informatico su dispositivo elettronico portatile sono elaborati in modo da assicurare integrità, sicurezza e autenticità dei dati captati su tutti i canali di trasmissione riferibili al captatore.
>
> 2\. I sistemi di sicurezza adottati a norma del comma 1 consentono che solo gli operatori autorizzati abbiano accesso agli strumenti di comando e funzionamento del captatore.
>
> 3\. I medesimi sistemi di sicurezza prevedono:
>
>   a) misure di offuscamento o evasione per impedire l'identificazione del captatore e dei dati captati, sia da parte di operatori umani, che per mezzo di specifico software;
>   b) misure idonee ad assicurare la permanenza e l'efficacia del captatore sul dispositivo durante tutto il periodo di attività autorizzata e con i limiti previsti dal provvedimento autorizzativo, in modo da garantire il completo controllo da remoto.
>
> 4\. I programmi informatici funzionali all’esecuzione delle intercettazioni mediante captatore consentono la trasmissione di tutte le informazioni necessarie a definire il contesto dell’acquisizione.
>
> 5\. I programmi informatici sono periodicamente adeguati a standard di funzionalità ed operatività in linea con l’evoluzione tecnologica.

L'uso del software libero è il miglior modo per dimostare il rispetto dei primi due, ed ultimi due commi, ed il rispetto dei requisiti della prova atipica (l'idoneità ad accertare i fatti, ed il contraddittorio sulle modalità di assunzione). È possibile verificare l'esatto funzionamento del software per dimostrare che è idoneo ad accertare i fatti, ed il contraddittorio sulle modalità di assunzione sarà più fruttuoso, perché non si avrà davanti un software opaco, di cui non si conosce il meccanismo di funzionamento. 

Tuttavia, il problema è posto dal terzo comma. Se è possibile sapere come il captatore funziona, ossia, quali vulnerabilità presenti nel sistema operativo del dispositivo sfrutta per essere installato, per non essere rilevato, per acquisire dati&hellip; queste vulnerabilità sarebbero rimosse dal produttore del sistema operativo per ragioni di sicurezza, ed il captatore diventerebbe inutile.[^BugBounties] Pertanto, il captatore deve essere necessariamente software non-libero.

[^BugBounties]: Ad esempio, la Apple offre ricompense (da qualche migliaio di dollari, fino a milioni di dollari, a seconda della gravità) a chiunque trovi delle vulnerabilità nel loro sistema operativo. \VediUrl{Apple.com}{Apple Security Bounty Categories}{2023}{https://security.apple.com/bounty/categories/}.

Il captatore si trova in una situazione paradossale. Può essere necessario usarlo per la prova di determinati reati (ad esempio, i reati elencati all'art. 266 co. 1 lett. *f* c.p.p. sono difficili da provare senza l'uso di intercettazioni), ma allo stesso tempo, il suo uso produce risultati intrinsecamente poco affidabili, perché non è possibile determinare il suo esatto meccanismo di funzionamento.

## Licenze d'uso del software nell'ordinamento italiano

Di per sé, il codice non è intrinsecamente "software libero". Le libertà che distinguono il software libero dal software non-libero non trovano il loro fondamento nel codice stesso, ma principalmente[^SoftwareLiberoLibertà] dai termini con cui il codice viene offerto al pubblico. Secondo il *WIPO Copyright Treaty*, il software è considerato un'opera letteraria (ai sensi dell'art. 2 della Convenzione di Berna), indipendentemente dal modo in cui sia espresso (art. 4) [@Blomqvist2014, 87--88].

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

La licenza *GNU GPL* (*GNU General Public License*) è caratterizzata dalla presenza di una "clausola virale", la stipulazione per cui tutte le opere derivate da un'opera distribuita con la licenza GPL devono usare la stessa licenza [@Geraci2015, 71].

L'aggettivo "copyleft" è un gioco di parole con il termine *copyright* (diritto d'autore), perché normalmente il diritto d'autore limita le libertà che il possessore di una copia dell'opera ha, mentre invece la GPL strumentalizza il diritto d'autore proprio al fine di garantire le libertà previste dal software libero.

La GPL afferma esplicitamente la possibilità di creare copie del programma, purché le copie contengano l'indicazione degli autori e della licenza, l'indicazione della limitazione di responsabilità, e una copia della licenza. Inoltre, si permette la possibilità di richiedere un pagamento per la copia, e di offrire supporto o una garanzia a pagamento [@GPLv3, sez. "4. Conveying Verbatim Copies."]:

> *You may convey verbatim copies of the Program's source code as you receive it, in any medium, provided that you conspicuously and appropriately publish on each copy an appropriate copyright notice; keep intact all notices stating that this License and any non-permissive terms added in accord with section 7 apply to the code; keep intact all notices of the absence of any warranty; and give all recipients a copy of this License along with the Program.*
>
> *You may charge any price or no price for each copy that you convey, and you may offer support or warranty protection for a fee.*

La sezione successiva regola la creazione di opere derivate. Devono essere rilasciate come codice sorgente, si deve indicare l'autore e la data delle modificazioni (lett. *a*), e l'intera opera derivata deve essere rilasciata secondo i termini di questa licenza (lett. *c*) [@GPLv3,  sez. "5. Conveying Modified Source Versions."]:

> *You may convey a work based on the Program, or the modifications to produce it from the Program, in the form of source code under the terms of section 4, provided that you also meet all of these conditions:*
>
> a) *The work must carry prominent notices stating that you modified it, and giving a relevant date.*
> b) *The work must carry prominent notices stating that it is released under this License and any conditions added under section 7. This requirement modifies the requirement in section 4 to "keep intact all notices".*
> c) *You must license the entire work, as a whole, under this License to anyone who comes into possession of a copy. \Omissis{} This License gives no permission to license the work in any other way, but it does not invalidate such permission if you have separately received it.*

Inoltre, si regola il caso in cui un'opera protetta dalla GPL sia distribuita insieme ad altre opere. Se queste opere per loro natura non sono estensioni dell'opera protetta, e non vengono "combinate" con essa in nessun modo, allora la licenza non si applica alle altre opere.

> *A compilation of a covered work with other separate and independent works, which are not by their nature extensions of the covered work, and which are not combined with it such as to form a larger program, in or on a volume of a storage or distribution medium, is called an "aggregate" if the compilation and its resulting copyright are not used to limit the access or legal rights of the compilation's users beyond what the individual works permit. Inclusion of a covered work in an aggregate does not cause this License to apply to the other parts of the aggregate.*

È possibile ridistribuire il software in forma diversa dal codice sorgente, purché si includa una copia del codice sorgente, oppure un'offerta scritta che indica come richiedere una copia del codice sorgente [@GPLv3, sez. "6. Conveying Non-Source Forms."].

La GPL privilegia la diffusione del software libero rispetto a qualsiasi altra priorità [@Geraci2015, 72]. In particolare, la discussione fra Stallman, uno dei creatori della GPL, e Haible, lo sviluppatore di un programma chiamato CLISP, chiarisce il campo di applicazione della GPL. Come visto, si deve distinguere fra due casi:

- Se un programma rappresenta un'estensione del software GPL, deve usare la licenza GPL a sua volta.
- Se il programma ed il software GPL sono indipendenti, e sono semplicemente distribuiti insieme, il programma non è tenuto ad usare la licenza GPL.

CLISP^[V. <https://www.gnu.org/software/clisp/>.] non usava la licenza GPL, ma usava una libreria sviluppata da GNU, chiamata readline,^[V. <https://www.gnu.org/software/readline/>] che invece era distribuita con la licenza GPL.

Secondo Haible, lo sviluppatore del software, il suo software e la libreria readline venivano distribuiti come due file separati ed indipendenti, e quindi non era tenuto ad usare la GPL:

> *I don't agree. My lisp.a is not a "work based on libreadline.a". What I distribute is a "mere aggregation" of lisp.a and libreadline.a - the latter with source.* [@Why-CLISP-is-under-GPL, sez. "From haible Fri Oct 30 18:54:38 1992"].

Viceversa, secondo Stallman, l'autore della GPL, era irrilevante che i programmi fossero separati su disco, perché readline era comunque un componente necessario per eseguire CLISP:

> *If you don't change to using the GPL, then you'll have to stop using readline.  Readline's terms say that the whole program has to be under the GPL, and just having the user do the link doesn't change this.  If the program is designed to run with readline as a part, then readline is a part of it.* [@Why-CLISP-is-under-GPL, sez. "From rms@gnu.ai.mit.edu Mon Oct 19 00:06:25 1992"]

Inoltre, i giudici molto probabilmente non avrebbero dato ragione ad Haible, e avrebbero considerato se effettivamente i vari componenti sono "davvero" un unico programma, indipendentemente da come siano chiamati od organizzati su disco:

> *What the lawyer said surprised me; he said that judges would consider such schemes to be "subterfuges" and would be very harsh toward them.  He said a judge would ask whether it is "really" one program, rather than how it is labeled.* [@Why-CLISP-is-under-GPL, sez. "From rms@gnu.ai.mit.edu Fri Nov  6 21:31:33 1992"]

In ogni caso, la preoccupazione di Stallman era di evitare che si trovasse un modo per aggirare la GPL:

> *However, the sum total of what you are doing is still tantamount to distributing one program which contains readline but is not under the GPL.*
>
> *This is a problem I cannot ignore.  If you can get away with this then any company can get away with it.  The result would be to negate for practical purposes the GPL's requirement that improvements be free. And that would deprive GNU software of a major source of improvements.* [@Why-CLISP-is-under-GPL, sez. "From rms@gnu.ai.mit.edu Sat Oct 31 01:29:01 1992"] 

Sulla base di queste considerazioni, la GPL può essere considerata la licenza migliore per lo sviluppo di software scientifico. Lo spirito della GPL è di garantire la libertà del codice ad ogni opportunità ed ad ogni costo. Se il codice deve sempre sempre rimanere libero, anche a seguito di modifiche, significa che gli algoritmi contenuti nel codice non solo possano essere sempre migliorati, ma il loro funzionamento rimanga sempre trasparente.

Naturalmente, questo può dissuadere alcuni soggetti dallo sviluppare software GPL. Secondo l'interpretazione espansiva di Stallman, qualsiasi software che usi anche in minima misura un componente GPL deve diventare GPL a sua volta. Questo vincola la libertà di scelta della licenza. Tuttavia, questo è un costo che vale la pena pagare per alcuni tipi di applicazioni, come il software scientifico, dove gli interessi che il software deve soddisfare si allineano con l'ideologia della licenza stessa.

Esistono altre licenze, chiamate *permissive* (permissive), che non danno le stese garanzie della GPL, e non hanno la stessa carica ideologica. Ad esempio, il tratto distintivo della licenza *BSD* (*Berkeley Software Distribution*) è che non richiede che le opere derivate siano rilasciate con la stessa licenza, né richiede la pubblicazione del codice sorgente. In altre parole, è perfettamente possibile usare del codice rilasciato con la licenza BSD per creare un prodotto non-libero, per cui non si fornisce il codice sorgente [@Geraci2015, 73].

La licenza BSD è largamente usata per le librerie, per permettere la loro più larga adozione, dato che le librerie sono per loro natura codice destinato ad essere riutilizzato in altri progetti. In un software GPL è possibile usare componenti BSD [@Stallman-License-compatibility-and-relicensing]:

> *In general, lax permissive licenses (modified BSD, X11, Expat, Apache, Python, etc.) are compatible with each other. That's because they have no requirements about other code that is added to the program. They even permit putting the entire program (perhaps with changes) into a proprietary software product;* \Omissis{}
>
> *By the same token, lax licenses are usually compatible with any copyleft license. In the combined program, the parts that came in under lax licenses still carry them, and the combined program as a whole carries the copyleft license.*

Tuttavia, è preferibile usare la licenza GPL anche per lo sviluppo di librerie ad uso di software per il software scientifico, per le ragioni indicate da Stallman. Una libreria GPL costringe il software che la usa a diventare GPL a sua volta. Pertanto, progressivamente, tutti i componenti (software e librerie condivise) adotteranno la licenza GPL, e quindi saranno costretti ad essere liberi.

<!--
## Licenze permissive (LGPL, MIT)

- Opere derivate possono rimanere proprietarie

## Licenze per la documentazione

- Per la ricerca scientifica e per la documentazione dei programmi
- Licenze per le raccolte di dati
-->
