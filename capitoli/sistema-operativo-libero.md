# Software libero per l'informatica forense

## Introduzione

I capitoli precedenti hanno dimostrato le potenzialità del software libero per l'informatica forense da un punto di vista puramente teorico, e come il software libero fornisce la migliore risposta alle esigenze tecniche e legali dell'informatica forense.

Fortunatamente, questi vantaggi non sono destinati a rimanere lettera morta, perché esiste software libero che può essere utilizzato per l'informatica forense.
Questo capitolo darà un resoconto non esaustivo^[Cercare di individuare tutto il software esistente per ciascuna branca della *digital forensics* andrebbe fuori dall'ambito della trattazione. In ogni caso, il software è in continua evoluzione, e le considerazioni svolte potrebbero non valere nel futuro. Pertanto, ci si limiterà a svolgere considerazioni generiche.] del software libero esistente, incluso l'uso di sistemi operativi interamente liberi.

Si potrebbe dire che l'informatica forense è una disciplina che studia e gestisce una serie di *black boxes*:^[Nel gergo dell'informatica, una *black box* (scatola nera) è uno strumento di cui si può osservare il comportamento esterno, ma non si conosce l'esatto meccanismo di funzionamento interno. Non si sta facendo riferimento alle "scatole nere" che vengono recuperate a seguito di incidenti di aeromobili o imbarcazioni (che comunque possono essere di interesse per l'informatica forense, se contengono dati digitali).] l'hardware e software oggetto di analisi, e l'hardware e software con cui viene condotta l'analisi, le reti e protocolli con cui le macchine comunicano fra di loro&hellip;

Allo stesso tempo, si è dimostrato come l'informatica forense deve soddisfare le esigenze del contraddittorio nel processo, e quindi si deve essere in grado di spiegare nella maniera più completa e dettagliata possibile come si è giunti ad una certa conclusione. Per questo motivo, si è sostenuta l'utilità del software libero per le operazioni di analisi.

## Sistema operativo libero

