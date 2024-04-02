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

## Libertà di eseguire il programma

Un software che non può essere eseguito sembrerebbe un ossimoro, ma è una situazione che si presenta con regolarità con il software venduto commercialmente. Le licenze sono uno strumento con cui lo sviluppatore concede la possibilità di eseguire il programma. L'accordo che regola la licenza può liberamente indicare scopi per cui il software non può essere usato. Se questo accordo viene violato, lo sviluppatore può liberamente e unilateralmente revocare o disattivare la licenza, e quindi rendere il programma inutilizzabile, non solo da un punto di vista legale, ma anche da un punto di vista tecnico.

Viceversa, il software libero evita tutti i problemi sopra indicati. Se si è in possesso di una copia del software, non ci sono ulteriori requisiti, restrizioni, né servono modifiche per poterlo eseguire.

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

----

Sulla base di queste considerazioni, la GPL può essere considerata la licenza migliore per lo sviluppo di software scientifico. Lo spirito della GPL è di garantire la libertà del codice ad ogni opportunità ed ad ogni costo. Se il codice deve sempre sempre rimanere libero, anche a seguito di modifiche, significa che gli algoritmi contenuti nel codice non solo possano essere sempre migliorati, ma il loro funzionamento rimanga sempre trasparente.

Naturalmente, questo può dissuadere alcuni soggetti dallo sviluppare software GPL. Secondo l'interpretazione espansiva di Stallman, qualsiasi software che usi anche in minima misura un componente GPL deve diventare GPL a sua volta. Questo vincola la libertà di scelta della licenza. Tuttavia, questo è un costo che vale la pena pagare per alcuni tipi di applicazioni, come il software scientifico, dove gli interessi che il software deve soddisfare si allineano con l'ideologia della licenza stessa.


Tuttavia, è preferibile usare la licenza GPL anche per lo sviluppo di librerie ad uso di software per il software scientifico, per le ragioni indicate da Stallman. Una libreria GPL costringe il software che la usa a diventare GPL a sua volta. Pertanto, progressivamente, tutti i componenti (software e librerie condivise) adotteranno la licenza GPL, e quindi saranno costretti ad essere liberi.