Il sistema operativo è il software^[Meglio, "collezione di software", dato che i sistemi operativi moderni sono complessi, e composti da numerosi programmi. Ad esempio, il progetto "Linux From Scratch" offre una guida su come creare un sistema Linux partendo da zero, e compilando tutto il software necessario usando il codice sorgente. V. @LinuxFromScratch] più "fondamentale". Come qualsiasi altro programma, deve essere installato ed eseguito,^[Spesso il sistema operativo è già installato sui computer, e al primo avvio deve soltanto essere configurato per la prima volta. In ogni caso, il sistema operativo è il primo programma che viene eseguito quando il computer viene avviato.] ma la sua funzione è di fornire tutti gli elementi necessari per il funzionamento di altri programmi.^[Ad esempio, il sistema operativo rileva e gestisce tutti i componenti hardware connessi al computer (inclusi i supporti di memoria), gestisce la memoria del computer e l'esecuzione dei vari programmi&hellip;]

Ancora, così come esiste software libero, esistono anche sistemi operativi (quasi) interamente liberi.^[In alcuni casi, è necessario includere software non-libero per far funzionare alcuni componenti hardware, come la connessione Wi-Fi, o la scheda video. Ad esempio, il programma per installare la distribuzione GNU/Linux Debian tradizionalmente non includeva questo tipo di software, perché per motivi ideologici, voleva rimanere un sistema composto interamente da software libero. L'installazione di questo software doveva essere fatta manualmente, in modo che l'utente sia pienamente consapevole che il sistema contiene componenti non-liberi. Tuttavia, seguito di una discussione nel progetto il programma per l'installazione è stato modificato, ed il programma per l'installazione di Debian 12 adesso include anche i componenti non-liberi. V. Autori di Debian Wiki, *Firmware*, 2023, <https://web.archive.org/web/20230720195706/https://wiki.debian.org/Firmware>.] Un sistema operativo libero^[Fatta salva l'eccezione dei componenti non-liberi, il cui impatto sul funzionamento del sistema è limitato (sono necessari per usare alcuni componenti hardware, ma non pregiudicano il corretto funzionamento del software).] presenta tutti i vantaggi tipici del software libero: in particolare, la possibilità di studiare il funzionamento del sistema,^[Dato che si ha accesso al codice sorgente, è possibile verificare come il sistema operativo è stato progettato, e valutare la presenza di elementi che possono influire in positivo o negativo sull'affidabilità delle analisi. Dal punto di vista processuale, pertanto il margine di discussione all'interno del contraddittorio è molto più ampio rispetto al software proprietario. Si riduce così il numero di *black boxes* all'interno del procedimento, perché almeno gli strumenti di analisi sono liberamente esaminabili.] e la possibilità di riprodurre il sistema, e quindi ripetere le analisi.^[Dato che le licenze libere concedono agli utilizzatori il diritto di riprodurre il software, è possibile creare una copia dell'intero ambiente di analisi che è stato usato per svolgere le analisi (inteso come sistema operativo e programmi installati) offrirlo alla controparte, e conservarlo nel caso in cui sia necessario ripetere le analisi in un momento successivo.]

I sistemi operativi liberi con la maggiore utilizzazione sono le distribuzioni GNU/Linux.^["GNU" è il nome del sistema operativo (il software di base necessario per il funzionamento del sistema, come un programma per eseguire comandi, editor di testo, compilatori, programmi per visualizzare i manuali&hellip;), "Linux" è il nome del *kernel* (il componente del sistema operativo che gestisce l'hardware, come supporti di memoria, schede audio, video e di rete, la RAM, tastiera, mouse, altre periferiche&hellip;). Spesso si usa solo il termine "Linux" per riferirsi in maniera generica alle distribuzioni Linux, ma è improprio. Non esiste "un" sistema operativo chiamato Linux, e "Linux" di per sé non è un sistema operativo, ma uno dei componenti necessari per un sistema operativo. Per dettagli, v. @Stallman-Linux-and-gnu] Generalmente, ogni distribuzione offre un proprio *package manager* (gestore di pacchetti).^[Ad esempio, Debian e Ubuntu usano APT, Fedora usa DNF, Arch Linux usa Pacman&hellip;] Un "pacchetto" contiene del software, e le istruzioni per installarlo, e vengono generalmente preparati dagli stessi sviluppatori della distribuzione,^[Alcune distribuzioni offrono soltanto ed esclusivamente software libero (per una lista, v. <https://www.gnu.org/distros/free-distros.en.html>); altre permettono di installare anche software proprietario, se l'utente lo desidera.] ma è possibile per sviluppatori terzi creare i propri pacchetti.^[Ad esempio, il software proprietario viene spesso reso disponibile per Linux come un pacchetto in formato DEB e/o RPM, che possono essere installati rispettivamente su Ubuntu e Fedora con APT e DNF.]

Distribuzioni diverse usano strategie diverse, ciascuna con i propri vantaggi e svantaggi:

- Le distribuzioni *fixed-point* sono stabili e ben testate,^[Dato che i rilasci sono infrequenti, è possibile garantire che il software contenga meno bug possibili, e fra i rilasci, si può contare sul fatto che installare il software è un'azione riproducibile, perché non ci sono cambiamenti.] ma contengono software datato.^[Distribuzioni che aggiornano i pacchetti in maniera "sincrona": aggiornare la distribuzione permette anche di aggiornare i pacchetti, ma fino al rilascio della nuova versione della distribuzione (che potrebbe avvenire dopo mesi o anni), i pacchetti ricevono solo aggiornamenti relativi per la sicurezza e bug particolarmente gravi.]
- Le distribuzioni *rolling*^[Distribuzioni che aggiornano i pacchetti in maniera "asincrona": ogni pacchetto può essere aggiornato appena viene rilasciata una nuova versione.] offrono il software più recente, al costo di una minore stabilità e riproducibilità.^[Data la frequenza degli aggiornamenti, non è possibile verificare il corretto funzionamento di ogni pacchetto, e installare o aggiornare il sistema in momenti diversi produce risultati diversi, perché non è possibile prevedere in anticipo quali pacchetti saranno installati.]
- Nix è un *package manager* che usa un paradigma particolare [La descrizione di Nix è oggetto di una tesi di dottorato, v. @Dolstra2006], che garantisce la piena riproducibilità dell'installazione del sistema.^[Si può sempre installare la versione più recente del software, ma se causa problemi, è sempre possibile effettuare un *rollback* (tornare indietro) ad una versione precedente del sistema che funziona correttamente. Inoltre, è sempre possibile installare qualsiasi versione dello stesso software, o anche più versioni in parallelo, senza conflitti fra le varie installazioni.] NixOS è una distribuzione Linux che usa Nix come il suo *package manager* [@Dolstra2008, 1].

Nel tempo, data la flessibilità offerta dalle distribuzioni GNU/Linux, sono state create delle distribuzioni specializzate per l'informatica forense, che raccolgono software libero: CAINE,^[V. <https://www.caine-live.net/>.] DEFT,^[Non più in sviluppo. Per un archivio della pagina principale del progetto, v. <https://web.archive.org/web/20190101021304/http://www.deftlinux.net/>.] SIFT Workstation,^[V. <https://www.sans.org/tools/sift-workstation/>.] Kali Linux,^[V. <https://www.kali.org/>.] BackBox Linux&hellip;^[V. <https://linux.backbox.org/>]

Le distribuzioni specializzate hanno varie caratteristiche in comune:

- Possono essere avviate in modalità *live*,^[Ossia, il sistema operativo viene copiato nella RAM, senza essere installato sul computer in maniera fissa. Questo permette di usare la distribuzione direttamente sul sistema oggetto di acquisizione (ad esempio, se non è possibile rimuovere i supporti contenuti al suo interno), e garantisce la massima riproducibilità dell'ambiente di analisi, e ripetibilità dell'analisi (perché qualsiasi modifica fatta al sistema viene persa dopo che il computer viene riavviato).] oltre che essere installate su un computer [@Zanero2010, 75].
- Prendono ogni precauzione per evitare operazioni in scrittura sui dispositivi che vengono collegati [@Zanero2010, 73].
- Includono del software pre-installato, in modo da garantire la piena riproducibilità dell'ambiente di analisi, e quindi la ripetibilità delle analisi [@Zanero2010, 76--78].
- Offrono delle interfacce grafiche e strumenti software *ad-hoc* per velocizzare le operazioni tipiche e la generazione del report finale [@Zanero2010, 74--76, 78--79].

## Zanero

@Zanero2010, 45 ss. -- architettura per processare grandi quantità di dati

@Zanero2010, 101 ss. -- architetture per raccogliere malware

- migliore qualità dd
- paper su perché usare linux

## Software libero per l'acquisizione di dati

Il pre-requisito per analizzare i dati è la loro corretta acquisizione. L'acquisizione è generalmente un atto irripetibile^[Esiste il rischio che il supporto materiale subisca modifiche durante l'acquisizione, ed il rischio di irripetibilità sopravvenuta, perché i dati si danneggiano o vengono cancellati.] e pertanto è assolutamente necessario garantire la massima trasparenza e affidabilità dell'operazione usando software libero.^[L'accesso al codice sorgente e la possibilità di distribuire liberamente copie garantiscono la trasparenza, e permettono di valutare in maniera consapevole se il software sia affidabile o meno. Viceversa, nel caso di software proprietario ci si deve affidare ciecamente al prodotto che viene fornito, dato che non è possibile sapere in maniera altrettanto trasparente come è stato sviluppato.]

Se i dati risiedono su un supporto materiale che può essere collegato ad un computer^[Ad esempio, un *hard disk* interno o esterno, memorie flash USB o SD, supporti ottici&hellip;] è possibile usare *dd* o *ddrescue*.

*ddrescue* è un comando specializzato per copiare dati da supporti che possono presentare errori di lettura. Usa un algoritmo creato *ad hoc* per cercare di copiare quanti più dati possibile, causando meno danni possibile al supporto [V. sez. 4, "Algorithm" in @GNUddrescue]. 
Inoltre, produce anche un file di log chiamato *mapfile*, che permette di interrompere e riprendere l'operazione di acquisizione, e contiene informazioni diagnostiche dettagliate sullo stato di ogni settore letto dal disco [V. sez. 8, "Mapfile structure", in @GNUddrescue].

Se non è possibile usare *ddrescue*, si può usare *GNU dd* [V. sez. 11.2, "dd: Convert and copy a file" in @GNUCoreutilsManual]. Il vantaggio principale di *dd* è la sua ubiquità sui sistemi GNU/Linux, dato che è un comando standard.^[Fa parte delle *GNU coreutils*, e la sua presenza è richiesta dallo standard *Linux Standard Base*.] Lo svantaggio principale è la sua semplicità: *dd* è un comando generico, e non offre meccanismi sofisticati di gestione degli errori,^[Di default, *dd* si arresta dopo il primo errore di lettura. È possibile usare le opzioni *conv=noerror,sync* affinché *dd* continui a seguito di errori, e riempia le parti che non è stato possibile leggere con zeri.] o informazioni diagnostiche dettagliate.^[*dd* non produce un *mapfile*, e quindi offre molte meno informazioni rispetto a *ddrescue*.]

Se i dati sono su *embedded devices*^[Intesi come dispositivi per cui non è possibile estrarre il supporto di memoria che contiene i dati. Ad es., smartphones, apparecchiature mediche, autoveicoli&hellip;] è necessario controllare le opzioni disponibili, caso per caso. In generale, si possono seguire due strade:

- Se il dispositivo usa un sistema operativo basato su GNU/Linux, ed è possibile connettersi da remoto a quel dispositivo, ed è possibile eseguire comandi ed estrarre dati, allora potrebbe essere possibile svolgere l'acquisizione usando lo stesso dispositivo.^[Ad esempio, se si può accedere al dispositivo mediante *ssh*, si può usare *md5sum* e *sha1sum* per calcolare l'hash dei file, usare *tar* per creare un archivio con i file da estrarre, *scp* per copiarlo all'esterno. Naturalmente, nella pratica è necessario verificare la presenza di comandi utili per l'operazione di acquisizione.]
- Se il produttore del dispositivo offre uno strumento *ad hoc* per l'estrazione di dati o creazione di backup, è possibile eseguirlo all'interno di una macchina virtuale creata con software libero.^[Ad esempio, con *VirtualBox* o *QEMU*. È preferibile usare una macchina virtuale in modo da tenere traccia dell'ambiente che è stato usato per l'acquisizione dei dati. Il programma per l'estrazione potrebbe essere anche proprietario, ma non è un problema, perché si può presupporre che uno strumento per la creazione di backup creato dal produttore stesso del dispositivo abbia tutto l'interesse a copiare i dati nella maniera più completa ed affidabile possibile. Esistono anche strumenti per la *mobile forensics* di terze parti in grado di acquisire i dati, ma si pone il problema della loro affidabilità. Se lo strumento è in grado di leggere tutti i dati presenti sul dispositivo, ma deve forzare le misure di sicurezza esistenti per farlo, e non può spiegare in dettaglio come le ha forzate (per ragioni di segreto industriale, perché altrimenti il produttore del dispositivo rilascerebbe un aggiornamento di sicurezza, ecc&hellip;), è difficile potersi fidare a pieno della genuinità del risultato.]

Purtroppo, entrambe le modalità presentano tre svantaggi, difficilmente superabili: la dipendenza da strumenti proprietari,^[In particolare, non si ha accesso al codice sorgente del sistema operativo del dispositivo oggetto di acquisizione, o dello strumento con cui si crea il backup del dispositivo.] la quantità di dati che è possibile estrarre,^[È molto probabile che esistano meccanismi di sicurezza che impediscono l'accesso a tutti i file.] e la loro irripetibilità intrinseca.^[Le operazioni di acquisizione vengono svolte mentre il dispositivo è acceso, e l'esecuzione dei comandi o del backup modifica lo stato del dispositivo.] 

Per la *network forensics*, Wireshark^[V. <https://www.wireshark.org>.] è un software maturo, in sviluppo da più di 20 anni, e permette di acquisire ed analizzare il traffico di rete.

In particolare, può essere usato per catturare le pagine ed i dati a cui si può accedere usando un browser (Firefox o Chrome). Con alcuni accorgimenti aggiuntivi, è possibile usare Wireshark per compiere un'acquisizione forense di pagine web, inclusi i contenuti sul *cloud*.^[Per impostare Wireshark in modo che possa catturare il traffico generato dal *browser*, v. sez. "Using the (Pre)-Master-Secret" in <https://web.archive.org/web/20230724183942/https://wiki.wireshark.org/TLS>. Successivamente, è utile visitare il sito internet di una testata giornalistica prima e dopo dell'acquisizione, in modo da dimostrare il momento in cui i dati sono stati catturati. Infine, è utile eseguire le operazioni all'interno di una macchina virtuale, e registrare lo schermo, in maniera da lasciare traccia delle operazioni svolte.]

Un'altra strada per copiare dati salvati sul cloud è usare *Rclone*^[V. <https://rclone.org/>.] che permette di copiare dati da un grande numero di servizi di *cloud storage*.^[Ad esempio, Dropbox, Google Drive, OneDrive&hellip; v. <https://rclone.org/overview/>.]

La *memory forensics*^[Analisi forense di memorie volatili, ossia, la RAM.] tradizionalmente veniva quasi completamente ignorata^[Le istruzioni per il sequestro di dati informatici prevedevano lo spegnimento del computer, senza previa acquisizione della memoria. V. @Ayers2015, 7.] perché presentava (e continua a presentare) varie difficoltà:

- Le memorie volatili si disperdono rapidamente appena il dispositivo viene spento [@Ayers2015, 1], ma se il dispositivo è acceso, l'acquisizione della memoria va a modificare lo stato della memoria stessa [@Gammarota2016, 149].
- L'acquisizione presenta numerose problematiche tecniche [@Case2017].
- Il formato dei dati contenuto nelle memorie volatili non è documentato in maniera ufficiale, ed in ogni caso, cambia con frequenza.^[La documentazione è assente nel caso dei sistemi operativi proprietari, come Windows e macOS. Nei sistemi operativi che usano il kernel Linux, si può consultare il codice sorgente relativo alla gestione della memoria. Dato che la memoria è volatile, non è necessario "standardizzare" il suo formato, e assicurarsi che possa essere letto anche a distanza di tempo. V. @Sylve2017.]

In ogni caso, è comunque utile almeno provare ad acquisire i dati: nel caso peggiore saranno inutilizzabili o irrilevanti, ma nel caso migliore si potrebbero trovare informazioni o tracce utili per l'investigazione.^[Come ad esempio, la chiave crittografica per decrittare informazioni protette. V. @Hargreaves2008.]

Per acquisire la RAM si può usare WinPmem^[V. <https://github.com/Velocidex/WinPmem>.] su Windows, e LinPmem^[V. <https://github.com/Velocidex/Linpmem>.] su Linux.

## Software libero per conservare i dati

Dopo che i dati sono stati acquisiti, è necessario garantire la loro corretta conservazione.

Programmi come *BorgBackup* (licenza BSD)^[V. <https://www.borgbackup.org/>.] e *Restic* (licenza BSD)^[V. <https://restic.net/>.] permettono di creare copie di backup dei dati, di proteggere i backup con la crittografia,^[In modo da garantire la confidenzialità dei dati, anche nel caso di un *data breach*.] e di verificare la loro integrità.^[In modo che sia possibile verificare che i dati non siano variati per *bit rot* o modifiche intenzionali da parte di terzi, anche a distanza di tempo.]

I dati possono essere salvati su *filesystem* liberi e specializzati per l'archiviazione dei file, come *OpenZFS* (licenza CDDL), che controlla automaticamente l'integrità dei dati.^[Per una dimostrazione pratica di come ZFS rileva e corregge i dati danneggiati, v. <https://web.archive.org/web/20220516050411/https://ubuntu.com/tutorials/testing-the-self-healing-of-zfs-on-ubuntu>.]

La catena di custodia può essere redatta con *Git*. Ogni operazione viene registrata in un *commit*, che viene firmato digitalmente.

## Software libero per analizzare i dati

@Zanero2010, 117 ss. -- script per estrarre file

- Autopsy
- Data carving (anche per la memoria)
- Volatility

ricerca per parole chiave o per *file signatures*.^[Ad esempio, cercando nomi di persone o sequenze di caratteri che hanno il formato di indirizzi di posta elettronica, oppure cercando le sequenze che indicano l'inizio o fine di determinati tipi di file. Il vantaggio è che estremamente facile fare questo tipo di ricerche, lo svantaggio è che, salvo l'esistenza e l'uso di strumenti di analisi più sofisticati, è difficile essere certi del programma o contesto in cui si trovavano queste informazioni.]

- Timeline

## Software libero per presentare i risultati

- Redazione delle relazioni
- macchine virtuali ed esperimento giudiziale

@Zanero2010, 25 ss. -- macchine virtuali
